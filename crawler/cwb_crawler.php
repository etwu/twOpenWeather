<?php
//cwbopendata crawler
//Mongo function
include_once('mongodb_lib.php');
$mg_access = new Mongo_db;

//DB function
include_once('db_functions.php');
$db_access = new db_functions;
//引入PHP Simple HTML DOM Parser
include_once('simple_html_dom.php');
//設定時區
date_default_timezone_set('Asia/Taipei');

//天氣html資料
//http://www.cwb.gov.tw/V7/observe/real/ALL.htm
$data_all = file_get_html('http://www.cwb.gov.tw/V7/observe/real/ALL.htm');


foreach($data_all->find('table tr') as $data_one) {    
    $location = $data_one->find('a',0);
    $location_name = $location->plaintext;
    $url = $location->href;
    //$location = $data_one->plaintext;
    $capture_time = $data_one->find('th',1)->plaintext; //時間
    $temp_c = $data_one->find('td',0)->plaintext; //溫度C
    $temp_f = $data_one->find('td',1)->plaintext; //溫度F
    $condition = $data_one->find('td',2)->plaintext; //天氣狀態
    $wind_direct = $data_one->find('td',3)->plaintext; //風向
    $wind_speed = $data_one->find('td',4)->plaintext; //風速
    $wind_gust = $data_one->find('td',5)->plaintext; //陣風
    $visiblety = $data_one->find('td',6)->plaintext; //能見度KM
    $humanity = $data_one->find('td',7)->plaintext; //相對濕度
    $pressure = $data_one->find('td',8)->plaintext; //氣壓
    $rain_data = $data_one->find('td',9)->plaintext; //當日累積雨量
    if ($location_name != '')
    {
        //先處理URL
        //取出table_name
        //http://www.cwb.gov.tw/V7/observe/real/C0R15.htm
        $table_name = str_replace('http://www.cwb.gov.tw/V7/observe/real/','',$url);
        $table_name = str_replace('.htm','',$table_name);
        $location_id = $table_name;
        
        //觀測日期時間
        $capture_time_mixed = explode(' ',$capture_time);
        $capture_time_date = date('Y').'-'.str_replace('/','-',$capture_time_mixed[0]);
        $capture_time_time = $capture_time_mixed[1];
        //丟入資料
        $db_access->log_weather_data($location_id,$location_name,$capture_time_date,$capture_time_time,
        $temp_c,$temp_f,$condition,$wind_direct,$wind_speed,$wind_gust,$visiblety,
        $humanity,$pressure,$rain_data);
		
		echo 'ID:'.$location_id;
                echo '地點：'.$location_name.'
        '.'網址：'.$url.'
        時間：'.$capture_time.'
        溫度：'.$temp_c.'
        溫度：'.$temp_f.'
        =========================
        ';
		
		//Mongo部分
			//時間
			$data_date = $capture_time_date;
			$data_time = $capture_time_time;
			$new_time = strtotime($data_date." ".$data_time);
			$new_dt_string = $new_time + 86400;
			//先檢查是否有重複內容
			$res = $mg_access->where('location_id','cwb_'.$location_id)->where('capture_timestamp',$new_dt_string)->get('weather_data');
			
			$count = count($res);
			
			if ($count == 0)
			{
				//沒重複，輸入資料
				$data_mg1 = array();
				$data_mg1['location_id'] = 'cwb_'.$location_id;
				
				//$new_dt_string = new MongoDate(strtotime($data_date." ".$data_time));
				$data_mg1['capture_date'] = $data_date;
				$data_mg1['capture_time'] = $data_time;
				
				$data_mg1['capture_timestamp'] = $new_dt_string;
				
				settype($temp_c,"float");
				$data_mg1['temp_c'] = $temp_c;
				
				settype($temp_f,"float");
				$data_mg1['temp_f'] = $temp_f;
				$data_mg1['condition'] = $condition;
				$data_mg1['wind_direction'] = $wind_direct;
				$data_mg1['wind_speed'] = $wind_speed;
				$data_mg1['wind_gust'] = $wind_gust;
				
				settype($humanity,"float");
				$data_mg1['humidity'] = $humanity;
				
				settype($pressure,"float");
				$data_mg1['pressure'] = $pressure;
				
				settype($rain_data,"float");
				$data_mg1['today_rain_amount'] = $rain_data;
				if ($new_dt_string != FALSE)
				{
					$mg_access->insert('weather_data',$data_mg1);
					echo 'Insert into mongo!';
				}
				else{
					echo 'DateTime is False!';
				}
			}
			else{
				echo 'Depilicate found!';
			}
		
		//Mongo部分
		echo '<br />';
    }
    
}
//var_dump($table);

?>
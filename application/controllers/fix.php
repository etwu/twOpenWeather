<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fix extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
	   
	}
	
	public function import_data()
	{
		date_default_timezone_set('Asia/Taipei');
		$this->load->library('mongo_db');
		$this->load->database();
		$this->mongo_db->drop_collection('weather','weather_data');
		//新資料陣列
		$tables = $this->db->list_tables();
		foreach ($tables as $table_name)
		{
			//MYSQL Table
			$db_name = $table_name;
			if ($db_name != 'locations')
			{
				$this->db->order_by('time','ASC');
				$query_location = $this->db->get($db_name);
				foreach ($query_location->result() as $location_data)
				{
					$data_one = array();
					$data_one['location_id'] = $db_name;
					$data_date = $location_data->date;
					$data_time = $location_data->time;
					//$new_dt_string = new MongoDate(strtotime($data_date." ".$data_time));
					$data_one['capture_date'] = $data_date;
					$data_one['capture_time'] = $data_time;
					$new_dt_string = strtotime($data_date." ".$data_time) + 86400;
					$data_one['capture_timestamp'] = $new_dt_string;
					
					settype($location_data->temp_c,"float");
					$data_one['temp_c'] = $location_data->temp_c;
					
					settype($location_data->temp_f,"float");
					$data_one['temp_f'] = $location_data->temp_f;
					$data_one['condition'] = $location_data->condition;
					$data_one['wind_direction'] = $location_data->wind_direction;
					$data_one['wind_speed'] = $location_data->wind_speed;
					$data_one['wind_gust'] = $location_data->wind_gust;
					
					settype($location_data->humity,"float");
					$data_one['humidity'] = $location_data->humity;
					
					settype($location_data->pressure,"float");
					$data_one['pressure'] = $location_data->pressure;
					
					settype($location_data->rain_data,"float");
					$data_one['today_rain_amount'] = $location_data->rain_data;
					if ($new_dt_string != FALSE)
					{
						$this->mongo_db->insert('weather_data',$data_one);
					}
				}
			}
			
		}
		
	}
	//內部API
	
	//未能使用
	public function _add_timestamp()
	{
		$this->load->database();
		//列出所有資料表
		$tables = $this->db->list_tables();
		foreach ($tables as $table_name)
		{
		   if ($table_name != 'locations')
		   {
		   	
			$this->db->where('timestamp','0000-00-00 00:00:00');
		   	$query_location = $this->db->get($table_name);	
			//拉出每一空白行的id,日期,時間
			foreach ($query_location->result() as $location_data)
			{
			$cap_date = $location_data->date;
			$cap_time = $location_data->time;
			$id = $location_data->id;
			//寫入新的日期,時間
			$newdata = array('timestamp'=> $cap_date.' '.$cap_time);
			$this->db->where('id', $id);
			$this->db->update($table_name, $newdata); 
			}
			
		   }
		   echo 'table:'.$table_name.'OK!.<br />';
		}
	}
	
	public function get_lastest_weather($table_name)
	{
		$this->load->database();
		$this->db->order_by('date','DESC');
		$this->db->order_by('time','DESC');
    	$this->db->limit(1);
		$query_location = $this->db->get($table_name);
		
		//建立空白資料陣列
		$weather_now = array();
		foreach ($query_location->result() as $location_data)
		{
			$weather_now['cap_date'] = $location_data->date;
			$weather_now['cap_time'] = $location_data->time;
			$weather_now['temp_c'] = $location_data->temp_c;
			$weather_now['condition'] = $location_data->condition;
			$weather_now['wind_direction'] = $location_data->wind_direction;
			$weather_now['wind_speed'] = $location_data->wind_speed;
			$weather_now['wind_gust'] = $location_data->wind_gust;
			$weather_now['humidity'] = $location_data->humity;
			$weather_now['pressure'] = $location_data->pressure;
			$weather_now['rain_data'] = $location_data->rain_data;
		}
		
		return $weather_now;
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
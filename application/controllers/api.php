<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Api extends CI_Controller {

	//API-最新全台氣象
	public function index()
	{
	   $this->load->database();
		$top_data_group = '';
		//取出目前所有地點資料
		$this->db->order_by('location_lat','DESC');
		$query = $this->db->get('locations');
		foreach ($query->result() as $row)
		{
			$location_name = $row->location_name;
			$table_name = $row->table_name;
            $location_attr = $row->location_attr;
			$location_lat = $row->location_lat;
			$location_lon = $row->location_lon;
			$city_1 = $row->city_1;
			$city_2 = $row->city_2;
			
			//再取出各table最新數據
            $weather_now_data = $this->_get_location_now_weather($table_name);
			$location_data = array('city_name' => $city_1,'city_county'=>$city_2, 'station_name'=> $location_name,'station_id'=>$table_name,'station_lat'=>$location_lat,'station_lon'=>$location_lon,'weather_data'=> $weather_now_data);
			$top_data_group[$table_name] = array($location_data);
		}
		echo json_encode($top_data_group);
	}
	
	//API-單站目前資料
	public function station_now($station_id)
	{
		
		$this->load->database();
		//天氣站資料
		$this->db->where('table_name',$station_id);
		$query = $this->db->get('locations');
		foreach ($query->result() as $row)
		{
			$location_name = $row->location_name;
			$table_name = $row->table_name;
            $location_attr = $row->location_attr;
			$location_lat = $row->location_lat;
			$location_lon = $row->location_lon;
			$city_1 = $row->city_1;
			$city_2 = $row->city_2;
		}
            $weather_now_data = $this->_get_location_now_weather($station_id);
			
			$output_data = array('city_name' => $city_1,'city_county'=>$city_2, 'station_name'=> $location_name,'station_id'=>$table_name,'station_lat'=>$location_lat,'station_lon'=>$location_lon,'weather_data'=> $weather_now_data);
			echo json_encode($output_data);
			
	}
	
	//API-單站指定日期資料
	public function station_history_allday($station_id,$date)
	{

		if ($date == '')
		{
			$date = date('Y-m-d');
		}
		$this->load->database();
		//站點基本資料
		$this->db->where('table_name',$station_id);
		$query = $this->db->get('locations');
		foreach ($query->result() as $row)
		{
			$location_name = $row->location_name;
			$table_name = $row->table_name;
            $location_attr = $row->location_attr;
			$location_lat = $row->location_lat;
			$location_lon = $row->location_lon;
			$city_1 = $row->city_1;
			$city_2 = $row->city_2;
		}
		//站點天氣資料
        $weather_day_data = $this->_get_location_fullday($station_id,$date);
		
		//JSON data array
		$output_data = array('city_name' => $city_1,'city_county'=>$city_2, 'station_name'=> $location_name,'station_id'=>$table_name,'station_lat'=>$location_lat,'station_lon'=>$location_lon,'weather_data_date' => $date,'weather_data'=> $weather_day_data);
			echo json_encode($output_data);
	}
	
	//獲得氣象站最新資料
	public function _get_location_now_weather($location_id)
	{
		$this->load->database();
		$this->db->order_by('date','DESC');
		$this->db->order_by('time','DESC');
		$this->db->limit(1);
		$query_location = $this->db->get($location_id);
	        
		//新資料陣列
		$now_data = array();
		foreach ($query_location->result() as $location_data)
		{
			$now_data['capture_date'] = $location_data->date;
			$now_data['capture_time'] = $location_data->time;
			$now_data['temp_c'] = $location_data->temp_c;
			$now_data['temp_f'] = $location_data->temp_f;
			$now_data['condition'] = $location_data->condition;
			$now_data['wind_direction'] = $location_data->wind_direction;
			$now_data['wind_speed'] = str_replace(' ','',$location_data->wind_speed);
			$now_data['wind_gust'] = str_replace(' ','',$location_data->wind_gust);
			$now_data['humidity'] = $location_data->humity;
			$now_data['pressure'] = $location_data->pressure;
			$now_data['today_rain'] = $location_data->rain_data;
		}
		return $now_data;
	}
	
	//獲得氣象站當天所有資料
	
	public function _get_location_fullday($location_id,$date)
	{
		$this->load->database();
		$this->db->where('date',$date);
		$this->db->order_by('time','ASC');
		$query_location = $this->db->get($location_id);
	      
		//新資料陣列
		$fullday_data = array();
		foreach ($query_location->result() as $location_data)
		{
			$data_one = array();
			$data_one['capture_date'] = $location_data->date;
			$data_one['capture_time'] = $location_data->time;
			$name_time = $location_data->time;
			$data_one['temp_c'] = $location_data->temp_c;
			$data_one['temp_f'] = $location_data->temp_f;
			$data_one['condition'] = $location_data->condition;
			$data_one['wind_direction'] = $location_data->wind_direction;
			$data_one['wind_speed'] = str_replace(' ','',$location_data->wind_speed);
			$data_one['wind_gust'] = str_replace(' ','',$location_data->wind_gust);
			$data_one['humidity'] = $location_data->humity;
			$data_one['pressure'] = $location_data->pressure;
			$data_one['today_rain'] = $location_data->rain_data;
			$fullday_data[$name_time] = $data_one;
		}
		return $fullday_data;
	}
	
	//介面需要
	public function readme()
	{
		$view_data['taiwan_n_menu'] = $this->list_location_by_zone('N');
        $view_data['taiwan_c_menu'] = $this->list_location_by_zone('C');
        $view_data['taiwan_s_menu'] = $this->list_location_by_zone('S');
        $view_data['taiwan_e_menu'] = $this->list_location_by_zone('E');
        $view_data['taiwan_i_menu'] = $this->list_location_by_zone('I');
		$this->load->view('api_readme',$view_data);
	}
	
	public function list_location_by_zone($location_zone)
    {
        $this->load->database();
        $this->db->where('location_zone',$location_zone);
        $this->db->order_by('location_lat','DESC');
		$query = $this->db->get('locations');
		return $query->result();
    }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
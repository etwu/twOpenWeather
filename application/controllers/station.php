<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Station extends CI_Controller {

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
    
    public function id($location_id)
    {
        $this->load->database();
		//選單部分
        $view_data['taiwan_n_menu'] = $this->list_location_by_zone('N');
        $view_data['taiwan_c_menu'] = $this->list_location_by_zone('C');
        $view_data['taiwan_s_menu'] = $this->list_location_by_zone('S');
        $view_data['taiwan_e_menu'] = $this->list_location_by_zone('E');
        $view_data['taiwan_i_menu'] = $this->list_location_by_zone('I');
		
		//搜尋傳入ID資料
		$this->db->where('table_name',$location_id);
		$query = $this->db->get('locations');
		foreach($query->result() as $data_one)
		{
			$location_name = $data_one->location_name;
			$location_id = $data_one->table_name;
			$city_1 = $data_one->city_1;
			$city_2 = $data_one->city_2;
			$location_attr = $data_one->location_attr;
			$location_lon = $data_one->location_lon;
			$location_lat = $data_one->location_lat;
			$location_att = $data_one->location_att;
		}
		
		//view data
		$view_data['data_location_name'] = $location_name;
		$view_data['data_location_id'] = $location_id;
		$view_data['city_1'] = $city_1;
		$view_data['city_2'] = $city_2;
		$view_data['city_name'] = $city_1.$city_2;
		$view_data['location_ll'] = $location_lat.",".$location_lon;
		$view_data['location_att'] = $location_att;
		$view_data['location_attr'] = $this->convert_attr_to_string($location_attr);
		$view_data['weather_now'] = $this->get_lastest_weather($location_id);
		$view_data['gchart_temp_result'] = $this->_get_gchart24h_data($location_id,'temp_c','溫度C');
		$view_data['gchart_humi_result'] = $this->_get_gchart24h_data($location_id,'humity','濕度%');
		$this->load->view('station',$view_data);
    }
	
	public function _get_gchart24h_data($location_id,$type='temp_c',$data_name='溫度')
	{
		$this->load->database();
		$time_24h_ago = $this->get_24hr_ago_time();
		$this->db->where('timestamp >',$time_24h_ago);
		$this->db->where('temp_c !=','0');
		$this->db->order_by('timestamp','DESC');
		$this->db->select('*');
		$query_location = $this->db->get($location_id);
		$sub_array = array();
		foreach ($query_location->result() as $location_data)
		{
			//$cap_date = $location_data->date;
			$cap_time = $location_data->time;
			$cap_time = substr($cap_time,0,5);
			$data_1 = $location_data->$type;
			$data_1_new = (float)$data_1;
			
			$sub_array[] = array($cap_time,$data_1_new);
			/*
			$weather_now['condition'] = $location_data->condition;
			$weather_now['wind_direction'] = $location_data->wind_direction;
			$weather_now['wind_speed'] = $location_data->wind_speed;
			$weather_now['wind_gust'] = $location_data->wind_gust;
			$weather_now['humidity'] = $location_data->humity;
			$weather_now['pressure'] = $location_data->pressure;
			$weather_now['rain_data'] = $location_data->rain_data;
			*/
		}
		$sub_array[] = array("時間",$data_name);
		$sub_array = array_reverse($sub_array);
		return json_encode($sub_array);
	}
	
	public function get_24hr_ago_time()
	{
		date_default_timezone_set('Asia/Taipei');
		$time_now = time();
		$time_24hr_ago = $time_now -86400;
		return date('Y-m-d H:i:s', $time_24hr_ago);
	}
    
    public function list_location_by_zone($location_zone)
    {
        $this->load->database();
        $this->db->where('location_zone',$location_zone);
        $this->db->order_by('location_lat','DESC');
		$query = $this->db->get('locations');
		return $query->result();
    }
	
	public function convert_attr_to_string($location_attr)
	{
		switch($location_attr)
		{
			case('A'):
			return '民航局測站';
			break;
			
			case('C'):
			return '局屬氣象站';
			break;
			
			case('U'):
			return '無人氣象站';
			break;
		}
	}
	
	public function get_lastest_weather($table_name)
	{
		$this->load->database();
		$this->db->where('temp_c !=','0');
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
			$weather_now['timestamp'] = $location_data->timestamp;
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
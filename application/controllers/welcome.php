<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

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
	public function nosql()
	{
		$this->load->database();
		$this->load->library('mongo_db');
		$table_data = '';
		//取出目前所有地點資料
		$this->db->order_by('location_lat','DESC');
		$query = $this->db->get('locations');
		foreach ($query->result() as $row)
		{
			$location_name = $row->location_name;
			$table_name = $row->table_name;
            $location_attr = $row->location_attr;
			//再取出各table最新數據
			/*
            $this->db->order_by('date','DESC');
			$this->db->order_by('time','DESC');
    		$this->db->limit(1);
    		$query_location = $this->db->get($table_name);
			*/
			$order_1 = array('capture_timestamp'=>'DESC');
			$where_1 = array('location_id'=>"$table_name");
			$new_data_set = $this->mongo_db->where($where_1)->order_by($order_1)->limit(1)->get('weather_data');
			//觀測站類型
            $attr_mark = '';
            if ($location_attr == 'U')
            {
                $attr_mark = '*';
            }else
            {
                $attr_mark = '';
            }
			
    		foreach ($new_data_set as $location_data)
    		{
    			$cap_date = $location_data['capture_date'];
    			$cap_time = $location_data['capture_time'];
    			$temp_C = $location_data['temp_c'];
    			$condition = $location_data['condition'];
    			$wind_direction = $location_data['wind_direction'];
    			$wind_speed = $location_data['wind_speed'];
    			$wind_gust = $location_data['wind_gust'];
    			$humidity = $location_data['humidity'];
    			$pressure = $location_data['pressure'];
    			$rain_data = $location_data['today_rain_amount'];
    			
    			$table_data_new = '<tr>
    		  <td title="地點"><a href="station/id/'.$table_name.'">'.$location_name.'</a>'.$attr_mark.'</td>
    		  <td title="天氣">'.$condition.'</td>
    		  <td title="溫度">'.$temp_C.'</td>
    		  <td title="風向">'.$wind_direction.'</td>
    		  <td title="風力">'.$wind_speed.'</td>
    		  <td title="陣風">'.$wind_gust.'</td>
    		  <td title="相對溼度">'.$humidity.'</td>
    		  <td title="氣壓">'.$pressure.'</td>
    		  <td title="當日累積雨量">'.$rain_data.'</td>
    		  <td title="更新時間">'.$cap_date.' '.$cap_time.'</td>
    		</tr>';
    		}
			$table_data = $table_data.$table_data_new;
		}
        $view_data['taiwan_n_menu'] = $this->list_location_by_zone('N');
        $view_data['taiwan_c_menu'] = $this->list_location_by_zone('C');
        $view_data['taiwan_s_menu'] = $this->list_location_by_zone('S');
        $view_data['taiwan_e_menu'] = $this->list_location_by_zone('E');
        $view_data['taiwan_i_menu'] = $this->list_location_by_zone('I');
		$view_data['weather_table'] = $table_data;
		$this->load->view('homepage',$view_data);
	}
	
	public function index()
	{
		$this->load->database();
		$this->load->library('mongo_db');
		$table_data = '';
		//取出目前所有地點資料
		$this->db->order_by('location_lat','DESC');
		$query = $this->db->get('locations');
		foreach ($query->result() as $row)
		{
			$location_name = $row->location_name;
			$table_name = $row->table_name;
            $location_attr = $row->location_attr;
			//再取出各table最新數據
			
            $this->db->order_by('date','DESC');
			$this->db->order_by('time','DESC');
    		$this->db->limit(1);
    		$query_location = $this->db->get($table_name);
			
			//觀測站類型
            $attr_mark = '';
            if ($location_attr == 'U')
            {
                $attr_mark = '*';
            }else
            {
                $attr_mark = '';
            }
			
    		foreach ($query_location->result() as $location_data)
    		{
    			$cap_date = $location_data->date;
    			$cap_time = $location_data->time;
    			$temp_C = $location_data->temp_c;
    			$condition = $location_data->condition;
    			$wind_direction = $location_data->wind_direction;
    			$wind_speed = $location_data->wind_speed;
    			$wind_gust = $location_data->wind_gust;
    			$humidity = $location_data->humity;
    			$pressure = $location_data->pressure;
    			$rain_data = $location_data->rain_data;
    			
    			$table_data_new = '<tr>
    		  <td title="地點"><a href="station/id/'.$table_name.'">'.$location_name.'</a>'.$attr_mark.'</td>
    		  <td title="天氣">'.$condition.'</td>
    		  <td title="溫度">'.$temp_C.'</td>
    		  <td title="風向">'.$wind_direction.'</td>
    		  <td title="風力">'.$wind_speed.'</td>
    		  <td title="陣風">'.$wind_gust.'</td>
    		  <td title="相對溼度">'.$humidity.'</td>
    		  <td title="氣壓">'.$pressure.'</td>
    		  <td title="當日累積雨量">'.$rain_data.'</td>
    		  <td title="更新時間">'.$cap_date.' '.$cap_time.'</td>
    		</tr>';
    		}
			$table_data = $table_data.$table_data_new;
		}
        $view_data['taiwan_n_menu'] = $this->list_location_by_zone('N');
        $view_data['taiwan_c_menu'] = $this->list_location_by_zone('C');
        $view_data['taiwan_s_menu'] = $this->list_location_by_zone('S');
        $view_data['taiwan_e_menu'] = $this->list_location_by_zone('E');
        $view_data['taiwan_i_menu'] = $this->list_location_by_zone('I');
		$view_data['weather_table'] = $table_data;
		$this->load->view('homepage',$view_data);
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
<?php
class db_functions{
    //DATABASE Settings//
    public $dbhost = 'localhost';
    public $dbuser = 'db_user.weather';
    public $dbpassword = '9Pj7zA58';
    public $dbname = 'weather';
    //DATABASE Settings END//
    
    function db_command($sql_query)
    {
        $db_host = $this->dbhost;
        $db_user = $this->dbuser;
        $db_pass = $this->dbpassword;
        $db_name = $this->dbname;
        $conn = mysql_connect($db_host, $db_user, $db_pass);
        if ($conn) {
			mysql_query("SET NAMES 'utf8'"); 
	        mysql_query("SET CHARACTER_SET_CLIENT=utf8"); 
	        mysql_query("SET CHARACTER_SET_RESULTS=utf8"); 
            mysql_select_db($db_name, $conn);
            $result = mysql_query($sql_query, $conn);
            return $result;
            mysql_close($conn);
        } else {
            //echo "db connect fail!\n";
            return 'CONNECTION FAILED!';
        }
    }
    
    function check_table($table_name,$location_name)
    {
        $db_name = $this->dbname;
        
        // Select 1 from table_name will return false if the table does not exist.
        $val = $this->db_command("select 1 from `cwb_$table_name`");
        
        if($val == FALSE)
        {
           //不存在
            $this->db_command("CREATE TABLE IF NOT EXISTS cwb_$table_name LIKE $db_name.sample_table");
            $this->db_command("insert into locations (`location_name`, `table_name`) value ('$location_name','cwb_$table_name')");
        }
    }
    
    function check_same_data($location_id,$capture_date,$capture_time)
    {
        $checker = $this->db_command("SELECT COUNT(*) FROM cwb_$location_id WHERE date = '$capture_date' and time = '$capture_time'");
        while($data = mysql_fetch_array($checker))
          {
          $checker_result = $data['0'];
          }
        if ($checker_result == 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
    
    function log_weather_data($location_id,$location_name,$capture_date,$capture_time, $temp_c,$temp_f,$condition,$wind_direct,$wind_speed,$wind_gust,$visiblety, $humanity,$pressure,$rain_data)
    {
        $this->check_table($location_id,$location_name);
        $check_same_pass = $this->check_same_data($location_id,$capture_date,$capture_time);
        if ($check_same_pass == true)
        {
			$new_time_code = $capture_date.' '.$capture_time;
            $this->db_command("insert into cwb_$location_id( `date`, `time`, `temp_c`, `temp_f`, `condition`, `wind_direction`, `wind_speed`, `wind_gust`, `visible`, `humity`, `pressure`, `rain_data`, `timestamp`)
        values('$capture_date', '$capture_time', '$temp_c', '$temp_f' , '$condition', '$wind_direct', '$wind_speed', '$wind_gust', '$visiblety', '$humanity', '$pressure', '$rain_data','$new_time_code')");
        }
        else
        {
            //
        }
        
    }
    //**************************************
    function get_lastest_group_name()
    {
        $sql_result = $this->db_command("SELECT * FROM html5_group ORDER BY join_time DESC LIMIT 1");
        while($data = mysql_fetch_array($sql_result))
          {
          $last_group_name = $data['group_name'];
          }
          return $last_group_name;
    }
    
    function put_sign_in($group_name,$channel_id,$join_time)
    {
        date_default_timezone_set("Asia/Taipei");
        $logtable = 'html5_group';
        $IP = $_SERVER['REMOTE_ADDR'];
        $this->db_command("insert into $logtable( `channel_id`, `group_name`, `join_time`, `ip_address`, `status`) values('$channel_id', '$group_name', '$join_time', '$IP', '1')");
        return true;
    }
    
}



?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><?php echo $city_1;?>即時天氣資訊 (<?php echo $data_location_name;?>) - twOpenWeather</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <?php $this->load->helper('url');?>
    <base href="<?php echo base_url();?>"/>
    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]-->
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    
    <script>
	google.load("visualization", "1", {packages:["corechart"]});
	google.setOnLoadCallback(drawChart);
    
	function drawChart() {
		//溫度
        var data_temp = google.visualization.arrayToDataTable(<?php echo $gchart_temp_result;?>);		
		
        var options_temp = {
          title: '溫度變化',
		  width: 1100,
		  height: 200,
		  hAxis:{
		  	textStyle: {color: 'white'}
		  },
		  colors:['#0e80f1'],
		  pointSize: 5
        };
        var chart_temp = new google.visualization.LineChart(document.getElementById('graph_temp'));
        
		chart_temp.draw(data_temp, options_temp);
		
		//濕度
		var data_humi = google.visualization.arrayToDataTable(<?php echo $gchart_humi_result;?>);		
		
        var options_humi = {
          title: '濕度變化',
		  width: 1100,
		  height: 200,
		  hAxis:{
		  	textStyle: {color: 'white'}
		  },
		  colors:['#f30c0c'],
		  pointSize: 5
        };
        var chart_humi = new google.visualization.LineChart(document.getElementById('graph_humi'));
        
		chart_humi.draw(data_humi, options_humi);
		//
      }
	  
	  $(document).ready(function() {
	    $('.dropdown-toggle').dropdown(); //下拉選單使用
	    });
  </script>
  
  </head>

  <body>
    
        
    <div class="container">
        <h1 class="muted">twOpenWeather</h1>
      <hr />
      <!---Menu Bar---->
	  <div class="navbar">
        <div class="navbar-inner">
          <div class="container">
            <ul class="nav">
      <li><a href="/">首頁</a></li>
      <li class="divider-vertical"></li>
      <!---section block--->
      <li class="dropdown" id="taiwan_n">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#taiwan_n">
      北部
      <b class="caret"></b>
    </a>
    <ul class="dropdown-menu">
        <?php
        foreach($taiwan_n_menu as $menu_n)
        {
            $city_name1 = $menu_n->city_1;
            $city_name2 = $menu_n->city_2;
            $lcoation_name = $menu_n->location_name;
            $location_id = $menu_n->table_name;
            echo '<li><a href="station/id/'.$location_id.'">'.$city_name1.$city_name2.'-('.$lcoation_name.')</a></li>';
        }
        ?>
    </ul>
  </li>
    <!---section block END--->
    <!---section block--->
      <li class="dropdown" id="taiwan_c">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#taiwan_c">
      中部
      <b class="caret"></b>
    </a>
    <ul class="dropdown-menu">
        <?php
        foreach($taiwan_c_menu as $menu_c)
        {
            $city_name1 = $menu_c->city_1;
            $city_name2 = $menu_c->city_2;
            $lcoation_name = $menu_c->location_name;
            $location_id = $menu_c->table_name;
            echo '<li><a href="station/id/'.$location_id.'">'.$city_name1.$city_name2.'-('.$lcoation_name.')</a></li>';
        }
        ?>
    </ul>
  </li>
    <!---section block END--->
    <!---section block--->
      <li class="dropdown" id="taiwan_s">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#taiwan_s">
      南部
      <b class="caret"></b>
    </a>
    <ul class="dropdown-menu">
        <?php
        foreach($taiwan_s_menu as $menu_s)
        {
            $city_name1 = $menu_s->city_1;
            $city_name2 = $menu_s->city_2;
            $lcoation_name = $menu_s->location_name;
            $location_id = $menu_s->table_name;
            echo '<li><a href="station/id/'.$location_id.'">'.$city_name1.$city_name2.'-('.$lcoation_name.')</a></li>';
        }
        ?>
    </ul>
  </li>
    <!---section block END--->
    <!---section block--->
      <li class="dropdown" id="taiwan_e">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#taiwan_e">
      東部
      <b class="caret"></b>
    </a>
    <ul class="dropdown-menu">
        <?php
        foreach($taiwan_e_menu as $menu_e)
        {
            $city_name1 = $menu_e->city_1;
            $city_name2 = $menu_e->city_2;
            $lcoation_name = $menu_e->location_name;
            $location_id = $menu_e->table_name;
            echo '<li><a href="station/id/'.$location_id.'">'.$city_name1.$city_name2.'-('.$lcoation_name.')</a></li>';
        }
        ?>
    </ul>
  </li>
    <!---section block END--->
    <!---section block--->
      <li class="dropdown" id="taiwan_i">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#taiwan_i">
      外島
      <b class="caret"></b>
    </a>
    <ul class="dropdown-menu">
        <?php
        foreach($taiwan_i_menu as $menu_i)
        {
            $city_name1 = $menu_i->city_1;
            $city_name2 = $menu_i->city_2;
            $lcoation_name = $menu_i->location_name;
            $location_id = $menu_i->table_name;
            echo '<li><a href="station/id/'.$location_id.'">'.$city_name1.$city_name2.'-('.$lcoation_name.')</a></li>';
        }
        ?>
    </ul>
  </li>
    <!---section block END--->
      <li class="divider-vertical"></li>
      <li><a href="api/readme">API說明</a></li>
    </ul>
          </div>
        </div>
      </div>
    <!---Menu Bar END---->
    <div class="page-header">
    <h2><?php echo $city_name;?> (<?php echo $data_location_name;?>)</h2>
    <h5 class="muted">更新時間: <?php echo $weather_now['timestamp'];?></h5>
    </div>
        <!----page content---->
        <div class="row-fluid">
        
          <div class="span2">
          <h4>溫度</h4>
          <h2><?php echo $weather_now['temp_c'];?> <sup>o</sup>C</h2>
          </div>
          
          <div class="span2">
          <h4>相對濕度</h4>
          <h2><?php echo $weather_now['humidity'];?> &#37;</h2>
          </div>
          
          
          <div class="span2">
          <h5>風向</h5>
          <h4><?php echo $weather_now['wind_direction'];?></h4>
          </div>
          
          <div class="span2">
          <h5>風力 (m/s | 級)</h5>
          <h4><?php echo $weather_now['wind_speed'];?></h4>
          </div>
          
          <div class="span2">
          <h5>陣風 (m/s | 級)</h5>
          <h4><?php echo $weather_now['wind_gust'];?></h4>
          </div>
          
          <div class="span2">
		  <h4>觀測站資訊</h4>
		  <ul class="unstyled">
		  	<li>縣市：<?php echo $city_name;?></li>
		  	<li>型態：<?php echo $location_attr;?></li>
			<li>觀測站代碼：<?php echo $data_location_id;?></li>
			<li>座標：<a href="https://maps.google.com/maps?q=<?php echo $location_ll;?>+(<?php echo $data_location_name.$location_attr;?>)&iwloc=A&hl=zh_TW" target="_blank">Google Map</a></li>
			<li>標高：<?php echo $location_att;?>m</li>
		  </ul>
          </div>
          
        </div>
        
        <div class="row-fluid">
        
          <div class="span4">
          <h4>天氣</h4>
          <h2><?php echo $weather_now['condition'];?></h2>
          </div>
          
          <div class="span2">
		  <h5>當日累積雨量 (毫米)</h5>
          <h4><?php echo $weather_now['rain_data'];?></h4>
		  </div>
		  
          <div class="span2">
		  <h5>氣壓 (百帕)</h5>
          <h4><?php echo $weather_now['pressure'];?></h4>
		  </div>
          
          <div class="span2">
		  <!--空白-->	
		  </div>
          
          
        </div>
		
		<div class="row-fluid">
          <div class="span12">
          <h4>過去24小時溫度變化圖</h4>
		  <div id="graph_temp" class="graphs"></div>
          </div>
        </div>
		
		<div class="row-fluid">
          <div class="span12">
          <h4>過去24小時濕度變化圖</h4>
		  <div id="graph_humi" class="graphs"></div>
          </div>
        </div>
		
        <!----page content END---->
	   <hr />
       <!---page footer--->		
    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-dropdown.js"></script>

  </body>
</html>
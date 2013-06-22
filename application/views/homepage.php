<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>twOpenWeather</title>
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
    
    <script>
      $(document).ready(function() {
        $('.dropdown-toggle').dropdown();
		$("#weather_table").tablesorter(); 
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
    <h2>測站即時資訊</h2>
    </div>
		<!----page content---->
        <table  id="weather_table" class="table table-striped tablesorter">
		<thead>
			<tr>
			  <th>地點</th>
			  <th>天氣</th>
			  <th>溫度 <sup>o</sup>C</th>
			  <th>風向</th>
			  <th>風力 m/s|級</th>
			  <th>陣風 m/s|級</th>
			  <th>相對溼度 %</th>
			  <th>氣壓 百帕</th>
			  <th>當日累積雨量 (毫米)</th>
			  <th>更新時間</th>
			</tr>
		</thead>
		
		<tbody>
			<?php echo $weather_table;?>
		</tbody>
		</table>
		<!----page content END---->
	   <hr /><!---page footer--->		
	   <h5>頁面產生時間：<?php echo $this->benchmark->elapsed_time();?></h5>
    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-dropdown.js"></script>
	<script type="text/javascript" src="js/jquery.tablesorter.min.js"></script>

  </body>
</html>
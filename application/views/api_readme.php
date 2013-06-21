<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>天氣資訊API說明文件 - twOpenWeather</title>
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
    
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-dropdown.js"></script>
    
    <script>
      $(document).ready(function() {
        $('.dropdown-toggle').dropdown();
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
    <h2>天氣資訊API</h2>
	<p>以下API回傳格式均為JSON，除非另有說明。</p>
    </div>
		<!----page content---->
        <h3>最新天氣資訊</h3>
		<p>回傳目前所有氣象站之最新所有觀測數據</p>
		<div class="well">
		<?php echo base_url();?>api
		</div>
		
		<h3>指定觀測站最新天氣資訊</h3>
		<p>回傳指定氣象站之最新所有觀測數據</p>
		<div class="well">
		<?php echo base_url();?>api/station_now/<font color="red">(觀測站代碼)</font><br />
		例：台北觀測站資料： <?php echo base_url();?>api/station_now/<font color="red">cwb_46692</font>
		</div>
		
		<h3>指定觀測站歷史全天天氣資訊</h3>
		<p>回傳指定氣象站之指定日期所有觀測數據</p>
		<div class="well">
		<?php echo base_url();?>api/station_history_allday/<font color="red">(觀測站代碼)</font>/<font color="#0000ff">(日期,YYYY-MM-DD)</font><br />
		例：台北觀測站2013-04-01資料： <?php echo base_url();?>api/station_history_allday/<font color="red">cwb_46692</font>/<font color="0000ff">2013-04-01</font>
		</div>
		
		
		
		
		
		<!----page content END---->
        <hr />
	   <!---page footer--->		
    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>

  </body>
</html>
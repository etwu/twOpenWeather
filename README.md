## twOpenWeather 台灣開放天氣站

### Live Demo
http://twweather.com
    
### 關於本專案
本專案為twweather.com的原始碼，一個台灣天氣觀測站的資料爬蟲。

### 安裝及使用方式
* 本專案使用Framework為PHP Codeigniter
* 上傳到機器運作前，請先將sql/資料夾內的資料庫格式匯入，並修改資料庫連線內容（application/config/database.php）
* 中央氣象局爬蟲(crawler/cwb_crawler.php)有使用到匯入資料到MongoDB的功能，如果不需要請刪除。（建議將中央氣象局爬蟲時間設定在20-25分鐘一次）

### 授權方式
本專案採用MIT授權，詳細內容請參考license.txt

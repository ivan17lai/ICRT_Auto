@echo off

echo ICRT自動下載開始

set year=%date:~0,4%
set month=%date:~5,2%
set day=%date:~8,2%
set datepart=%year%%month%%day%

echo 目前日期 %year% %datepart%
echo 下載連結 https://www.icrt.com.tw//en/ext/rss/LunchBox/%datepart%NK.mp3

curl -o "D:\ICRT_auto\mp3\latest.mp3" "https://www.icrt.com.tw//en/ext/rss/LunchBox/%datepart%NK.mp3"

set file2=D:\ICRT_auto\head\ICRT開頭音樂-巴哈-賜福萬民.mp3
set file1=D:\ICRT_auto\mp3\latest.mp3
set output_file=D:\ICRT_auto\ICRT.mp3

ffmpeg -y -i "concat:%file1%|%file2%" -acodec copy "%output_file%"



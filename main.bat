@echo off
curl -o "D:\ICRT_auto\mp3\latest.mp3" "https://www.icrt.com.tw//en/ext/rss/LunchBox/20240913NK.mp3"

set file2=D:\ICRT_auto\head\ICRT開頭音樂-巴哈-賜福萬民.mp3
set file1=D:\ICRT_auto\mp3\latest.mp3
set output_file=D:\ICRT_auto\play.mp3

ffmpeg -i "concat:%file1%|%file2%" -acodec copy "%output_file%"

pause
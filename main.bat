@echo off

echo ICRT�۰ʤU���}�l

set year=%date:~0,4%
set month=%date:~5,2%
set day=%date:~8,2%
set datepart=%year%%month%%day%

echo �ثe��� %year% %datepart%
echo �U���s�� https://www.icrt.com.tw//en/ext/rss/LunchBox/%datepart%NK.mp3

curl -o "D:\ICRT_auto\mp3\latest.mp3" "https://www.icrt.com.tw//en/ext/rss/LunchBox/%datepart%NK.mp3"

set file2=D:\ICRT_auto\head\ICRT�}�Y����-�ګ�-��ָU��.mp3
set file1=D:\ICRT_auto\mp3\latest.mp3
set output_file=D:\ICRT_auto\ICRT.mp3

ffmpeg -y -i "concat:%file1%|%file2%" -acodec copy "%output_file%"



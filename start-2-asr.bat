@ECHO OFF

docker rm -f avp3-ariaasr
ECHO Continuing happily ...
ECHO %~dp0
docker build -t ariaasr %~dp0/ASR
docker run -p 8888:8888 --name avp3-ariaasr ariaasr

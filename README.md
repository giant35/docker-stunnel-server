# docker-stunnel-server
配置stunnel server 端，主要是连接到squid

## 运行
```
git clone https://github.com/giant35/docker-stunnel-server.git
docker build -t stunnel:squid docker-stunnel-server

#需要先启动squid 在启动下边的stunnel server，
docker run -d -p 6080:6080 --link squidserver:squidserver stunnel:squid
```

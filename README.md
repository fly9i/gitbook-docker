# docker gitbook
* book 目录 /book

* book 初始化
`docker run -it --rm -v /book:/book gitbook gitbook init`

* book 安装
`docker run -it --rm -v /book:/book gitbook gitbook install`

* 启动
`docker run -itd -v /book:/book -p 4000:4000 gitbook gitbook`

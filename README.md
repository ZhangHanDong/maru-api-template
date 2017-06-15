# 说明

基于Elixir的[Maru框架](https://github.com/elixir-maru/maru)快速开发API微服务的模板项目，方便快捷。

### ecto操作命令

查看ecto task信息
```
$  mix ecto
```

### 查看routes

```
$ mix maru.routes
```

### dev启动服务

```
$ iex -S mix
```
重新编译
```
iex(1)> recompile
```

### 手动执行migrate命令

```
$ docker-compose run demo mix ecto.migrate
```

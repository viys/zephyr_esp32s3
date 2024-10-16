# Zephyr Project templates

## 1 Zephyr 资料

https://docs.zephyrproject.org/latest/

## 2 工程构建

### 2.1 拉取代码

```Shell
git clone https://github.com/viys/zephyr_esp32s3.git
```

### 2.2 安装依赖

```Shell
cd zephyr_esp32s3/
source ~/zephyrproject/.venv/bin/activate
west init -l project/
west update
west blobs fetch hal_espressif
```

### 2.3 工程编译

```Shell
west build -b esp32s3_devkitm -p auto project/
```

### 2.4 工程运行（烧录）

```Shell
west flash
```

#### 2.5 工程运行

```Shell
west espressif monitor
```

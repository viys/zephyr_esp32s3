# Zephyr Project templates

## 1 Zephyr 资料

https://docs.zephyrproject.org/latest/

## 2 工程构建

### 2.1 拉取代码

```Shell
git clone https://github.com/viys/zephyr_create.git
```

### 2.2 安装依赖

```Shell
cd zephyr_create/
source ~/zephyrproject/.venv/bin/activate
west init -l project/
west update
```

### 2.3 工程编译

```Shell
west build -b qemu_x86 -p auto project/
```

### 2.4 工程运行（烧录）

#### 2.4.1 工程运行

```Shell
west -t run
```

#### 2.4.2 工程烧录

```Shell
west flash
```
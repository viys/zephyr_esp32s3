#!/bin/bash

# 检查是否提供了 USB 端口作为参数
if [ -z "$1" ]; then
    echo "请提供USB端口作为参数，例如：/dev/ttyUSB0"
    exit 1
fi

# 设置参数
DEVICE=$1                     # 从命令行获取串口设备
BAUD_RATE="115200"            # 波特率
FLASH_COMMAND="west flash"    # 烧录命令

# 烧录固件
echo "开始烧录固件到设备 $DEVICE..."
$FLASH_COMMAND

if [ $? -ne 0 ]; then
    echo "烧录失败！"
    exit 1
fi

echo "烧录成功！"

# 等待设备重启
sleep 2

# 启动 minicom 监控串口
echo "启动 minicom 串口监控..."
sudo minicom -c on -D $DEVICE -b $BAUD_RATE

# 退出提示
echo "已退出 minicom。"

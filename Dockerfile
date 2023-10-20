# 使用官方Python镜像作为基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 将Python脚本复制到工作目录
COPY hello.py /app/hello.py

# 运行Python脚本
CMD ["python", "./hello.py"]

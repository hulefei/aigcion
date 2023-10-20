# 使用官方Python镜像作为基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 将Python脚本复制到工作目录
# COPY hello.py /app/hello.py

# 将Flask应用程序复制到工作目录
COPY app.py /app/app.py

# 将当前目录下的所有内容复制到工作目录
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# 运行Python脚本
# CMD ["python", "./hello.py"]

# 运行Flask应用程序
CMD ["python", "app.py"]

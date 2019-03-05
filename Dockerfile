FROM python:2.7

MAINTAINER Peng Xiao <xiaoquwl@gmail.com>

COPY . /skeleton
WORKDIR /skeleton
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
EXPOSE 5050
ENTRYPOINT ["scripts/dev.sh"]

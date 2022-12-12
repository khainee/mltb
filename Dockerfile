FROM anasty17/mltb:latest

RUN apt-get -qq update
RUN apt-get -qq install -y wget
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]

FROM nikolaik/python-nodejs:python3.9-nodejs16
RUN apt update -y && apt upgrade -y
RUN apt install git curl python3-pip 
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip3 install --no-cache-dir -U -r requirements.txt
CMD ["python3 -m Music"]

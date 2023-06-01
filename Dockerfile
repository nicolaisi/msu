FROM alpine:3.1

RUN apk add --update python py-pip

COPY . /tmp
WORKDIR /tmp
RUN pip install -r requirements.txt

EXPOSE  8001

ENV BORA_ADEI_SERVER=http://adei-katrin.kaas.kit.edu/adei/
ENV BORA_POLLING=20
ENV BORA_PORT=8001
ENV BORA_TITLE=CPS
ENV BORA_ADEI_USERNAME=katrin
ENV BORA_ADEI_PASSWORD=adei.F3rmi!2019

CMD ["python", "app.py", "-p 8001"]

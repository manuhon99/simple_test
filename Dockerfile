FROM alpine

RUN apk add python3 && apk add py-pip

COPY requirements.txt /app/



COPY ./app.py /app/
COPY ./templates /app/templates/ 
COPY ./static /app/static/ 

WORKDIR /app

RUN pip install -r requirements.txt
EXPOSE 5050
CMD python3 app.py

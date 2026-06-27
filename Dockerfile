FROM    python:3.14-alpine

RUN addgroup -S app && adduser -S app -G app

RUN apk add --no-cache curl

USER app

WORKDIR /app

COPY    . .

RUN pip install -r requirements.txt

EXPOSE  80

CMD ["python", "run.py"]
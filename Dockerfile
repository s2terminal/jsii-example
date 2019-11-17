FROM python:3.7.5-slim

ENV DIR /app
WORKDIR $DIR
RUN apt update && apt install -y nodejs npm

# setup node
COPY package.json $DIR
RUN npm install

# setup python
COPY requirements.txt $DIR
RUN pip install --requirement requirements.txt

# main: lib/index.ts
COPY lib/ $DIR/lib

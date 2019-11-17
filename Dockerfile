FROM python:3.7.5-slim

ENV DIR /app
WORKDIR $DIR
RUN apt update && apt install -y nodejs npm

# setup python
COPY requirements.txt $DIR
RUN pip install --requirement requirements.txt

# setup node
COPY package.json $DIR
RUN npm install

# main: lib/index.ts
COPY lib/ $DIR/lib

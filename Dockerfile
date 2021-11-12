FROM python:3.11.0a2-alpine
COPY . /fsociety
WORKDIR /fsociety
RUN apk --update add git nmap
RUN pip install -e .
CMD fsociety --info
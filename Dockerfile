FROM python:3.9-alpine
WORKDIR /app
ENV  MSG="Hello World!"
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 8080
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

FROM python:3.6

# Create app directory
WORKDIR /app

# Install app dependencies
COPY ./requirements.txt ./

RUN pip3 install flask && pip3 install gunicorn

RUN pip install -r requirements.txt

# Bundle app source
COPY . /app

EXPOSE 5000
CMD [ "python", "app.py" ]
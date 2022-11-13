FROM Python 3.9.12

#Set up directories 
RUN mkdir /application
WORKDIR /application

COPY requirements.txt.

# Copy python dependencies and install these RUN 
RUN pip install -r requirements.txt 
# Copy the rest of the applicationssd

COPY . .

#Environment variables

ENV PYTHONUNBUFFERED 1

#EXPOSE port 8000 to allow communication to/from server

EXPOSE 8001

STOPSIGNAL SIGINT

ENTRYPOINT ["python"]

CMD ["app.py"]
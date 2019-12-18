FROM python:3-slim

RUN mkdir /app
COPY ./ /app/flask_demo/
RUN pip install -r /app/flask_demo/requirements.txt
CMD ["python", "/app/flask_demo/create_db.py"]

CMD ["python", "/app/flask_demo/app.py"]

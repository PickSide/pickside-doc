FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY docs/ /app/docs/

RUN cd /app/docs && make html

EXPOSE 8000

CMD ["python", "-m", "http.server", "8000", "--directory", "/app/docs/_build/html/"]

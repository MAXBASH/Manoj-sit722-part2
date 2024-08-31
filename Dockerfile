FROM python:3.8-slim

# Set working directory to /app
WORKDIR /app

# Copy current directory contents into container at /app
COPY book_catalog/ ./

# Install packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]

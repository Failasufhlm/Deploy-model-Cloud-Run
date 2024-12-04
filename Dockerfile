# Gunakan image Python sebagai base
FROM python:3.10-slim

# Set environment variables untuk optimasi Python
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory di dalam container
WORKDIR /app

# Salin requirements.txt dan install dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Salin seluruh kode aplikasi ke dalam container
COPY . /app

# Expose port 5000 (default untuk Flask)
EXPOSE 5000

# Perintah default untuk menjalankan aplikasi
CMD ["python", "app.py"]

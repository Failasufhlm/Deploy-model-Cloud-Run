# Gunakan image Python sebagai base
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Salin file requirements.txt ke dalam container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua file ke dalam container
COPY . .

# Expose port yang digunakan oleh Flask
EXPOSE 8080

# Jalankan aplikasi Flask
CMD ["python", "app.py"]

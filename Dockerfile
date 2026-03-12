FROM python:3.11-slim

WORKDIR /app

# Install system packages
RUN apt-get update && apt-get install -y \
    ffmpeg \
    aria2 \
    wget \
    unzip \
    gcc \
    g++ \
    make \
    cmake \
    libffi-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Bento4 for mp4decrypt
RUN wget -q https://github.com/axiomatic-systems/Bento4/archive/v1.6.0-639.zip \
    && unzip v1.6.0-639.zip \
    && cd Bento4-1.6.0-639 \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make -j$(nproc) \
    && cp mp4decrypt /usr/local/bin/ \
    && cd / \
    && rm -rf Bento4-1.6.0-639 v1.6.0-639.zip

# Copy project
COPY . .

# Install python dependencies
RUN pip install --upgrade pip setuptools wheel \
    && pip install --no-cache-dir -r sainibots.txt \
    && pip install yt-dlp

# Run both the dummy web server and bot
CMD ["sh", "-c", "python3 app.py & python3 main.py"]

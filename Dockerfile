FROM python:3.10

WORKDIR /opt

COPY voicechat.py /opt
COPY requirements.txt /opt
COPY language-tts-voice-mapping.txt /opt

RUN apt-get update && apt-get install -y \
        ffmpeg \
        libsndfile1 \
        libportaudio2 \
        libasound-dev \
        libmagic1 \
        espeak \
        libespeak-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt

CMD ["streamlit", "run", "voicechat.py", "--server.port=8501", "--server.address=0.0.0.0"]

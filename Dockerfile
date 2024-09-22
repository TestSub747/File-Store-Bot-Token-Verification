FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN pip install pafy
RUN pip install aiohttp
RUN pip install google-generativeai

RUN pip install pymongo

COPY . .


EXPOSE 8080  

CMD ["python", "bot.py"]

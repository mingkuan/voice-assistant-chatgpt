# Voice Assistant Version of chatGPT

This is a streamlit based web app that can be accessed via web browsers from computer or mobile phones.

You can click the "Push-To-Talk" button in the web app to ask ChatGPT about anything you are interested. This web app will transcribe what you said and then send the request to OpenAI's chatGPT API to get the answer. This web app will then speak out chatGPT's answer using computer synthetic voice back to you.

This voice assistant can understand up-to **97 different languages**, not just English, [thanks to OpenAI's Whisper ASR model](https://github.com/openai/whisper). 

![Screenshot of the Voice Assistant Web App](./VoiceAssistantchatGPT.png|width=200)

**Note**:
You need get your own OpenAI API key in order to let your web app to get response from the chatGPT API.

# How to get your own OpenAI API keys
1. Log in to the [OpenAI website](https://openai.com/)
2. Click on your profile picture in the top right corner and select "Dashboard"
3. In the Dashboard, click on "API keys" in the left-hand menu
4. You should see a list of API keys associated with your account. If you haven't generated an API key yet, you can do so by clicking the "New API key" button.

# Running the voice assistant web app

## 1. Run from source code directly
```bash
#checkout the source codes
git clone https://github.com/mingkuan/voice-assistant-chatgpt.git

#install dependencies
pip install -r requirements.txt

#get your OpenAI API key from: https://platform.openai.com/account/api-keys 
#feedin your own OpenAI API key in line#47 in the voicechat.py file.

#start the web app
streamlit run voicechat.py
```
And then open your browser with the URL at http://localhost:8501


## 2. From from docker container directly

```bash
# Build the docker container
docker build -t voicebot-chatgpt -f Dockerfile .

# Wriet your own OpenAPI key into your secret file .env.secrete.txt

# Run the docker container by feed in your API key as environment variable
docker run -it -p 8501:8501  --env-file .env.secrete.txt voicebot-chatgpt
```
And then open your browser with the URL at http://localhost:8501


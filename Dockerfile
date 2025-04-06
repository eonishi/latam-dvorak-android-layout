FROM gradle:latest

# Add Android SDK
RUN 	wget https://dl.google.com/android/repository/tools_r25.2.3-linux.zip &&
	unzip tools_r25.2.3-linux.zip -d sdk &&
	cd /sdk/tools &&
	./android update sdk --no-ui && 

ENV ANDROID_HOME=$HOME/sdk 
ENV PATH=${PATH}:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools/26.0.0-preview/

WORKDIR /home/ubuntu/app/

COPY . .

CMD ["sh"]

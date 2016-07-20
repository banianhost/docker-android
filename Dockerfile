# based on https://hub.docker.com/r/gfx2015/android/ with openjdk-8
FROM java:8

MAINTAINER Pooya Parsa <pooya@pi0.ir>

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y git && \
    apt-get install -yq libc6:i386 libstdc++6:i386 zlib1g:i386 libncurses5:i386 --no-install-recommends && \
    apt-get clean

# Download and untar SDK
ENV ANDROID_SDK_URL http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
RUN curl -L "${ANDROID_SDK_URL}" | tar --no-same-owner -xz -C /usr/local
ENV ANDROID_HOME /usr/local/android-sdk-linux
ENV ANDROID_SDK /usr/local/android-sdk-linux
ENV PATH ${ANDROID_HOME}/tools:$ANDROID_HOME/platform-tools:$PATH

# Support Gradle
ENV TERM dumb
ENV GRADLE_VERSION 2.14
RUN curl -#L "https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" > /gradle.zip && \
    cd /usr/local && unzip /gradle.zip && rm /gradle.zip && mv gradle-* gradle && ln -s /usr/local/gradle/bin/gradle /bin

# Install Android SDK components

ENV ANDROID_COMPONENTS platform-tools,build-tools-24.0.0,android-24,android-25
RUN echo y | android update sdk --no-ui --all --filter "${ANDROID_COMPONENTS}" 

ENV GOOGLE_COMPONENTS extra-android-m2repository,extra-google-m2repository,extra-google-google_play_services
RUN echo y | android update sdk --no-ui --all --filter "${GOOGLE_COMPONENTS}"

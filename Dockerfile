FROM  debian:stable
WORKDIR /robot
COPY . /robot
RUN apt-get update && apt-get install curl -y && apt-get install firefox-esr -y && apt-get install libgbm1 -y
RUN curl -o rcc https://downloads.robocorp.com/rcc/releases/latest/linux64/rcc
RUN chmod a+x rcc
CMD ["tail", "-f", "/dev/null"]
FROM ubuntu:18.04
MAINTAINER EleMas* "elemas@hatsunemiku.kr"
RUN apt-get update -y && apt-get install -y openssh-server && apt-get install -y ffmpeg && apt-get install tzdata
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && apt-get install -y nodejs
RUN groupadd djyurika
RUN useradd -rm -d /home/djyurika -s /bin/bash -g djyurika -G sudo -u 1001 djyurika
# fill your password
RUN echo 'djyurika:your_password' | chpasswd
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ADD djyurika /etc/init.d/djyurika
ADD restarter /etc/init.d/restarter
ADD dj /home/djyurika/dj
ADD init.sh /home/djyurika/init.sh
ADD restarter.js /home/djyurika/restarter.js
ENTRYPOINT /home/djyurika/init.sh
EXPOSE 22/tcp
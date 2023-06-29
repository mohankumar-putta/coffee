FROM ubuntu
RUN apt-get update -y
RUN apt-get -y install apache2
ADD . /var/www/html
WORKDIR /var/www/html
RUN apt install git -y
RUN git clone https://github.com/mohankumar-putta/coffee.git
RUN service apache2 start
ENTRYPOINT apachectl -D FOREGROUND
ENV name DevOps

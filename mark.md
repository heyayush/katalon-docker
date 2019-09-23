https://download.katalon.com/6.3.3/Katalon_Studio_Linux_64-6.3.3.tar.gz

# install node
USER root
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs
RUN npm install


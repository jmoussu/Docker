FROM debian
RUN apt-get update -y && apt-get upgrade -y && \
	apt-get install bzip2 wget -y && \
	wget http://dl.4players.de/ts/releases/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && \
	bunzip2 *.bz2 && \
	tar -xvf *.tar
ENV TS3SERVER_LICENSE=accept
CMD ["sh", "teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]
# docker run --name ex00 -ti --rm build01
#docker run --name ex01 --rm -dit -p 9987:9987/udp -p 10011:10011 -p 30033:30033 build01
#Addresse de co : docker-machine ip Char
# TOKEN = docker logs ex01

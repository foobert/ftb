FROM java:8-jre
ADD http://ftb.cursecdn.com/FTB2/modpacks/FTBInfinityEvolvedSkyblock/1_0_4/FTBInfinityEvolvedSkyblockServer.zip /tmp/ftb.zip
RUN mkdir -p /ftb && cd /ftb && unzip /tmp/ftb.zip && /bin/sh /ftb/FTBInstall.sh
RUN echo eula=true > /ftb/eula.txt
COPY server.properties /ftb/
VOLUME ["/ftb/world"]
VOLUME ["/config"]
VOLUME ["/ftb/backups"]
RUN for i in ops whitelist banned-players; do ln -s /config/$i.json /ftb/$i.json; done
EXPOSE 25565
WORKDIR /ftb
ENTRYPOINT ["/bin/sh", "ServerStart.sh"]

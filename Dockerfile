FROM secoresearch/fuseki

ENV PATH "$PATH:/jena-fuseki/bin"

RUN mkdir -p /fuseki-base/databases/tdb \
    /fuseki-base/databases/lucene \
    /fuseki-base/databases/spatiallucene

WORKDIR /jena-fuseki

ENV ASSEMBLER "/fuseki-base/configuration/assembler.ttl"
ENV JAVA_CMD java -cp "$FUSEKI_HOME/fuseki-server.jar:/javalibs/*"
ENV TDBLOADER $JAVA_CMD tdb.tdbloader --desc=$ASSEMBLER

COPY --chown=9008 ammo.ttl /tmp/ammo.ttl

# Data
RUN $TDBLOADER --graph=http://ldf.fi/ammo /tmp/ammo.ttl \
    && $JAVA_CMD jena.textindexer --desc=$ASSEMBLER \
    && $JAVA_CMD tdb.tdbstats --desc=$ASSEMBLER --graph urn:x-arq:UnionGraph > /tmp/stats.opt \
    && mv /tmp/stats.opt /fuseki-base/databases/tdb/ \
    && rm /tmp/*

EXPOSE 3030
USER 9008

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["java", "-cp", "*:/javalibs/*", "org.apache.jena.fuseki.cmd.FusekiCmd"]


FROM secoresearch/fuseki:3.17.0

COPY --chown=9008 *.ttl /tmp/

# Data
RUN $TDBLOADER --graph=http://ldf.fi/ammo /tmp/ammo.ttl \
    && $TDBLOADER --graph=http://ldf.fi/ammo /tmp/coo1980.ttl \
    && $TDBLOADER --graph=http://ldf.fi/ammo /tmp/ammo_schema.ttl \
    && $TDBLOADER --graph=http://ldf.fi/ammo /tmp/skos.ttl \
    && $TDBLOADER --graph=http://ldf.fi/ammo /tmp/hisclass.ttl \
    && $TDBLOADER --graph=http://ldf.fi/ammo /tmp/sources.ttl \
    && $JAVA_CMD jena.textindexer --desc=$ASSEMBLER \
    && $JAVA_CMD tdb.tdbstats --desc=$ASSEMBLER --graph urn:x-arq:UnionGraph > /tmp/stats.opt \
    && mv /tmp/stats.opt /fuseki-base/databases/tdb/



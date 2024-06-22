FROM node:20.14

# Install pear-radio package globally
RUN npm install -g pear-radio

# Set the entry point with variables
ENTRYPOINT ["sh", "-c", "pear-radio stream -s $STREAM_SEED -u $STREAM_USERNAME -d $STREAM_DESCRIPTION -t $STREAM_TAGS --random -l /music"]

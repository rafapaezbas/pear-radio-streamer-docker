# Pear-radio-streamer

Pear-radio-streamer is a Docker container for hosting a streaming server for MP3 files. It allows you to easily start a streaming server with your own music files.

## How to Use

### Prerequisites
- Docker installed on your system

### Steps

1. **Prepare Music Files**: Copy your MP3 files that you want to stream into a folder on your system. Let's call this folder `$MUSIC_FOLDER`.

2. **Run the Docker Container**:
   
   Execute the following command in your terminal to start the Pear-radio-streamer Docker container:
   
   ```bash
   docker run --network=host \
              -v $MUSIC_FOLDER:/music \
              -e "STREAM_SEED=$STREAM_SEED" \
              -e "STREAM_USERNAME=$STREAM_USERNAME" \
              -e "STREAM_DESCRIPTION=$STREAM_DESCRIPTION" \
              -e "STREAM_TAGS=$STREAM_TAGS" \
              -dit --name $CONTAINER_NAME \
              rafapaezbas/pear-radio-streamer
   ```

   Make sure to replace the following variables:
   - `$MUSIC_FOLDER`: Path to the folder containing your MP3 files.
   - `$STREAM_SEED`: Seed for your stream.
   - `$STREAM_USERNAME`: Username for your stream.
   - `$STREAM_DESCRIPTION`: Description for your stream.
   - `$STREAM_TAGS`: Tags for your stream.
   - `$CONTAINER_NAME`: Name for your Docker container.

3. **Get the Stream Public Key**:

   To get the public key for your stream, run the following command:

   ```bash
   docker logs $CONTAINER_NAME
   ```

   This will display the logs for the Pear-radio-streamer container, including the stream's public key.

Now you have successfully set up a Pear-radio-streamer instance with your own music files. You can share the public key with others to allow them to listen to your stream.

# Use the official n8n image as a base
FROM n8nio/n8n

# Switch to the root user to install packages
USER root

# Install Python, pip, and then yt-dlp
# ffmpeg is also recommended for handling various formats
RUN apk add --no-cache python3 py3-pip ffmpeg

# Install/update yt-dlp
RUN pip install --break-system-packages --upgrade yt-dlp

# Switch back to the non-root node user
USER node

# Use the official n8n image as a base
FROM n8nio/n8n

# Switch to the root user to install packages
USER root

# Install Python, yt-dlp, and ffmpeg
# ffmpeg is recommended for handling various formats
RUN apk add --no-cache python3 py3-pip ffmpeg yt-dlp

# Switch back to the non-root node user
USER node

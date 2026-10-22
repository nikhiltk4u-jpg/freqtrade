FROM freqtradeorg/freqtrade:latest

# Switch to root to copy user data
USER root

# Copy the entire user_data folder from your repo root into the container's user_data path
COPY ./user_data /freqtrade/user_data

# Ensure correct ownership
RUN chown -R ftuser:ftuser /freqtrade/user_data

# Switch back to non-root user
USER ftuser

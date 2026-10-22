FROM freqtradeorg/freqtrade:latest

# Switch to root to copy user data
USER root

# Copy your local config and strategies into the container
COPY ./user_data /freqtrade/user_data

# Switch back to non-root user
USER ftuser

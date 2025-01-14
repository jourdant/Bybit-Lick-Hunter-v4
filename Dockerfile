FROM node:20-alpine
RUN apk update 
RUN apk add --no-cache tzdata

# Install dependencies
COPY ./package*.json /app/
WORKDIR /app
RUN npm install && \
    npm install -g pm2

# Copy application files
COPY . /app
RUN cp example.env .env

# Start the application with pm2
CMD ["sh", "entrypoint.sh"]
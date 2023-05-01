FROM node:20-alpine
RUN apk update 

# Install dependencies
COPY ./package*.json /app/
WORKDIR /app
RUN npm install && \
    npm install -g pm2

# Copy application files
COPY . /app
RUN cp example.env .env

# Start the application with pm2
CMD ["pm2-runtime", "app.js"]
# Use the official Nginx image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your static HTML files to the Nginx HTML directory
COPY . .

# Expose port 80 for the web server
EXPOSE 80

# Use the default Nginx command
CMD ["nginx", "-g", "daemon off;"]


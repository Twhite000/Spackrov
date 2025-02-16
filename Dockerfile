# Use the official lightweight Nginx image
FROM nginx:alpine

# Remove the default Nginx website files (optional)
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML, JS, CSS files from the templates folder into the Nginx html folder
COPY templates/ /usr/share/nginx/html/

# Copy additional assets (for example, your League-Logo folder)
COPY League-Logo/ /usr/share/nginx/html/League-Logo/

# Expose port 80, which Nginx uses
EXPOSE 80

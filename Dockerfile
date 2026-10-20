FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy site content and config.
# This branch owns its own build and ships ONLY the grizzly-plumbing demo.
COPY grizzly-plumbing/ /usr/share/nginx/html/grizzly-plumbing/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

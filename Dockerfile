FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy site content and config — this branch serves ONLY the roofing demo
COPY rogue-valley-roofing/ /usr/share/nginx/html/rogue-valley-roofing/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

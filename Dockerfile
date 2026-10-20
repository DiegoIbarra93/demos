FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy site content and config
COPY index.html /usr/share/nginx/html/index.html
COPY cowboy-plumbing/ /usr/share/nginx/html/cowboy-plumbing/
COPY long-walk-vineyard/ /usr/share/nginx/html/long-walk-vineyard/
COPY rogue-valley-roofing/ /usr/share/nginx/html/rogue-valley-roofing/
COPY sharps-tarps/ /usr/share/nginx/html/sharps-tarps/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy site content and config
COPY index.html /usr/share/nginx/html/index.html
COPY cowboy-plumbing/ /usr/share/nginx/html/cowboy-plumbing/
COPY long-walk-vineyard/ /usr/share/nginx/html/long-walk-vineyard/
COPY sharps-tarps/ /usr/share/nginx/html/sharps-tarps/
COPY grants-pass-heating/ /usr/share/nginx/html/grants-pass-heating/
COPY grizzly-plumbing/ /usr/share/nginx/html/grizzly-plumbing/
COPY rogue-valley-roofing/ /usr/share/nginx/html/rogue-valley-roofing/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

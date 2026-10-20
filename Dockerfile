FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# This branch serves ONLY the grants-pass-heating demo (one branch per landing page).
# Other demo COPY lines are intentionally removed here; they live on their own branches.
COPY grants-pass-heating/ /usr/share/nginx/html/grants-pass-heating/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

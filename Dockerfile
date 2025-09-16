# Use official nginx stable image
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy static site into nginx html dir
COPY src/ /usr/share/nginx/html/

# expose container port 80 (host mapping will use 2121)
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


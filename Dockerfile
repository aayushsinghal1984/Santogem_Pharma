# 1. Base Image: Nginx ka latest version use kar rahe hain
FROM nginx:latest

# 2. Cleanup: Nginx ka purana default page delete kar rahe hain (Best Practice)
RUN rm -rf /usr/share/nginx/html/*

# 3. Copy Data: Apni custom HTML aur logo ko web server ke folder me pack kar rahe hain
COPY index.html /usr/share/nginx/html/
COPY logo.png /usr/share/nginx/html/

# 4. Port Expose: Container ko batate hain ki traffic Port 80 par aayega
EXPOSE 80


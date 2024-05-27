# Utiliser l'image officielle de WordPress comme image de base
FROM wordpress:latest

# Définir le répertoire de travail dans le conteneur
WORKDIR /var/www/html


# Définir les variables d'environnement pour la base de données
ENV WORDPRESS_DB_HOST=db
ENV WORDPRESS_DB_USER=stage_mokrane
ENV WORDPRESS_DB_PASSWORD=stage_mokrane
ENV WORDPRESS_DB_NAME=db_wordpress

# Copier les fichiers du site WordPress dans le conteneur
COPY . .

# Exposer le port 80 pour le serveur web
EXPOSE 3000

# Commande pour démarrer le serveur Apache
CMD ["apache2-foreground"]

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app
RUN npm run build

# Expose port 3000 for the React app
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]

# Commande pour démarrer le serveur Apache dans l'image WordPress
CMD ["apache2-foreground"]

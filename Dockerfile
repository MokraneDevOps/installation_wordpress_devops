# Utiliser l'image officielle de WordPress comme base
FROM wordpress:latest

# Répertoire de travail dans le conteneur
WORKDIR /var/www/html

# Définir les variables d'environnement pour la base de données
ENV WORDPRESS_DB_HOST=db
ENV WORDPRESS_DB_USER=stage_mokrane
ENV WORDPRESS_DB_PASSWORD=stage_mokrane
ENV WORDPRESS_DB_NAME=db_wordpress

# Copier les fichiers du site WordPress dans le conteneur
COPY . .


# Expose port 3000 for the React app
EXPOSE 3000


# Commande pour démarrer le serveur Apache dans l'image WordPress
CMD ["apache2-foreground"]



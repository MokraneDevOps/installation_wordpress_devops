# Utiliser l'image officielle de WordPress comme base
#FROM wordpress:latest

# Répertoire de travail dans le conteneur
#WORKDIR /var/www/html

# Définir les variables d'environnement pour la base de données
#ENV WORDPRESS_DB_HOST=db
#ENV WORDPRESS_DB_USER=stage_mokrane
#ENV WORDPRESS_DB_PASSWORD=stage_mokrane
#ENV WORDPRESS_DB_NAME=db_wordpress

# Copier les fichiers du site WordPress dans le conteneur
#COPY site_wordpress /var/www/html/

# Expose port 3000 for the React app (si nécessaire)
#EXPOSE 3000

# Commande pour démarrer le serveur Apache dans l'image WordPress
#CMD ["apache2-foreground"]

# Utilisez une image WordPress de base
FROM wordpress:latest

# Copiez les fichiers de votre application WordPress dans le répertoire de travail de l'image
COPY ./wordpress /var/www/html

# Exposez le port 80 pour accéder à WordPress depuis l'extérieur
EXPOSE 80

# Commande par défaut à exécuter lorsque le conteneur démarre
CMD ["apache2-foreground"]

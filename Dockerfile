# Utilisez une image WordPress de base
FROM wordpress:latest

# Répertoire de travail dans le conteneur
WORKDIR /var/www/html

# Définir les variables d'environnement pour la base de données
ENV WORDPRESS_DB_HOST=db
ENV WORDPRESS_DB_USER=root
ENV WORDPRESS_DB_PASSWORD=root
ENV WORDPRESS_DB_NAME=wp_

# Copiez les fichiers du site WordPress dans le conteneur
COPY wordpress /var/www/html/

# Exposez le port 80 pour accéder à WordPress depuis l'extérieur
EXPOSE 80

# Commande pour démarrer le serveur Apache dans l'image WordPress
CMD ["apache2-foreground"]

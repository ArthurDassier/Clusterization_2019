# Dashboard

This project aims to teach you how to deploy in a cluster using Kubernetes along with how to use Traefik asa reverse proxy and load balancer.

The application you are working on during this project is a simple poll web application. Poll is a Python Flaskweb application that gathers the votes to push them into a Redis queue. The Java Worker consumes thevotes stored in the Redis queue, then pushes it into a PostgreSQL database. Finally, the Node.js Result webapplication fetches the votes from the DB and displays the result.

## Group members

camille.bouzerand@epitech.eu
theo.dedieu@epitech.eu
arthur.dassier@epitech.eu

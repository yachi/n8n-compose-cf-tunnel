# n8n Compose with Cloudflare Tunnel

This project provides a Docker Compose setup to run n8n with a Cloudflare Tunnel. It uses Traefik to handle SSL certificates and route traffic to the n8n container.

## Prerequisites

- Docker and Docker Compose
- A Cloudflare account
- A domain name managed by Cloudflare
- A Cloudflare Tunnel token

## Usage

1. Clone this repository.
2. Create a `.env` file and fill in the required environment variables (see `.env.example`).
3. Run `docker-compose up -d`.

Your n8n instance will be available at `https://<SUBDOMAIN>.<DOMAIN_NAME>`.

# GGM-Gastro-appliance-recommender
An interface that recommends appliances and utensils to get, based on business description.

## Requirements
Install [Docker](https://docs.docker.com/engine/install/), if not already done.

## ALL-In-One Quickstart

- Build and deploy the containers:
```bash
docker-compose up -d
```

- Login to the local [n8n-instance](http://localhost:5678) and create a new account.
- Add the [Gmail](https://docs.n8n.io/integrations/builtin/credentials/google/oauth-single-service/#set-up-custom-oauth2) and [Gemini](https://docs.n8n.io/integrations/builtin/credentials/googleai/#using-geminipalm-api-key) credentials, and link them to the *Chat* and *Gmail* nodes in the workflow.
- Finally, open [localhost](http://localhost:8080), and voila!

## Longer alternative

- Spin up a container running n8n:
```bash
docker volume create n8n_data

docker run -d \
  --name n8n \
  --restart always \
  -p 5678:5678 \
  -e N8N_CORS_ALLOWED_ORIGINS="*" \
  -e GENERIC_TIMEZONE="Europe/Berlin" \
  -e TZ="Europe/Berlin" \
  -e N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true \
  -e N8N_RUNNERS_ENABLED=true \
  -v n8n_data:/home/node/.n8n \
  docker.n8n.io/n8nio/n8n
```
- Login to the local [n8n-instance](http://localhost:5678) and create a new account.
- Create a new workflow, and copy the contents of `n8n_flow.json` into it.
- Add the [Gmail](https://docs.n8n.io/integrations/builtin/credentials/google/oauth-single-service/#set-up-custom-oauth2) and [Gemini](https://docs.n8n.io/integrations/builtin/credentials/googleai/#using-geminipalm-api-key) credentials, and link them to the *Chat* and *Gmail* nodes in the workflow.
- Finally, open the `index.html` file in your browser.
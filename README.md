# Drone Review Apps WIP
This is a drone plugin that creates review apps on your choice of cloud provider.
Define your app and it's dependencies in a standard docker compose file.

## Digital Ocean
Add to your .drone.yml
```
pipeline:
  deploy:
    image: sonerdy/drone-review-apps
    expires_in_days: 5
    digital_ocean:
      image: docker-16-04
    secrets: [ digital_ocean_access_token ]
```

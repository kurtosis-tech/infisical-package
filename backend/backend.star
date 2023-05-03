def add_backend(plan, mongo_url, image = "infisical/backend"):
    backend_service = plan.add_service(
        name = "infisical-backend",
        config = ServiceConfig(
            image = image,
            ports = {
                # TODO pull from EXPOSE in Dockerfile
                "rest": PortSpec(number = 4000, application_protocol = "http")
            },
            env_vars = {
                # TODO parameterize
                "NODE_ENV": "production",
                "MONGO_URL": mongo_url + "?authSource=admin",
            }
        )
    )

    return backend_service

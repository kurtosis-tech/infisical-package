mongodb = import_module("github.com/kurtosis-tech/mongodb-package/main.star")
backend = import_module("github.com/kurtosis-tech/infisical-package/backend/backend.star")

nginx = import_module("github.com/kurtosis-tech/infisical-package/nginx/nginx.star")

def run(plan, args):
    mongodb_output = mongodb.run(plan, {})

    backend_service = backend.add_backend(
        plan,
        mongodb_output.url,
    )

    nginx.add_nginx(plan, struct(url = "foo"), struct(url = "bar"))

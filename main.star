mongodb = import_module("github.com/kurtosis-tech/mongodb-package/main.star")

nginx = import_module("github.com/kurtosis-tech/infisical-package/nginx/nginx.star")

def run(plan, args):
    mongodb_output = mongodb.run(plan, {})

    nginx.add_nginx(plan, struct(url = "foo"), struct(url = "bar"))

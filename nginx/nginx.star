nginx = import_module("github.com/kurtosis-tech/nginx-package/main.star")

default_conf_template = read_file("github.com/kurtosis-tech/infisical-package/nginx/default.conf.tmpl")

def add_nginx(plan, backend, frontend):
    backend_url = backend.url
    frontend_url = frontend.url

    data = {
        "backend_url": backend_url,
        "frontend_url": frontend_url,
    }

    config_artifact = plan.render_templates(
        config = {
            "default.conf": struct(
                template = default_conf_template,
                data = data,
            ),
        }
    )

    nginx.run(plan, {
        "name": "infisical-nginx",
        "config_files_artifact": config_artifact},
    )

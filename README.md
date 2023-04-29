Infisical Package
=================
This is a [Kurtosis package](https://docs.kurtosis.com/concepts-reference/packages) that spins up a package running [Infisical](https://github.com/Infisical/infisical).

Run this package
----------------
If you have, [Kurtosis installed][install-kurtosis], you can run:

```bash
kurtosis run github.com/kurtosis-tech/infisical-package
```

If you don't have Kurtosis installed, [click here to run this package on the Kurtosis playground](https://gitpod.io/#KURTOSIS_PACKAGE_LOCATOR=github.com%2Fkurtosis-tech%2Finfisical-package/https://github.com/kurtosis-tech/playground-gitpod).

To blow away the created [enclave][enclaves-reference], run `kurtosis clean -a`.

#### Configuration

<details>
    <summary>Click to see configuration</summary>

You can configure this package using the JSON structure below. The default values for each parameter are shown.

NOTE: the `//` lines are not valid JSON; you will need to remove them!

```javascript
{
    // The name to print
    "name": "John Snow"
}
```

The arguments can then be passed in to `kurtosis run`.

For example:

```bash
kurtosis run github.com/kurtosis-tech/infisical-package '{"name":"Maynard James Keenan"}'
```

You can also store the JSON args in a file, and use command expansion to slot them in:

```bash
kurtosis run github.com/kurtosis-tech/infisical-package "$(cat args.json)"
```

</details>

Use this package in your package
--------------------------------
Kurtosis packages can be composed inside other Kurtosis packages. To use this package in your package:

First, import this package by adding the following to the top of your Starlark file:

```python
this_package = import_module("github.com/kurtosis-tech/infisical-package/main.star")
```

Then, call the this package's `run` function somewhere in your Starlark script:

```python
this_package_output = this_package.run(plan, args)
```

Develop on this package
-----------------------
1. [Install Kurtosis][install-kurtosis]
1. Clone this repo
1. For your dev loop, run `kurtosis clean -a && kurtosis run .` inside the repo directory


<!-------------------------------- LINKS ------------------------------->
[install-kurtosis]: https://docs.kurtosis.com/install
[enclaves-reference]: https://docs.kurtosis.com/concepts-reference/enclaves

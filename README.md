# Dev Container Templates

## Contents

This repository contains following features:
- [ansible](./src/ansible/README.md): Template for Ansible Playbooks, Roles, and Collections

## Repo and Template Structure

This repository contains a _collection_ of Templates. These Templates serve as simple template implementations which helps containerize the project. Similar to the [`devcontainers/templates`](https://github.com/devcontainers/templates) repo, this repository has a `src` folder.  Each Template has its own sub-folder, containing at least a `devcontainer-template.json` and `.devcontainer/devcontainer.json`. 

```
├── src
│   ├── ansible
│   │   ├── devcontainer-template.json
│   │   ├──| .devcontainer
│   │   |  └── devcontainer.json
│   │   └──| .github
│   │      └── dependabot.yml
|   ├── ...
│   │   ├── devcontainer-template.json
│   │   └──| .devcontainer
│   │      └── devcontainer.json
├── test
│   ├── ansible
│   │   └── test.sh
│   └──test-utils
│      └── test-utils.sh
...
```

### Options

All available options for a Template should be declared in the `devcontainer-template.json`. The syntax for the `options` property can be found in the [devcontainer Template json properties reference](https://containers.dev/implementors/templates#devcontainer-templatejson-properties).

For example, the `color` Template provides three possible options (`red`, `gold`, `green`), where the default value is set to "red".

```jsonc
{
    // ...
    "options": {
        "favorite": {
            "type": "string",
            "description": "Choose your favorite color."
            "proposals": [
                "red",
                "gold",
                "green"
            ],
            "default": "red"
        }
    }
}
```

An [implementing tool](https://containers.dev/supporting#tools) will use the `options` property from [the documented Dev Container Template properties](https://containers.dev/implementors/templates#devcontainer-templatejson-properties) for customizing the Template. See [option resolution example](https://containers.dev/implementors/templates#option-resolution-example) for details.

<h2>VPS - mainRecon</h2>

Create a VPS on Digital Ocean easily with the [mainRecon](https://github.com/l34r00t/mainRecon) included to launch the recon workflow.

**Digital Ocean Bonus**

You can sign up with my referral link <https://m.do.co/c/b5a9fc36fd95> and get $100 free credit to try it out!

#### Table of contents

- [Requirements](#requirements)
- [Usage](#usage)
  - [1.- Clone the repository](#1--clone-the-repository)
  - [2.- Credentials](#2--credentials)
    - [For Digital Ocean](#for-digital-ocean)
    - [SSH Private and Public keys](#ssh-private-and-public-keys)
  - [3.- Full Automation: Terraform and Ansible](#3--terraform-ansible)
    - [Digital Ocean](#digital-ocean)
  - [4.- Access to VPS](#5--access-to-vps)
  - [5.- Destroy the VPS](#6--destroy-the-vps)
- [Security](#shield-security)
- [Donations](#coffee-donations)
- [Contributing](#contributing)
- [Stargazers over time](#chart_with_upwards_trend-stargazers-over-time)
- [Credits](#credits)
- [License](#license)

### Requirements

- [Terraform](https://www.terraform.io/downloads.html) installed (Mac Version used: 0.13.0)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) installed (Mac Version: 2.9.11)
- SSH private and public keys
- Digital Ocean account - My referral link <https://m.do.co/c/b5a9fc36fd95>

### Usage

#### 1.- Clone the repository

```console
git clone --depth 1 https://github.com/l34r00t/vps-mainRecon.git
cd vps-mainRecon
```

#### 2.- Credentials

- Create credentials folder.

    ```console
    mkdir credentials
    ```
##### SSH Private and Public keys

- Inside credentials folder run `ssh-keygen -t rsa -f mainRecon` in the terminal. Empty passphrase is ok.
- It creates two files: private key (`mainRecon`) and public key (`mainRecon.pub`).

##### For Digital Ocean

- Create a Personal access tokens with write permission and copy it. [See Tutorial](https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/)

#### 3.- Full Automation: Terraform and Ansible

##### Digital Ocean

- Enter to digital-ocean folder
- With the personal access token copied run `export TF_VAR_do_token="Personal_Access_Token_Here"`
- Run the next commands:

```console
# Initialize terraform provider
$ terraform init
Terraform has been successfully initialized!

# Create the resources
$ terraform apply -auto-approve
Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
Outputs:
external_ip = x.x.x.x
```

- Copy the external_ip value

**Note:** The droplet type and the region used are: s-2vcpu-4gb and nyc3. You can change the values on server.tf and variables.tf

**Demo**
[![asciicast](https://asciinema.org/a/360592.svg)](https://asciinema.org/a/360592?t=25&speed=2)


#### 4.- Access to VPS & Run mainRecon

- In digital-ocean folder run the next command. Change x.x.x.x by external_ip value copied.

```Console
# Access to VPS
$ ssh mainrecon@x.x.x.x -i ../credentials/mainRecon
```

- For run mainRecon image you can see the [mainRecon](https://github.com/l34r00t/mainRecon#option-2---use-the-image-from-docker-hub) repository.

**Demo**
[![asciicast](https://asciinema.org/a/356742.svg)](https://asciinema.org/a/356742)

#### 6.- Destroy the VPS

- In digital-ocean folder run the next command.

```Console
# Destroy the resource
$ terraform destroy -auto-approve
```

:warning:**Note:** If you dont have a default VPC created in the region used it shows an error to destroy the VPC but no problem, it will destroy the others resources.

### Security

The service fail2ban has been installed to avoid brute force and block non-authorized users.

### Donations

If you like my content, please consider inviting me a coffee.

[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/l34r00t)

### Contributing

[Contributing Guide](CONTRIBUTING.md)

### Stargazers over time

[![Stargazers over time](https://starchart.cc/l34r00t/vps-mainRecon.svg)](https://starchart.cc/l34r00t/vps-mainRecon)

## Credits

This repository has been possible thank you to my friend [Arsenio Aguirre](https://github.com/aaaguirrep/vps-docker-for-pentest)

### License

[MIT](LICENSE)

Copyright (c) 2020, L34r00t
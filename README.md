<img align="right" width="250" height="47" src="media/Gematik_Logo_Flag.png"/> <br/>

# stage-public

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
       <ul>
        <li><a href="#release-notes">Release Notes</a></li>
      </ul>
	</li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li><a href="#security-policy">Security Policy</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

## About The Project
Public configuration and definition of services to use DEMIS in a self-managed Kubernetes Cluster.

### Release Notes
See [ReleaseNotes](ReleaseNotes.md) for all information regarding the (newest) releases.

## Getting Started
To use this stage-project in your Kubernetes cluster, you can use the project [DEMIS-Development-Cluster](https://github.com/gematik/DEMIS-Development-Cluster). 
This project provides a complete setup of the DEMIS environment. To deploy the DEMIS cluster locally, you
can follow the description in the [README](https://github.com/gematik/DEMIS-Development-Cluster/blob/main/README.md) 
of the project. 

By following the instructions from project DEMIS-Development-Cluster, you will be able to set up a local Kubernetes cluster 
with all the necessary components and configurations to run DEMIS. Additionally the stage-public repository will be 
checked out automatically by the command
```
make local init-stage
```

### Helm-Charts/GitHub-Credentials
The Helm-Charts from the GitHub-Repository [DEMIS-Helm-Charts](https://github.com/gematik/DEMIS-Helm-Charts) are public. 
Therefore, you do not need any GitHub-Credentials to check out the repository.
But to avoid to ran into rate-limits of GitHub, you can set your GitHub-Credentials in the files
* demis/credentials.tfvars
* idm/credentials.tfvars
* mesh/credentials.tfvars

You can set your GitHub-Credentials in this section:
```
#helm_repository_username = "USERNAME_HERE"
#helm_repository_password = "PASSWORD_HERE"
```

### DockerHub-Credentials
The DEMIS-Images from "docker.io/gematik1" are public and can be used without any credentials.
But to avoid to ran into rate limits of DockerHub, you can set your Credentials in the files:
* demis/credentials.tfvars
* idm/credentials.tfvars

You can set your user_name, user_email and user_password in this section:
```
# docker_pull_secrets = [
#   {
#     name          = "dockerhub-pull-secret"
#     registry      = "docker.io/gematik1"
#     user_name     = ""
#     user_email    = "my-mail@gematik.de"
#     user_password = "" # DockerHub-Access Token
#     password_type = "plain"
#   }
# ]
```

## Security Policy
If you want to see the security policy, please check our [SECURITY.md](.github/SECURITY.md).

## Contributing
If you want to contribute, please check our [CONTRIBUTING.md](.github/CONTRIBUTING.md).

## License
EUROPEAN UNION PUBLIC LICENCE v. 1.2

EUPL © the European Union 2007, 2016

## Additional Notes and Disclaimer from gematik GmbH

1. Copyright notice: Each published work result is accompanied by an explicit statement of the license conditions for use. These are regularly typical conditions in connection with open source or free software. Programs described/provided/linked here are free software, unless otherwise stated.
2. Permission notice: Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions::
   1. The copyright notice (Item 1) and the permission notice (Item 2) shall be included in all copies or substantial portions of the Software.
   2. The software is provided "as is" without warranty of any kind, either express or implied, including, but not limited to, the warranties of fitness for a particular purpose, merchantability, and/or non-infringement. The authors or copyright holders shall not be liable in any manner whatsoever for any damages or other claims arising from, out of or in connection with the software or the use or other dealings with the software, whether in an action of contract, tort, or otherwise.
   3. The software is the result of research and development activities, therefore not necessarily quality assured and without the character of a liable product. For this reason, gematik does not provide any support or other user assistance (unless otherwise stated in individual cases and without justification of a legal obligation). Furthermore, there is no claim to further development and adaptation of the results to a more current state of the art.
3. Gematik may remove published results temporarily or permanently from the place of publication at any time without prior notice or justification.
4. Please note: Parts of this code may have been generated using AI-supported technology.’ Please take this into account, especially when troubleshooting, for security analyses and possible adjustments.

See [LICENSE](LICENSE.md).

## Contact
E-Mail to [DEMIS Entwicklung](mailto:demis-entwicklung@gematik.de?subject=[GitHub]%20stage-public)
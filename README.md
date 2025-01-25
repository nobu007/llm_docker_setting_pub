<p align="center">
    <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" align="center" width="30%">
</p>
<p align="center"><h1 align="center">LLM_DOCKER_SETTING_PUB</h1></p>
<p align="center">
	<em><code>Deploy and manage LLM applications with ease</code></em>
</p>
<p align="center">
	<!-- local repository, no metadata badges. --></p>
<p align="center">Built with the tools and technologies:</p>
<p align="center">
	<img src="https://img.shields.io/badge/GNU%20Bash-4EAA25.svg?style=default&logo=GNU-Bash&logoColor=white" alt="GNU%20Bash">
	<img src="https://img.shields.io/badge/Docker-2496ED.svg?style=default&logo=Docker&logoColor=white" alt="Docker">
	<img src="https://img.shields.io/badge/GitHub%20Actions-2088FF.svg?style=default&logo=GitHub-Actions&logoColor=white" alt="GitHub%20Actions">
</p>
<br>

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
	- [Project Index](#project-index)
- [Getting Started](#getting-started)
	- [Prerequisites](#prerequisites)
	- [Installation](#installation)
	- [Usage](#usage)
	- [Testing](#testing)
- [Project Roadmap](#project-roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgments](#acknowledgments)

---

## Overview

llmdockersettingpub simplifies deploying and managing powerful large language model (LLM) applications. It provides pre-configured Docker environments with GPU support, remote access, and automated setup, ensuring consistent development and deployment across different machines. Ideal for developers and researchers working with LLMs, it streamlines the process, allowing them to focus on model development and application building.

---

## Features

- Pre-configured Docker environments with GPU support
- Remote access capabilities
- Automated setup for consistent development and deployment

---

## Project Structure

```sh
└── llm_docker_setting_pub/
    ├── .github
    │   └── workflows
    ├── HowToUseDocker.md
    ├── LICENSE
    ├── README.md
    ├── config
    │   └── requirements.txt
    ├── docker
    │   ├── .dockerignore.sample
    │   ├── Dockerfile
    │   ├── Dockerfile.desktop
    │   ├── Dockerfile.gpu
    │   ├── docker-compose.gpu.yml
    │   ├── docker-compose.vnc.yml
    │   └── docker-compose.yml
    ├── entrypoint.sh.sample
    ├── envsetup.sh.sample
    ├── healthcheck.sh.sample
    ├── install.sh.sample
    ├── script
    │   ├── docker_compose.sh
    │   └── docker_replace.sh
    └── server.py.sample
```

### Project Index

<details open>
	<summary><b><code>LLM_DOCKER_SETTING_PUB/</code></b></summary>
	<details> <!-- __root__ Submodule -->
		<summary><b>__root__</b></summary>
		<blockquote>
			<table>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/envsetup.sh.sample'>envsetup.sh.sample</a></b></td>
				<td>- Envsetup.sh.sample automates the development environment setup<br>- It installs Rye, a Python dependency management tool, configures the PATH environment variable, and activates a virtual environment<br>- Pre-commit hooks are installed for code quality<br>- The script ensures consistent development environments across machines by persistently adding necessary commands to shell profiles.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/healthcheck.sh.sample'>healthcheck.sh.sample</a></b></td>
				<td>- The healthcheck script monitors the `/app/server.py` process<br>- It logs its actions to `/app/work/all.log`<br>- If the Python server is not running, the script attempts to start it using `pyenv` and logs the success or failure<br>- Upon successful startup or if the server is already running, it exits with a zero status code; otherwise, it exits with a non-zero code<br>- This ensures the application's core server process remains active.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/entrypoint.sh.sample'>entrypoint.sh.sample</a></b></td>
				<td>- Entrypoint.sh configures the application's working directory, setting ownership and ensuring a log file exists<br>- It then continuously monitors and displays the log file's contents, providing real-time output for monitoring the application's activity within the broader project<br>- This facilitates runtime observation and debugging.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/server.py.sample'>server.py.sample</a></b></td>
				<td>- Server.py.sample initializes and configures an OpenInterpreter instance, specifying parameters like the LLM model, token limit, verbosity, and a system message defining the working directory<br>- It then starts a server using this configured interpreter, enabling interaction with the larger application through a user interface<br>- The server facilitates communication between the interpreter and external clients.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/install.sh.sample'>install.sh.sample</a></b></td>
				<td>- `install.sh.sample` provides a sample installation script for the project<br>- It sets up the environment by modifying the PATH, navigating to the application directory, activating a virtual environment, and finally installing the project in editable mode using pip<br>- This ensures the project's dependencies are correctly managed and the application is ready for use.</td>
			</tr>
			</table>
		</blockquote>
	</details>
	<details> <!-- config Submodule -->
		<summary><b>config</b></summary>
		<blockquote>
			<table>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/config/requirements.txt'>requirements.txt</a></b></td>
				<td>- The `requirements.txt` file specifies the project's dependencies<br>- It lists numerous Python packages, encompassing data science libraries (like Pandas, NumPy, and Scikit-learn), web frameworks (like aiohttp),  machine learning tools (including Langchain and OpenAI), and other utilities crucial for the application's functionality and development environment<br>- These dependencies enable the project's core operations.</td>
			</tr>
			</table>
		</blockquote>
	</details>
	<details> <!-- docker Submodule -->
		<summary><b>docker</b></summary>
		<blockquote>
			<table>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.gpu.yml'>docker-compose.gpu.yml</a></b></td>
				<td>- The `docker-compose.gpu.yml` file configures a multi-container Docker environment<br>- It defines services for a graphical desktop, an XRDP server for remote access, and a GPU-enabled Open Interpreter instance<br>- The configuration facilitates remote access to a resource-intensive application leveraging GPU capabilities, likely for AI or machine learning tasks<br>- Environment variables manage user credentials and API keys.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile'>Dockerfile</a></b></td>
				<td>- The Dockerfile constructs a Docker image, leveraging a base xRDP image<br>- It sequentially executes numerous installation scripts, each potentially installing project dependencies or configuring the runtime environment<br>- Finally, it copies remaining project files, runs a final installation script, sets environment variables, and defines the container's entrypoint and health check<br>- The resulting image provides a ready-to-run environment for the application.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.yml'>docker-compose.yml</a></b></td>
				<td>- The docker-compose.yml file orchestrates a multi-container Docker application<br>- It defines services for environment checks and two primary applications: a desktop environment (`desktop-xrdp`) and a main application (`app-xrdp`)<br>- `app-xrdp` leverages resources from the project's root directory, exposing several ports and incorporating health checks for monitoring<br>- The configuration facilitates a reproducible and isolated deployment environment.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/.dockerignore.sample'>.dockerignore.sample</a></b></td>
				<td>- The `.dockerignore.sample` file specifies files and directories to exclude when building Docker images<br>- It prevents unnecessary files, like Docker configuration files and version control data, from being included in the final image, resulting in smaller and more efficient Docker images for the project<br>- This contributes to streamlined deployment and improved build times.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile.gpu'>Dockerfile.gpu</a></b></td>
				<td>- Dockerfile.gpu constructs a Docker image optimized for GPU usage<br>- It leverages a base image containing NVIDIA CUDA libraries, adding a desktop environment<br>- Crucially, it copies necessary CUDA components from the base image to ensure GPU acceleration within the final image, enabling the execution of GPU-dependent tasks within the broader Open Interpreter project<br>- The entrypoint script manages the image's execution.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.vnc.yml'>docker-compose.vnc.yml</a></b></td>
				<td>- The docker-compose.vnc.yml file configures a multi-container Docker environment<br>- It defines two services: a VNC desktop and an application service<br>- The application service, built from a separate Dockerfile, exposes ports for VNC access and a web application, leveraging environment variables for authentication and API keys<br>- The desktop service acts as a base image for the application, ensuring a consistent runtime environment.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile.desktop'>Dockerfile.desktop</a></b></td>
				<td>- Dockerfile.desktop configures a desktop development environment<br>- It sets up a base image, installs essential development tools, including VS Code, Google Chrome, and Python 3.11,  and configures a user account with sudo privileges<br>- The script also customizes the environment for Japanese language support<br>- This Dockerfile facilitates consistent and reproducible development environments across different systems.</td>
			</tr>
			</table>
		</blockquote>
	</details>
	<details> <!-- .github Submodule -->
		<summary><b>.github</b></summary>
		<blockquote>
			<details>
				<summary><b>workflows</b></summary>
				<blockquote>
					<table>
					<tr>
						<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/.github/workflows/cla.yml'>cla.yml</a></b></td>
						<td>- The `cla.yml` workflow automates the Contributor License Agreement (CLA) process<br>- It monitors pull requests and issues, checking for CLA signatures<br>- Upon detecting a signature or pull request event, it uses a third-party action to manage CLA status, storing signatures in a specified file and optionally in a remote repository<br>- The workflow enhances project governance by ensuring contributors acknowledge the CLA before merging code.</td>
					</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<details> <!-- script Submodule -->
		<summary><b>script</b></summary>
		<blockquote>
			<table>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/script/docker_compose.sh'>docker_compose.sh</a></b></td>
				<td>- The script prepares the project for Docker Compose execution<br>- It sets up essential environment variables, creates placeholder shell scripts for various installation and operational tasks within the project's root directory, and then initiates a Docker Compose build and startup process from the docker subdirectory<br>- This ensures a consistent and reproducible build environment.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/script/docker_replace.sh'>docker_replace.sh</a></b></td>
				<td>- The script facilitates deployment by copying project files into a Docker container named `app-xrdp`<br>- It determines the project's root directory, then uses `docker cp` to transfer all files and potentially environment variables and a healthcheck script to the container's `/app` directory, enabling the application's execution within the Docker environment<br>- This streamlines the deployment process within the larger project structure.</td>
			</tr>
			</table>
		</blockquote>
	</details>
</details>

---

## Getting Started

### Prerequisites

Before getting started with llm_docker_setting_pub, ensure your runtime environment meets the following requirements:

- **Programming Language:** Error detecting primary_language: {'sample': 6, 'txt': 1, 'yml': 4, 'gpu': 1, 'desktop': 1, 'sh': 2}
- **Package Manager:** Pip
- **Container Runtime:** Docker

### Installation

Install llm_docker_setting_pub using one of the following methods:

**Build from source:**

1. Clone the llm_docker_setting_pub repository:

```sh
❯ git clone ../llm_docker_setting_pub
```

2. Navigate to the project directory:

```sh
❯ cd llm_docker_setting_pub
```

3. Install the project dependencies:

**Using `pip`** &nbsp; [<img align="center" src="" />]()
❯ pip install -r config/requirements.txt

```sh
❯ echo 'INSERT-INSTALL-COMMAND-HERE'
```

**Using `docker`** &nbsp; [<img align="center" src="https://img.shields.io/badge/Docker-2CA5E0.svg?style={badge_style}&logo=docker&logoColor=white" />](https://www.docker.com/)

```sh
❯ docker build -t codeinterpreter_api_agent/llm_docker_setting_pub .
```

### Usage

Run llm_docker_setting_pub using the following command:
**Using `pip`** &nbsp; [<img align="center" src="" />]()
❯ python server.py.sample

```sh
❯ echo 'INSERT-RUN-COMMAND-HERE'
```

**Using `docker`** &nbsp; [<img align="center" src="https://img.shields.io/badge/Docker-2CA5E0.svg?style={badge_style}&logo=docker&logoColor=white" />](https://www.docker.com/)

```sh
❯ docker run -it {image_name}
```

### Testing

Run the test suite using the following command:
**Using `pip`** &nbsp; [<img align="center" src="" />]()
❯ pytest

```sh
❯ echo 'INSERT-TEST-COMMAND-HERE'
```

---

## Project Roadmap

- [x] **`Task 1`**: <strike>Implement feature one.</strike>
- [ ] **`Task 2`**: Implement feature two.
- [ ] **`Task 3`**: Implement feature three.

---

## Contributing

- **💬 [Join the Discussions](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/discussions)**: Share your insights, provide feedback, or ask questions.
- **🐛 [Report Issues](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/issues)**: Submit bugs found or log feature requests for the `llm_docker_setting_pub` project.
- **💡 [Submit Pull Requests](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.

<details closed>
<summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your LOCAL account.
2. **Clone Locally**: Clone the forked repository to your local machine using a git client.
   ```sh
   git clone /home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b new-feature-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to LOCAL**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.
8. **Review**: Once your PR is reviewed and approved, it will be merged into the main branch. Congratulations on your contribution!
</details>

<details closed>
<summary>Contributor Graph</summary>
<br>
<p align="left">
   <a href="https://LOCAL{/codeinterpreter_api_agent/llm_docker_setting_pub/}graphs/contributors">
      <img src="https://contrib.rocks/image?repo=codeinterpreter_api_agent/llm_docker_setting_pub">
   </a>
</p>
</details>

---

## License

This project is protected under the [SELECT-A-LICENSE](https://choosealicense.com/licenses) License. For more details, refer to the [LICENSE](https://choosealicense.com/licenses/) file.

---

## Acknowledgments

- List any resources, contributors, inspiration, etc. here.

---

```html
<p align="center">
    <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" align="center" width="30%">
</p>
<p align="center"><h1 align="center">LLM_DOCKER_SETTING_PUB</h1></p>
<p align="center">
	<em><code>Despliega y gestiona aplicaciones LLM con facilidad</code></em>
</p>
<p align="center">
	<!-- local repository, no metadata badges. --></p>
<p align="center">Construido con las herramientas y tecnologías:</p>
<p align="center">
	<img src="https://img.shields.io/badge/GNU%20Bash-4EAA25.svg?style=default&logo=GNU-Bash&logoColor=white" alt="GNU%20Bash">
	<img src="https://img.shields.io/badge/Docker-2496ED.svg?style=default&logo=Docker&logoColor=white" alt="Docker">
	<img src="https://img.shields.io/badge/GitHub%20Actions-2088FF.svg?style=default&logo=GitHub-Actions&logoColor=white" alt="GitHub%20Actions">
</p>
<br>

## Tabla de Contenidos

- [Tabla de Contenidos](#tabla-de-contenidos)
- [Resumen](#resumen)
- [Características](#características)
- [Estructura del Proyecto](#estructura-del-proyecto)
	- [Índice del Proyecto](#índice-del-proyecto)
- [Empezando](#empezando)
	- [Prerrequisitos](#prerrequisitos)
	- [Instalación](#instalación)
	- [Uso](#uso)
	- [Pruebas](#pruebas)
- [Hoja de Ruta del Proyecto](#hoja-de-ruta-del-proyecto)
- [Contribución](#contribución)
- [Licencia](#licencia)
- [Agradecimientos](#agradecimientos)

---

## Resumen

llmdockersettingpub simplifica el despliegue y la gestión de potentes aplicaciones de modelos de lenguaje grande (LLM). Proporciona entornos Docker preconfigurados con soporte para GPU, acceso remoto y configuración automatizada, lo que garantiza un desarrollo y despliegue consistentes en diferentes máquinas. Ideal para desarrolladores e investigadores que trabajan con LLM, agiliza el proceso, permitiéndoles centrarse en el desarrollo de modelos y la creación de aplicaciones.

---

## Características

- Entornos Docker preconfigurados con soporte para GPU
- Capacidades de acceso remoto
- Configuración automatizada para un desarrollo y despliegue consistentes

---

## Estructura del Proyecto

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

### Índice del Proyecto

<details open>
	<summary><b><code>LLM_DOCKER_SETTING_PUB/</code></b></summary>
	<details> <!-- __root__ Submodule -->
		<summary><b>__root__</b></summary>
		<blockquote>
			<table>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/envsetup.sh.sample'>envsetup.sh.sample</a></b></td>
				<td>- Envsetup.sh.sample automatiza la configuración del entorno de desarrollo<br>- Instala Rye, una herramienta de gestión de dependencias de Python, configura la variable de entorno PATH y activa un entorno virtual<br>- Se instalan ganchos pre-commit para la calidad del código<br>- El script asegura entornos de desarrollo consistentes en todas las máquinas añadiendo persistentemente comandos necesarios a los perfiles de shell.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/healthcheck.sh.sample'>healthcheck.sh.sample</a></b></td>
				<td>- El script healthcheck supervisa el proceso `/app/server.py`<br>- Registra sus acciones en `/app/work/all.log`<br>- Si el servidor Python no está en funcionamiento, el script intenta iniciarlo utilizando `pyenv` y registra el éxito o el fallo<br>- Tras un inicio exitoso o si el servidor ya está en funcionamiento, sale con un código de estado cero; de lo contrario, sale con un código distinto de cero<br>- Esto asegura que el proceso del servidor central de la aplicación permanezca activo.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/entrypoint.sh.sample'>entrypoint.sh.sample</a></b></td>
				<td>- Entrypoint.sh configura el directorio de trabajo de la aplicación, establece la propiedad y asegura que existe un archivo de registro<br>- A continuación, supervisa y muestra continuamente el contenido del archivo de registro, proporcionando una salida en tiempo real para supervisar la actividad de la aplicación dentro del proyecto más amplio<br>- Esto facilita la observación y la depuración en tiempo de ejecución.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/server.py.sample'>server.py.sample</a></b></td>
				<td>- Server.py.sample inicializa y configura una instancia de OpenInterpreter, especificando parámetros como el modelo LLM, el límite de tokens, la verbosidad y un mensaje del sistema que define el directorio de trabajo<br>- A continuación, inicia un servidor utilizando este intérprete configurado, permitiendo la interacción con la aplicación más grande a través de una interfaz de usuario<br>- El servidor facilita la comunicación entre el intérprete y los clientes externos.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/install.sh.sample'>install.sh.sample</a></b></td>
				<td>- `install.sh.sample` proporciona un script de instalación de muestra para el proyecto<br>- Configura el entorno modificando el PATH, navegando al directorio de la aplicación, activando un entorno virtual y, finalmente, instalando el proyecto en modo editable utilizando pip<br>- Esto asegura que las dependencias del proyecto se gestionan correctamente y que la aplicación está lista para su uso.</td>
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
				<td>- El archivo `requirements.txt` especifica las dependencias del proyecto<br>- Enumera numerosos paquetes de Python, que abarcan bibliotecas de ciencia de datos (como Pandas, NumPy y Scikit-learn), frameworks web (como aiohttp), herramientas de aprendizaje automático (incluyendo Langchain y OpenAI), y otras utilidades cruciales para la funcionalidad de la aplicación y el entorno de desarrollo<br>- Estas dependencias permiten las operaciones centrales del proyecto.</td>
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
				<td>- El archivo `docker-compose.gpu.yml` configura un entorno Docker multi-contenedor<br>- Define servicios para un escritorio gráfico, un servidor XRDP para acceso remoto y una instancia de Open Interpreter habilitada para GPU<br>- La configuración facilita el acceso remoto a una aplicación de uso intensivo de recursos que aprovecha las capacidades de la GPU, probablemente para tareas de IA o aprendizaje automático<br>- Las variables de entorno gestionan las credenciales de usuario y las claves API.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile'>Dockerfile</a></b></td>
				<td>- El Dockerfile construye una imagen Docker, aprovechando una imagen base xRDP<br>- Ejecuta secuencialmente numerosos scripts de instalación, cada uno de los cuales instala potencialmente dependencias del proyecto o configura el entorno de ejecución<br>- Finalmente, copia los archivos restantes del proyecto, ejecuta un script de instalación final, establece variables de entorno y define el punto de entrada y la comprobación de estado del contenedor<br>- La imagen resultante proporciona un entorno listo para ejecutar la aplicación.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.yml'>docker-compose.yml</a></b></td>
				<td>- El archivo docker-compose.yml orquesta una aplicación Docker multi-contenedor<br>- Define servicios para comprobaciones de entorno y dos aplicaciones principales: un entorno de escritorio (`desktop-xrdp`) y una aplicación principal (`app-xrdp`)<br>- `app-xrdp` aprovecha los recursos del directorio raíz del proyecto, exponiendo varios puertos e incorporando comprobaciones de estado para la supervisión<br>- La configuración facilita un entorno de despliegue reproducible y aislado.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/.dockerignore.sample'>.dockerignore.sample</a></b></td>
				<td>- El archivo `.dockerignore.sample` especifica los archivos y directorios que se deben excluir al crear imágenes Docker<br>- Evita que se incluyan archivos innecesarios, como los archivos de configuración de Docker y los datos de control de versiones, en la imagen final, lo que da como resultado imágenes Docker más pequeñas y eficientes para el proyecto<br>- Esto contribuye a una implementación optimizada y a tiempos de construcción mejorados.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile.gpu'>Dockerfile.gpu</a></b></td>
				<td>- Dockerfile.gpu construye una imagen Docker optimizada para el uso de GPU<br>- Aprovecha una imagen base que contiene las bibliotecas NVIDIA CUDA, añadiendo un entorno de escritorio<br>- Fundamentalmente, copia los componentes CUDA necesarios de la imagen base para asegurar la aceleración de la GPU dentro de la imagen final, permitiendo la ejecución de tareas dependientes de la GPU dentro del proyecto Open Interpreter más amplio<br>- El script de punto de entrada gestiona la ejecución de la imagen.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.vnc.yml'>docker-compose.vnc.yml</a></b></td>
				<td>- El archivo docker-compose.vnc.yml configura un entorno Docker multi-contenedor<br>- Define dos servicios: un escritorio VNC y un servicio de aplicación<br>- El servicio de aplicación, construido a partir de un Dockerfile separado, expone puertos para el acceso VNC y una aplicación web, aprovechando variables de entorno para la autenticación y las claves API<br>- El servicio de escritorio actúa como una imagen base para la aplicación, asegurando un entorno de ejecución consistente.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile.desktop'>Dockerfile.desktop</a></b></td>
				<td>- Dockerfile.desktop configura un entorno de desarrollo de escritorio<br>- Configura una imagen base, instala herramientas de desarrollo esenciales, incluyendo VS Code, Google Chrome y Python 3.11, y configura una cuenta de usuario con privilegios sudo<br>- El script también personaliza el entorno para el soporte del idioma japonés<br>- Este Dockerfile facilita entornos de desarrollo consistentes y reproducibles en diferentes sistemas.</td>
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
						<td>- El flujo de trabajo `cla.yml` automatiza el proceso del Acuerdo de Licencia de Contribuyente (CLA)<br>- Supervisa las solicitudes de extracción y los problemas, comprobando las firmas CLA<br>- Al detectar una firma o un evento de solicitud de extracción, utiliza una acción de terceros para gestionar el estado del CLA, almacenando las firmas en un archivo especificado y opcionalmente en un repositorio remoto<br>- El flujo de trabajo mejora la gobernanza del proyecto asegurando que los contribuyentes reconozcan el CLA antes de fusionar el código.</td>
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
				<td>- El script prepara el proyecto para la ejecución de Docker Compose<br>- Configura las variables de entorno esenciales, crea scripts shell de marcador de posición para varias tareas de instalación y operativas dentro del directorio raíz del proyecto, y luego inicia un proceso de construcción e inicio de Docker Compose desde el subdirectorio docker<br>- Esto asegura un entorno de construcción consistente y reproducible.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/script/docker_replace.sh'>docker_replace.sh</a></b></td>
				<td>- El script facilita el despliegue copiando los archivos del proyecto en un contenedor Docker llamado `app-xrdp`<br>- Determina el directorio raíz del proyecto y luego utiliza `docker cp` para transferir todos los archivos y potencialmente las variables de entorno y un script de comprobación de estado al directorio `/app` del contenedor, permitiendo la ejecución de la aplicación dentro del entorno Docker<br>- Esto agiliza el proceso de despliegue dentro de la estructura más amplia del proyecto.</td>
			</tr>
			</table>
		</blockquote>
	</details>
</details>

---

## Empezando

### Prerrequisitos

Antes de empezar con llm_docker_setting_pub, asegúrate de que tu entorno de ejecución cumple los siguientes requisitos:

- **Lenguaje de Programación:** Error detecting primary_language: {'sample': 6, 'txt': 1, 'yml': 4, 'gpu': 1, 'desktop': 1, 'sh': 2}
- **Gestor de Paquetes:** Pip
- **Runtime de Contenedores:** Docker

### Instalación

Instala llm_docker_setting_pub usando uno de los siguientes métodos:

**Construir desde la fuente:**

1. Clona el repositorio llm_docker_setting_pub:

```sh
❯ git clone ../llm_docker_setting_pub
```

2. Navega al directorio del proyecto:

```sh
❯ cd llm_docker_setting_pub
```

3. Instala las dependencias del proyecto:

**Usando `pip`** &nbsp; [<img align="center" src="" />]()
❯ pip install -r config/requirements.txt

```sh
❯ echo 'INSERT-INSTALL-COMMAND-HERE'
```

**Usando `docker`** &nbsp; [<img align="center" src="https://img.shields.io/badge/Docker-2CA5E0.svg?style={badge_style}&logo=docker&logoColor=white" />](https://www.docker.com/)

```sh
❯ docker build -t codeinterpreter_api_agent/llm_docker_setting_pub .
```

### Uso

Ejecuta llm_docker_setting_pub utilizando el siguiente comando:
**Usando `pip`** &nbsp; [<img align="center" src="" />]()
❯ python server.py.sample

```sh
❯ echo 'INSERT-RUN-COMMAND-HERE'
```

**Usando `docker`** &nbsp; [<img align="center" src="https://img.shields.io/badge/Docker-2CA5E0.svg?style={badge_style}&logo=docker&logoColor=white" />](https://www.docker.com/)

```sh
❯ docker run -it {image_name}
```

### Pruebas

Ejecuta la suite de pruebas usando el siguiente comando:
**Usando `pip`** &nbsp; [<img align="center" src="" />]()
❯ pytest

```sh
❯ echo 'INSERT-TEST-COMMAND-HERE'
```

---

## Hoja de Ruta del Proyecto

- [x] **`Tarea 1`**: <strike>Implementar la característica uno.</strike>
- [ ] **`Tarea 2`**: Implementar la característica dos.
- [ ] **`Tarea 3`**: Implementar la característica tres.

---

## Contribución

- **💬 [Únete a las Discusiones](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/discussions)**: Comparte tus ideas, proporciona comentarios o haz preguntas.
- **🐛 [Informa de Problemas](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/issues)**: Envía los errores encontrados o registra las solicitudes de funciones para el proyecto `llm_docker_setting_pub`.
- **💡 [Envía Solicitudes de Extracción](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/blob/main/CONTRIBUTING.md)**: Revisa las PR abiertas y envía tus propias PR.

<details closed>
<summary>Directrices para Contribuir</summary>

1. **Haz un Fork del Repositorio**: Empieza haciendo un fork del repositorio del proyecto a tu cuenta LOCAL.
2. **Clona Localmente**: Clona el repositorio bifurcado a tu máquina local usando un cliente git.
   ```sh
   git clone /home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub
   ```
3. **Crea una Nueva Rama**: Trabaja siempre en una nueva rama, dándole un nombre descriptivo.
   ```sh
   git checkout -b nueva-caracteristica-x
   ```
4. **Haz Tus Cambios**: Desarrolla y prueba tus cambios localmente.
5. **Confirma Tus Cambios**: Confirma con un mensaje claro que describa tus actualizaciones.
   ```sh
   git commit -m 'Implementada nueva característica x.'
   ```
6. **Sube a LOCAL**: Sube los cambios a tu repositorio bifurcado.
   ```sh
   git push origin nueva-caracteristica-x
   ```
7. **Envía una Solicitud de Extracción**: Crea una PR contra el repositorio original del proyecto. Describe claramente los cambios y sus motivaciones.
8. **Revisión**: Una vez que tu PR sea revisada y aprobada, se fusionará en la rama principal. ¡Enhorabuena por tu contribución!
</details>

<details closed>
<summary>Gráfico de Contribuyentes</summary>
<br>
<p align="left">
   <a href="https://LOCAL{/codeinterpreter_api_agent/llm_docker_setting_pub/}graphs/contributors">
      <img src="https://contrib.rocks/image?repo=codeinterpreter_api_agent/llm_docker_setting_pub">
   </a>
</p>
</details>

---

## Licencia

Este proyecto está protegido bajo la Licencia [SELECT-A-LICENSE](https://choosealicense.com/licenses). Para más detalles, consulta el archivo [LICENSE](https://choosealicense.com/licenses/).

---

## Agradecimientos

- Lista aquí cualquier recurso, colaborador, inspiración, etc.

---
```

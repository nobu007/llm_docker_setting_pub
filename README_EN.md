```markdown
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
- [Contribuciones](#contribuciones)
- [Licencia](#licencia)
- [Agradecimientos](#agradecimientos)

---

## Resumen

llmdockersettingpub simplifica el despliegue y la gestión de potentes aplicaciones de modelos de lenguaje grandes (LLM). Proporciona entornos Docker preconfigurados con soporte para GPU, acceso remoto y configuración automatizada, lo que garantiza un desarrollo y despliegue consistentes en diferentes máquinas. Es ideal para desarrolladores e investigadores que trabajan con LLM, ya que agiliza el proceso, permitiéndoles concentrarse en el desarrollo de modelos y la creación de aplicaciones.

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
				<td>- Envsetup.sh.sample automatiza la configuración del entorno de desarrollo<br>- Instala Rye, una herramienta de gestión de dependencias de Python, configura la variable de entorno PATH y activa un entorno virtual<br>- Se instalan ganchos de pre-commit para la calidad del código<br>- El script garantiza entornos de desarrollo consistentes en todas las máquinas añadiendo persistentemente los comandos necesarios a los perfiles de shell.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/healthcheck.sh.sample'>healthcheck.sh.sample</a></b></td>
				<td>- El script de verificación de estado supervisa el proceso `/app/server.py`<br>- Registra sus acciones en `/app/work/all.log`<br>- Si el servidor de Python no se está ejecutando, el script intenta iniciarlo usando `pyenv` y registra el éxito o el fracaso<br>- Tras el inicio correcto o si el servidor ya se está ejecutando, sale con un código de estado cero; de lo contrario, sale con un código distinto de cero<br>- Esto asegura que el proceso del servidor central de la aplicación permanezca activo.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/entrypoint.sh.sample'>entrypoint.sh.sample</a></b></td>
				<td>- Entrypoint.sh configura el directorio de trabajo de la aplicación, estableciendo la propiedad y asegurando que exista un archivo de registro<br>- A continuación, supervisa y muestra continuamente el contenido del archivo de registro, proporcionando salida en tiempo real para supervisar la actividad de la aplicación dentro del proyecto más amplio<br>- Esto facilita la observación y depuración en tiempo de ejecución.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/server.py.sample'>server.py.sample</a></b></td>
				<td>- Server.py.sample inicializa y configura una instancia de OpenInterpreter, especificando parámetros como el modelo LLM, el límite de tokens, la verbosidad y un mensaje del sistema que define el directorio de trabajo<br>- A continuación, inicia un servidor utilizando este intérprete configurado, permitiendo la interacción con la aplicación más grande a través de una interfaz de usuario<br>- El servidor facilita la comunicación entre el intérprete y los clientes externos.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/install.sh.sample'>install.sh.sample</a></b></td>
				<td>- `install.sh.sample` proporciona un script de instalación de ejemplo para el proyecto<br>- Configura el entorno modificando el PATH, navegando al directorio de la aplicación, activando un entorno virtual y, por último, instalando el proyecto en modo editable utilizando pip<br>- Esto asegura que las dependencias del proyecto se gestionen correctamente y que la aplicación esté lista para su uso.</td>
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
				<td>- El archivo `requirements.txt` especifica las dependencias del proyecto<br>- Enumera numerosos paquetes de Python, que abarcan bibliotecas de ciencia de datos (como Pandas, NumPy y Scikit-learn), frameworks web (como aiohttp), herramientas de aprendizaje automático (incluyendo Langchain y OpenAI) y otras utilidades cruciales para la funcionalidad de la aplicación y el entorno de desarrollo<br>- Estas dependencias habilitan las operaciones básicas del proyecto.</td>
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
				<td>- El archivo `docker-compose.gpu.yml` configura un entorno Docker de varios contenedores<br>- Define servicios para un escritorio gráfico, un servidor XRDP para acceso remoto y una instancia de Open Interpreter con soporte para GPU<br>- La configuración facilita el acceso remoto a una aplicación de uso intensivo de recursos que aprovecha las capacidades de la GPU, probablemente para tareas de IA o aprendizaje automático<br>- Las variables de entorno gestionan las credenciales de usuario y las claves de API.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile'>Dockerfile</a></b></td>
				<td>- El Dockerfile construye una imagen Docker, aprovechando una imagen base xRDP<br>- Ejecuta secuencialmente numerosos scripts de instalación, cada uno de los cuales instala potencialmente las dependencias del proyecto o configura el entorno de ejecución<br>- Por último, copia los archivos restantes del proyecto, ejecuta un script de instalación final, establece variables de entorno y define el punto de entrada del contenedor y la comprobación de estado<br>- La imagen resultante proporciona un entorno listo para ejecutar para la aplicación.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.yml'>docker-compose.yml</a></b></td>
				<td>- El archivo docker-compose.yml orquesta una aplicación Docker de varios contenedores<br>- Define servicios para comprobaciones de entorno y dos aplicaciones principales: un entorno de escritorio (`desktop-xrdp`) y una aplicación principal (`app-xrdp`)<br>- `app-xrdp` aprovecha los recursos del directorio raíz del proyecto, exponiendo varios puertos e incorporando comprobaciones de estado para la supervisión<br>- La configuración facilita un entorno de despliegue reproducible y aislado.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/.dockerignore.sample'>.dockerignore.sample</a></b></td>
				<td>- El archivo `.dockerignore.sample` especifica los archivos y directorios que se deben excluir al construir imágenes Docker<br>- Evita que se incluyan en la imagen final archivos innecesarios, como archivos de configuración de Docker y datos de control de versiones, lo que da como resultado imágenes Docker más pequeñas y eficientes para el proyecto<br>- Esto contribuye a un despliegue simplificado y a tiempos de compilación mejorados.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile.gpu'>Dockerfile.gpu</a></b></td>
				<td>- Dockerfile.gpu construye una imagen Docker optimizada para el uso de GPU<br>- Aprovecha una imagen base que contiene bibliotecas NVIDIA CUDA, añadiendo un entorno de escritorio<br>- Fundamentalmente, copia los componentes CUDA necesarios de la imagen base para garantizar la aceleración de la GPU dentro de la imagen final, lo que permite la ejecución de tareas dependientes de la GPU dentro del proyecto Open Interpreter más amplio<br>- El script de punto de entrada gestiona la ejecución de la imagen.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.vnc.yml'>docker-compose.vnc.yml</a></b></td>
				<td>- El archivo docker-compose.vnc.yml configura un entorno Docker de varios contenedores<br>- Define dos servicios: un escritorio VNC y un servicio de aplicación<br>- El servicio de aplicación, construido a partir de un Dockerfile separado, expone puertos para el acceso VNC y una aplicación web, aprovechando las variables de entorno para la autenticación y las claves de API<br>- El servicio de escritorio actúa como una imagen base para la aplicación, asegurando un entorno de ejecución consistente.</td>
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
						<td>- El flujo de trabajo `cla.yml` automatiza el proceso del Acuerdo de Licencia de Colaborador (CLA)<br>- Supervisa las solicitudes de extracción y los problemas, comprobando las firmas de CLA<br>- Al detectar una firma o un evento de solicitud de extracción, utiliza una acción de terceros para gestionar el estado de CLA, almacenando las firmas en un archivo especificado y, opcionalmente, en un repositorio remoto<br>- El flujo de trabajo mejora la gobernanza del proyecto al garantizar que los colaboradores reconozcan el CLA antes de fusionar el código.</td>
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
				<td>- El script prepara el proyecto para la ejecución de Docker Compose<br>- Configura las variables de entorno esenciales, crea scripts de shell de marcador de posición para varias tareas de instalación y operativas dentro del directorio raíz del proyecto, y luego inicia una compilación y un proceso de inicio de Docker Compose desde el subdirectorio docker<br>- Esto asegura un entorno de compilación consistente y reproducible.</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/script/docker_replace.sh'>docker_replace.sh</a></b></td>
				<td>- El script facilita el despliegue copiando los archivos del proyecto en un contenedor Docker llamado `app-xrdp`<br>- Determina el directorio raíz del proyecto y, a continuación, utiliza `docker cp` para transferir todos los archivos y, potencialmente, las variables de entorno y un script de comprobación de estado al directorio `/app` del contenedor, lo que permite la ejecución de la aplicación dentro del entorno Docker<br>- Esto agiliza el proceso de despliegue dentro de la estructura del proyecto más grande.</td>
			</tr>
			</table>
		</blockquote>
	</details>
</details>

---

## Empezando

### Prerrequisitos

Antes de empezar con llm_docker_setting_pub, asegúrate de que tu entorno de ejecución cumple los siguientes requisitos:

- **Lenguaje de Programación:** Error detectando primary_language: {'sample': 6, 'txt': 1, 'yml': 4, 'gpu': 1, 'desktop': 1, 'sh': 2}
- **Gestor de Paquetes:** Pip
- **Entorno de Ejecución de Contenedores:** Docker

### Instalación

Instala llm_docker_setting_pub utilizando uno de los siguientes métodos:

**Compilación desde el código fuente:**

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

Ejecuta la suite de pruebas utilizando el siguiente comando:
**Usando `pip`** &nbsp; [<img align="center" src="" />]()
❯ pytest

```sh
❯ echo 'INSERT-TEST-COMMAND-HERE'
```

---

## Hoja de Ruta del Proyecto

- [x] **`Tarea 1`**: <strike>Implementar la función uno.</strike>
- [ ] **`Tarea 2`**: Implementar la función dos.
- [ ] **`Tarea 3`**: Implementar la función tres.

---

## Contribuciones

- **💬 [Únete a las Discusiones](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/discussions)**: Comparte tus ideas, proporciona comentarios o haz preguntas.
- **🐛 [Reporta Problemas](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/issues)**: Envía los errores encontrados o registra las solicitudes de funciones para el proyecto `llm_docker_setting_pub`.
- **💡 [Envía Solicitudes de Extracción](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/blob/main/CONTRIBUTING.md)**: Revisa las PR abiertas y envía tus propias PR.

<details closed>
<summary>Guías para Contribuir</summary>

1. **Haz un Fork del Repositorio**: Empieza por hacer un fork del repositorio del proyecto a tu cuenta LOCAL.
2. **Clona Localmente**: Clona el repositorio bifurcado a tu máquina local utilizando un cliente git.
   ```sh
   git clone /home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub
   ```
3. **Crea una Nueva Rama**: Trabaja siempre en una nueva rama, dándole un nombre descriptivo.
   ```sh
   git checkout -b nueva-funcion-x
   ```
4. **Realiza tus Cambios**: Desarrolla y prueba tus cambios localmente.
5. **Realiza un Commit de tus Cambios**: Haz un commit con un mensaje claro que describa tus actualizaciones.
   ```sh
   git commit -m 'Implementada nueva función x.'
   ```
6. **Sube a LOCAL**: Sube los cambios a tu repositorio bifurcado.
   ```sh
   git push origin nueva-funcion-x
   ```
7. **Envía una Solicitud de Extracción**: Crea una PR contra el repositorio del proyecto original. Describe claramente los cambios y sus motivaciones.
8. **Revisión**: Una vez que tu PR sea revisada y aprobada, se fusionará con la rama principal. ¡Enhorabuena por tu contribución!
</details>

<details closed>
<summary>Gráfico de Colaboradores</summary>
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

- Enumera cualquier recurso, colaborador, inspiración, etc. aquí.

---
```

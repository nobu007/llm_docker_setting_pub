<p align="center">
    <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" align="center" width="30%">
</p>
<p align="center"><h1 align="center">LLM_DOCKER_SETTING_PUB</h1></p>
<p align="center">
	<em><code>LLMアプリケーションを簡単にデプロイおよび管理</code></em>
</p>
<p align="center">
	<!-- local repository, no metadata badges. --></p>
<p align="center">以下のツールとテクノロジーで構築されています:</p>
<p align="center">
	<img src="https://img.shields.io/badge/GNU%20Bash-4EAA25.svg?style=default&logo=GNU-Bash&logoColor=white" alt="GNU%20Bash">
	<img src="https://img.shields.io/badge/Docker-2496ED.svg?style=default&logo=Docker&logoColor=white" alt="Docker">
	<img src="https://img.shields.io/badge/GitHub%20Actions-2088FF.svg?style=default&logo=GitHub-Actions&logoColor=white" alt="GitHub%20Actions">
</p>
<br>

## 目次

- [目次](#table-of-contents)
- [概要](#overview)
- [特徴](#features)
- [プロジェクト構成](#project-structure)
	- [プロジェクトインデックス](#project-index)
- [はじめに](#getting-started)
	- [前提条件](#prerequisites)
	- [インストール](#installation)
	- [使い方](#usage)
	- [テスト](#testing)
- [プロジェクトロードマップ](#project-roadmap)
- [貢献](#contributing)
- [ライセンス](#license)
- [謝辞](#acknowledgments)

---

## 概要

llmdockersettingpub は、強力な大規模言語モデル (LLM) アプリケーションのデプロイと管理を簡素化します。GPUサポート、リモートアクセス、自動セットアップが事前構成されたDocker環境を提供し、異なるマシン間での一貫した開発とデプロイを保証します。LLMを扱う開発者や研究者にとって理想的であり、プロセスを効率化し、モデル開発とアプリケーション構築に集中できるようにします。

---

## 特徴

- GPUサポート付きの事前構成されたDocker環境
- リモートアクセス機能
- 一貫した開発とデプロイのための自動セットアップ

---

## プロジェクト構成

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

### プロジェクトインデックス

<details open>
	<summary><b><code>LLM_DOCKER_SETTING_PUB/</code></b></summary>
	<details> <!-- __root__ Submodule -->
		<summary><b>__root__</b></summary>
		<blockquote>
			<table>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/envsetup.sh.sample'>envsetup.sh.sample</a></b></td>
				<td>- Envsetup.sh.sample は開発環境のセットアップを自動化します<br>- Python依存関係管理ツールであるRyeをインストールし、PATH環境変数を構成し、仮想環境をアクティブにします<br>- コード品質のためにpre-commitフックがインストールされます<br>- このスクリプトは、必要なコマンドをシェルプロファイルに永続的に追加することで、マシン間での一貫した開発環境を保証します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/healthcheck.sh.sample'>healthcheck.sh.sample</a></b></td>
				<td>- ヘルスチェックスクリプトは`/app/server.py`プロセスを監視します<br>- `/app/work/all.log`にアクションを記録します<br>- Pythonサーバーが実行されていない場合、スクリプトは`pyenv`を使用して起動を試み、成功または失敗を記録します<br>- 起動に成功した場合、またはサーバーがすでに実行中の場合は、ステータスコード0で終了します。それ以外の場合は、ゼロ以外のコードで終了します<br>- これにより、アプリケーションのコアサーバープロセスがアクティブな状態を維持できます。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/entrypoint.sh.sample'>entrypoint.sh.sample</a></b></td>
				<td>- Entrypoint.shは、アプリケーションの作業ディレクトリを構成し、所有権を設定し、ログファイルが存在することを確認します<br>- 次に、ログファイルの内容を継続的に監視および表示し、より広範なプロジェクト内でのアプリケーションのアクティビティを監視するためのリアルタイム出力を提供します<br>- これにより、実行時の観察とデバッグが容易になります。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/server.py.sample'>server.py.sample</a></b></td>
				<td>- Server.py.sample は、LLMモデル、トークン制限、詳細度、および作業ディレクトリを定義するシステムメッセージなどのパラメーターを指定して、OpenInterpreterインスタンスを初期化および構成します<br>- 次に、この構成されたインタープリターを使用してサーバーを起動し、ユーザーインターフェイスを介してより大きなアプリケーションとの対話を可能にします<br>- サーバーは、インタープリターと外部クライアント間の通信を促進します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/install.sh.sample'>install.sh.sample</a></b></td>
				<td>- `install.sh.sample` は、プロジェクトのサンプルインストールスクリプトを提供します<br>- PATHを変更し、アプリケーションディレクトリに移動し、仮想環境をアクティブにして、最後にpipを使用してプロジェクトを編集可能モードでインストールすることにより、環境をセットアップします<br>- これにより、プロジェクトの依存関係が正しく管理され、アプリケーションを使用できる状態になります。</td>
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
				<td>- `requirements.txt`ファイルは、プロジェクトの依存関係を指定します<br>- 多数のPythonパッケージをリストしており、データサイエンスライブラリ（Pandas、NumPy、Scikit-learnなど）、Webフレームワーク（aiohttpなど）、機械学習ツール（LangchainやOpenAIを含む）、およびアプリケーションの機能と開発環境に不可欠なその他のユーティリティが含まれます<br>- これらの依存関係により、プロジェクトのコア操作が可能になります。</td>
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
				<td>- `docker-compose.gpu.yml`ファイルは、マルチコンテナDocker環境を構成します<br>- グラフィカルデスクトップ、リモートアクセス用のXRDPサーバー、およびGPU対応のOpen Interpreterインスタンスのサービスを定義します<br>- この構成により、GPU機能を利用するリソースを大量に消費するアプリケーションへのリモートアクセスが容易になります。これは、AIまたは機械学習タスクで利用される可能性があります<br>- 環境変数は、ユーザー資格情報とAPIキーを管理します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile'>Dockerfile</a></b></td>
				<td>- Dockerfileは、ベースのxRDPイメージを利用してDockerイメージを構築します<br>- 多数のインストールスクリプトを順番に実行します。各スクリプトは、プロジェクトの依存関係をインストールするか、ランタイム環境を構成する可能性があります<br>- 最後に、残りのプロジェクトファイルをコピーし、最後のインストールスクリプトを実行し、環境変数を設定し、コンテナのエントリーポイントとヘルスチェックを定義します<br>- 結果として得られるイメージは、アプリケーションのすぐに実行できる環境を提供します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.yml'>docker-compose.yml</a></b></td>
				<td>- docker-compose.ymlファイルは、マルチコンテナDockerアプリケーションを調整します<br>- 環境チェックと2つの主要なアプリケーション（デスクトップ環境（`desktop-xrdp`）とメインアプリケーション（`app-xrdp`））のサービスを定義します<br>- `app-xrdp`は、プロジェクトのルートディレクトリのリソースを利用し、いくつかのポートを公開し、監視用のヘルスチェックを組み込んでいます<br>- この構成により、再現可能で隔離されたデプロイ環境が容易になります。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/.dockerignore.sample'>.dockerignore.sample</a></b></td>
				<td>- `.dockerignore.sample`ファイルは、Dockerイメージの構築時に除外するファイルとディレクトリを指定します<br>- Docker構成ファイルやバージョン管理データなどの不要なファイルが最終イメージに含まれないようにすることで、プロジェクトのDockerイメージをより小さく、より効率的にします<br>- これにより、デプロイが合理化され、ビルド時間が短縮されます。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile.gpu'>Dockerfile.gpu</a></b></td>
				<td>- Dockerfile.gpuは、GPUの使用に最適化されたDockerイメージを構築します<br>- NVIDIA CUDAライブラリを含むベースイメージを利用して、デスクトップ環境を追加します<br>- 重要なのは、ベースイメージから必要なCUDAコンポーネントをコピーして、最終イメージ内のGPUアクセラレーションを確保し、より広範なOpen Interpreterプロジェクト内でGPUに依存するタスクの実行を可能にすることです<br>- エントリーポイントスクリプトは、イメージの実行を管理します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.vnc.yml'>docker-compose.vnc.yml</a></b></td>
				<td>- docker-compose.vnc.ymlファイルは、マルチコンテナDocker環境を構成します<br>- VNCデスクトップとアプリケーションサービスの2つのサービスを定義します<br>- 別のDockerfileから構築されたアプリケーションサービスは、VNCアクセスとWebアプリケーション用のポートを公開し、認証とAPIキーに環境変数を利用します<br>- デスクトップサービスは、アプリケーションのベースイメージとして機能し、一貫したランタイム環境を保証します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile.desktop'>Dockerfile.desktop</a></b></td>
				<td>- Dockerfile.desktopは、デスクトップ開発環境を構成します<br>- ベースイメージを設定し、VS Code、Google Chrome、Python 3.11などの必須の開発ツールをインストールし、sudo権限を持つユーザーアカウントを構成します<br>- スクリプトは、日本語のサポートのために環境をカスタマイズします<br>- このDockerfileにより、異なるシステム間で一貫性があり、再現可能な開発環境が容易になります。</td>
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
				<td>- `cla.yml`ワークフローは、貢献者ライセンス契約（CLA）プロセスを自動化します<br>- プルリクエストとイシューを監視し、CLA署名を確認します<br>- 署名またはプルリクエストイベントを検出すると、サードパーティのアクションを使用してCLAステータスを管理し、指定されたファイルまたは必要に応じてリモートリポジトリに署名を保存します<br>- ワークフローは、貢献者がコードをマージする前にCLAを承認することを保証することにより、プロジェクトのガバナンスを強化します。</td>
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
				<td>- スクリプトは、Docker Composeの実行のためにプロジェクトを準備します<br>- 必要な環境変数を設定し、プロジェクトのルートディレクトリ内のさまざまなインストールおよび運用タスクのプレースホルダーシェルスクリプトを作成し、dockerサブディレクトリからDocker Composeのビルドおよび起動プロセスを開始します<br>- これにより、一貫性があり再現可能なビルド環境が保証されます。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/script/docker_replace.sh'>docker_replace.sh</a></b></td>
				<td>- スクリプトは、プロジェクトファイルを`app-xrdp`という名前のDockerコンテナにコピーすることにより、デプロイを容易にします<br>- プロジェクトのルートディレクトリを決定し、次に`docker cp`を使用して、すべてのファイル、および潜在的な環境変数とヘルスチェックスクリプトをコンテナの`/app`ディレクトリに転送し、Docker環境内でのアプリケーションの実行を可能にします<br>- これにより、より大きなプロジェクト構造内でのデプロイプロセスが効率化されます。</td>
			</tr>
			</table>
		</blockquote>
	</details>
</details>

---

## はじめに

llm_docker_setting_pubを始める前に、ランタイム環境が次の要件を満たしていることを確認してください。

- **プログラミング言語:** Error detecting primary_language: {'sample': 6, 'txt': 1, 'yml': 4, 'gpu': 1, 'desktop': 1, 'sh': 2}
- **パッケージマネージャー:** Pip
- **コンテナランタイム:** Docker

### インストール

次のいずれかの方法でllm_docker_setting_pubをインストールします。

**ソースからビルド:**

1. llm_docker_setting_pubリポジトリをクローンします。

```sh
❯ git clone ../llm_docker_setting_pub
```

2. プロジェクトディレクトリに移動します。

```sh
❯ cd llm_docker_setting_pub
```

3. プロジェクトの依存関係をインストールします。

**`pip`を使用** &nbsp; [<img align="center" src="" />]()
❯ pip install -r config/requirements.txt

```sh
❯ echo 'INSERT-INSTALL-COMMAND-HERE'
```

**`docker`を使用** &nbsp; [<img align="center" src="https://img.shields.io/badge/Docker-2CA5E0.svg?style={badge_style}&logo=docker&logoColor=white" />](https://www.docker.com/)

```sh
❯ docker build -t codeinterpreter_api_agent/llm_docker_setting_pub .
```

### 使い方

次のコマンドを使用してllm_docker_setting_pubを実行します。
**`pip`を使用** &nbsp; [<img align="center" src="" />]()
❯ python server.py.sample

```sh
❯ echo 'INSERT-RUN-COMMAND-HERE'
```

**`docker`を使用** &nbsp; [<img align="center" src="https://img.shields.io/badge/Docker-2CA5E0.svg?style={badge_style}&logo=docker&logoColor=white" />](https://www.docker.com/)

```sh
❯ docker run -it {image_name}
```

### テスト

次のコマンドを使用してテストスイートを実行します。
**`pip`を使用** &nbsp; [<img align="center" src="" />]()
❯ pytest

```sh
❯ echo 'INSERT-TEST-COMMAND-HERE'
```

---

## プロジェクトロードマップ

- [x] **`Task 1`**: <strike>機能1を実装します。</strike>
- [ ] **`Task 2`**: 機能2を実装します。
- [ ] **`Task 3`**: 機能3を実装します。

---

## 貢献

- **💬 [ディスカッションに参加](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/discussions)**: 洞察を共有したり、フィードバックを提供したり、質問をしたりします。
- **🐛 [問題を報告](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/issues)**: 見つかったバグを送信するか、`llm_docker_setting_pub`プロジェクトの機能リクエストを記録します。
- **💡 [プルリクエストを送信](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/blob/main/CONTRIBUTING.md)**: オープンなPRを確認し、独自のPRを送信します。

<details closed>
<summary>貢献のガイドライン</summary>

1. **リポジトリをフォーク**: プロジェクトリポジトリをLOCALアカウントにフォークすることから始めます。
2. **ローカルにクローン**: gitクライアントを使用して、フォークされたリポジトリをローカルマシンにクローンします。
   ```sh
   git clone /home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub
   ```
3. **新しいブランチを作成**: 常に新しいブランチで作業し、わかりやすい名前を付けます。
   ```sh
   git checkout -b new-feature-x
   ```
4. **変更を加える**: 変更をローカルで開発およびテストします。
5. **変更をコミット**: 更新を説明する明確なメッセージとともにコミットします。
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **LOCALにプッシュ**: 変更をフォークされたリポジトリにプッシュします。
   ```sh
   git push origin new-feature-x
   ```
7. **プルリクエストを送信**: 元のプロジェクトリポジトリに対してPRを作成します。変更とその動機を明確に説明します。
8. **レビュー**: PRがレビューおよび承認されると、メインブランチにマージされます。貢献おめでとうございます！
</details>

<details closed>
<summary>貢献者グラフ</summary>
<br>
<p align="left">
   <a href="https://LOCAL{/codeinterpreter_api_agent/llm_docker_setting_pub/}graphs/contributors">
      <img src="https://contrib.rocks/image?repo=codeinterpreter_api_agent/llm_docker_setting_pub">
   </a>
</p>
</details>

---

## ライセンス

このプロジェクトは、[SELECT-A-LICENSE](https://choosealicense.com/licenses)ライセンスの下で保護されています。詳細については、[LICENSE](https://choosealicense.com/licenses/)ファイルを参照してください。

---

## 謝辞

- ここにリソース、貢献者、インスピレーションなどをリストします。

---

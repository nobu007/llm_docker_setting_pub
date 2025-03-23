<p align="center">
    <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" align="center" width="30%">
</p>
<p align="center"><h1 align="center">LLM_DOCKER_SETTING_PUB</h1></p>
<p align="center">
	<em><code>LLMアプリケーションのデプロイと管理を簡単に</code></em>
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

llmdockersettingpub は、強力な大規模言語モデル（LLM）アプリケーションのデプロイと管理を簡素化します。GPUサポート、リモートアクセス、および自動セットアップを備えた事前構成済みの Docker 環境を提供し、異なるマシン間での一貫した開発とデプロイを保証します。LLM を使用する開発者や研究者にとって理想的であり、プロセスを効率化し、モデル開発とアプリケーション構築に集中できるようにします。

---

## 特徴

- GPUサポートを備えた事前構成済みの Docker 環境
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
				<td>- Envsetup.sh.sample は、開発環境のセットアップを自動化します。<br>- Python 依存関係管理ツールである Rye をインストールし、PATH 環境変数を構成し、仮想環境をアクティブにします。<br>- コード品質のために pre-commit フックがインストールされています。<br>- このスクリプトは、必要なコマンドをシェルプロファイルに永続的に追加することにより、マシン間での一貫した開発環境を保証します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/healthcheck.sh.sample'>healthcheck.sh.sample</a></b></td>
				<td>- healthcheck スクリプトは、`/app/server.py` プロセスを監視します。<br>- アクションを `/app/work/all.log` に記録します。<br>- Python サーバーが実行されていない場合、スクリプトは `pyenv` を使用して起動を試み、成功または失敗を記録します。<br>- 起動に成功した場合、またはサーバーが既に実行されている場合は、ステータスコード 0 で終了します。それ以外の場合は、0 以外のコードで終了します。<br>- これにより、アプリケーションのコアサーバープロセスがアクティブな状態に保たれます。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/entrypoint.sh.sample'>entrypoint.sh.sample</a></b></td>
				<td>- Entrypoint.sh は、アプリケーションの作業ディレクトリを構成し、所有権を設定し、ログファイルが存在することを確認します。<br>- 次に、ログファイルの内容を継続的に監視および表示し、プロジェクト全体でのアプリケーションのアクティビティを監視するためのリアルタイム出力を提供します。<br>- これにより、ランタイムの観察とデバッグが容易になります。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/server.py.sample'>server.py.sample</a></b></td>
				<td>- Server.py.sample は、OpenInterpreter インスタンスを初期化および構成し、LLM モデル、トークン制限、詳細度、および作業ディレクトリを定義するシステムメッセージなどのパラメーターを指定します。<br>- 次に、この構成されたインタープリターを使用してサーバーを起動し、ユーザーインターフェイスを介して大規模なアプリケーションとの対話を可能にします。<br>- サーバーは、インタープリターと外部クライアント間の通信を容易にします。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/install.sh.sample'>install.sh.sample</a></b></td>
				<td>- `install.sh.sample` は、プロジェクトのサンプルインストールスクリプトを提供します。<br>- PATH を変更し、アプリケーションディレクトリに移動し、仮想環境をアクティブにして、pip を使用して編集可能なモードでプロジェクトをインストールすることにより、環境をセットアップします。<br>- これにより、プロジェクトの依存関係が正しく管理され、アプリケーションを使用する準備が整います。</td>
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
				<td>- `requirements.txt` ファイルは、プロジェクトの依存関係を指定します。<br>- データサイエンスライブラリ（Pandas、NumPy、Scikit-learn など）、Web フレームワーク（aiohttp など）、機械学習ツール（Langchain や OpenAI を含む）、およびアプリケーションの機能と開発環境に不可欠なその他のユーティリティを含む、多数の Python パッケージをリストします。<br>- これらの依存関係により、プロジェクトのコア操作が可能になります。</td>
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
				<td>- `docker-compose.gpu.yml` ファイルは、マルチコンテナ Docker 環境を構成します。<br>- グラフィカルデスクトップ、リモートアクセス用の XRDP サーバー、および GPU 対応の Open Interpreter インスタンスのサービスを定義します。<br>- この構成により、GPU 機能を利用するリソースを大量に消費するアプリケーションへのリモートアクセスが容易になります。これは、AI または機械学習タスクに最適です。<br>- 環境変数は、ユーザー資格情報と API キーを管理します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile'>Dockerfile</a></b></td>
				<td>- Dockerfile は、ベースの xRDP イメージを利用して Docker イメージを構築します。<br>- 多数のインストールスクリプトを順番に実行します。各スクリプトは、プロジェクトの依存関係をインストールするか、ランタイム環境を構成する可能性があります。<br>- 最後に、残りのプロジェクトファイルをコピーし、最後のインストールスクリプトを実行し、環境変数を設定し、コンテナのエントリポイントとヘルスチェックを定義します。<br>- 結果のイメージは、アプリケーションのすぐに実行できる環境を提供します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.yml'>docker-compose.yml</a></b></td>
				<td>- docker-compose.yml ファイルは、マルチコンテナ Docker アプリケーションを調整します。<br>- 環境チェック用のサービスと、2 つの主要なアプリケーション（デスクトップ環境（`desktop-xrdp`）とメインアプリケーション（`app-xrdp`））を定義します。<br>- `app-xrdp` は、プロジェクトのルートディレクトリのリソースを利用し、いくつかのポートを公開し、監視用のヘルスチェックを組み込みます。<br>- この構成により、再現可能で分離されたデプロイ環境が容易になります。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/.dockerignore.sample'>.dockerignore.sample</a></b></td>
				<td>- `.dockerignore.sample` ファイルは、Docker イメージの構築時に除外するファイルとディレクトリを指定します。<br>- Docker 構成ファイルやバージョン管理データなど、不要なファイルが最終イメージに含まれないようにすることで、プロジェクトのより小さく、より効率的な Docker イメージが実現します。<br>- これにより、デプロイメントが合理化され、ビルド時間が短縮されます。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile.gpu'>Dockerfile.gpu</a></b></td>
				<td>- Dockerfile.gpu は、GPU 使用向けに最適化された Docker イメージを構築します。<br>- NVIDIA CUDA ライブラリを含むベースイメージを利用し、デスクトップ環境を追加します。<br>- 重要なことに、ベースイメージから必要な CUDA コンポーネントをコピーして、最終イメージ内で GPU アクセラレーションを確保し、より広範な Open Interpreter プロジェクト内で GPU に依存するタスクの実行を可能にします。<br>- エントリポイントスクリプトは、イメージの実行を管理します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/docker-compose.vnc.yml'>docker-compose.vnc.yml</a></b></td>
				<td>- docker-compose.vnc.yml ファイルは、マルチコンテナ Docker 環境を構成します。<br>- VNC デスクトップとアプリケーションサービスの 2 つのサービスを定義します。<br>- 別の Dockerfile から構築されたアプリケーションサービスは、VNC アクセスと Web アプリケーションのポートを公開し、認証と API キーに環境変数を利用します。<br>- デスクトップサービスは、アプリケーションのベースイメージとして機能し、一貫したランタイム環境を保証します。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/docker/Dockerfile.desktop'>Dockerfile.desktop</a></b></td>
				<td>- Dockerfile.desktop は、デスクトップ開発環境を構成します。<br>- ベースイメージをセットアップし、VS Code、Google Chrome、Python 3.11 などの重要な開発ツールをインストールし、sudo 権限を持つユーザーアカウントを構成します。<br>- このスクリプトは、日本語のサポートのために環境をカスタマイズします。<br>- この Dockerfile は、異なるシステム間での一貫性のある再現可能な開発環境を容易にします。</td>
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
						<td>- `cla.yml` ワークフローは、コントリビューターライセンス契約（CLA）プロセスを自動化します。<br>- プルリクエストとイシューを監視し、CLA 署名を確認します。<br>- 署名またはプルリクエストイベントを検出すると、サードパーティのアクションを使用して CLA ステータスを管理し、指定されたファイルおよびオプションでリモートリポジトリに署名を保存します。<br>- このワークフローは、コントリビューターがコードをマージする前に CLA を承認することを保証することにより、プロジェクトのガバナンスを強化します。</td>
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
				<td>- このスクリプトは、Docker Compose の実行のためにプロジェクトを準備します。<br>- 重要な環境変数をセットアップし、プロジェクトのルートディレクトリ内のさまざまなインストールおよび運用タスク用のプレースホルダーシェルスクリプトを作成し、docker サブディレクトリから Docker Compose のビルドおよび起動プロセスを開始します。<br>- これにより、一貫性のある再現可能なビルド環境が保証されます。</td>
			</tr>
			<tr>
				<td><b><a href='/home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub/blob/master/script/docker_replace.sh'>docker_replace.sh</a></b></td>
				<td>- このスクリプトは、プロジェクトファイルを `app-xrdp` という名前の Docker コンテナにコピーすることにより、デプロイメントを容易にします。<br>- プロジェクトのルートディレクトリを決定し、次に `docker cp` を使用してすべてのファイルと、環境変数およびヘルスチェックスクリプトをコンテナの `/app` ディレクトリに転送し、Docker 環境内でのアプリケーションの実行を可能にします。<br>- これにより、大規模なプロジェクト構造内でのデプロイメントプロセスが効率化されます。</td>
			</tr>
			</table>
		</blockquote>
	</details>
</details>

---

## はじめに

llm_docker_setting_pub を開始する前に、ランタイム環境が次の要件を満たしていることを確認してください。

- **プログラミング言語:** エラー検出 primary_language: {'sample': 6, 'txt': 1, 'yml': 4, 'gpu': 1, 'desktop': 1, 'sh': 2}
- **パッケージマネージャー:** Pip
- **コンテナランタイム:** Docker

### インストール

次のいずれかの方法を使用して llm_docker_setting_pub をインストールします。

**ソースからビルド:**

1. llm_docker_setting_pub リポジトリをクローンします。

```sh
❯ git clone ../llm_docker_setting_pub
```

2. プロジェクトディレクトリに移動します。

```sh
❯ cd llm_docker_setting_pub
```

3. プロジェクトの依存関係をインストールします。

**`pip` を使用** &nbsp; [<img align="center" src="" />]()
❯ pip install -r config/requirements.txt

```sh
❯ echo 'INSERT-INSTALL-COMMAND-HERE'
```

**`docker` を使用** &nbsp; [<img align="center" src="https://img.shields.io/badge/Docker-2CA5E0.svg?style={badge_style}&logo=docker&logoColor=white" />](https://www.docker.com/)

```sh
❯ docker build -t codeinterpreter_api_agent/llm_docker_setting_pub .
```

### 使い方

次のコマンドを使用して llm_docker_setting_pub を実行します。
**`pip` を使用** &nbsp; [<img align="center" src="" />]()
❯ python server.py.sample

```sh
❯ echo 'INSERT-RUN-COMMAND-HERE'
```

**`docker` を使用** &nbsp; [<img align="center" src="https://img.shields.io/badge/Docker-2CA5E0.svg?style={badge_style}&logo=docker&logoColor=white" />](https://www.docker.com/)

```sh
❯ docker run -it {image_name}
```

### テスト

次のコマンドを使用してテストスイートを実行します。
**`pip` を使用** &nbsp; [<img align="center" src="" />]()
❯ pytest

```sh
❯ echo 'INSERT-TEST-COMMAND-HERE'
```

---

## プロジェクトロードマップ

- [x] **`Task 1`**: <strike>機能 1 を実装します。</strike>
- [ ] **`Task 2`**: 機能 2 を実装します。
- [ ] **`Task 3`**: 機能 3 を実装します。

---

## 貢献

- **💬 [ディスカッションに参加](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/discussions)**: 洞察を共有したり、フィードバックを提供したり、質問をしたりします。
- **🐛 [問題を報告](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/issues)**: 見つかったバグを送信するか、`llm_docker_setting_pub` プロジェクトの機能リクエストをログに記録します。
- **💡 [プルリクエストを送信](https://LOCAL/codeinterpreter_api_agent/llm_docker_setting_pub/blob/main/CONTRIBUTING.md)**: オープンな PR を確認し、独自の PR を送信します。

<details closed>
<summary>貢献のガイドライン</summary>

1. **リポジトリをフォーク**: プロジェクトリポジトリを LOCAL アカウントにフォークすることから始めます。
2. **ローカルにクローン**: Git クライアントを使用して、フォークされたリポジトリをローカルマシンにクローンします。
   ```sh
   git clone /home/jinno/git/drill/gamebook/codeinterpreter_api_agent/llm_docker_setting_pub
   ```
3. **新しいブランチを作成**: 常に新しいブランチで作業し、わかりやすい名前を付けます。
   ```sh
   git checkout -b new-feature-x
   ```
4. **変更を加える**: ローカルで変更を開発およびテストします。
5. **変更をコミット**: 更新内容を説明する明確なメッセージとともにコミットします。
   ```sh
   git commit -m '新しい機能 x を実装しました。'
   ```
6. **LOCAL にプッシュ**: 変更をフォークされたリポジトリにプッシュします。
   ```sh
   git push origin new-feature-x
   ```
7. **プルリクエストを送信**: 元のプロジェクトリポジトリに対して PR を作成します。変更とその動機を明確に説明します。
8. **レビュー**: PR がレビューされ、承認されると、メインブランチにマージされます。貢献していただきありがとうございます。
</details>

<details closed>
<summary>コントリビューターグラフ</summary>
<br>
<p align="left">
   <a href="https://LOCAL{/codeinterpreter_api_agent/llm_docker_setting_pub/}graphs/contributors">
      <img src="https://contrib.rocks/image?repo=codeinterpreter_api_agent/llm_docker_setting_pub">
   </a>
</p>
</details>

---

## ライセンス

このプロジェクトは、[SELECT-A-LICENSE](https://choosealicense.com/licenses) ライセンスの下で保護されています。詳細については、[LICENSE](https://choosealicense.com/licenses/) ファイルを参照してください。

---

## 謝辞

- リソース、貢献者、インスピレーションなどをここにリストしてください。

---

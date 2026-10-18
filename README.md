# Launcher

A lightweight, customizable web-based bookmark launcher and container dashboard script environment.

## 📂 Project Structure

* **`index.html`** - The primary frontend interface displaying your launcher dashboard and bookmarks.
* **`bookmarks.json`** - Configuration file storing your bookmarks, categories, and dashboard layouts.
* **`hammer.svg`** - Custom icon/vector graphic asset used within the interface.
* **`launcher-pod.sh`** - Container management script (e.g., Podman or Docker configuration) to spin up or orchestrate the environment.
* **`launcher-bash-alias.sh`** - Helper script providing convenient terminal aliases to quickly start, stop, or interact with the launcher.

---

## 🚀 Getting Started

### 1. Local Preview (No Installation Required)
To run the dashboard frontend locally on your computer, navigate to the project directory and start a simple local server:

```bash
# Using Python
python3 -m http.server 8000
```
Then, open your web browser and navigate to `http://localhost:8000`.

### 2. Running with Container Scripts
If you are deploying the backend orchestration layer:
1. Ensure your execution permissions are set:
   ```bash
   chmod +x launcher-pod.sh launcher-bash-alias.sh
   ```
2. Source the bash aliases to access terminal shortcuts:
   ```bash
   source launcher-bash-alias.sh
   ```
3. Initialize the application wrapper using the container script.

---

## ⚙️ Configuration

To add, remove, or modify your dashboard links, open and edit the `bookmarks.json` file in a text editor:

```json
[
  {
    "category": "Development",
    "links": [
      { "name": "GitHub", "url": "https://github.com" }
    ]
  }
]
```


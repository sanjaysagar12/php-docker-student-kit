### 📦 PHP Development Environment with MySQL & Adminer

This project sets up a complete PHP development environment using Docker. It includes:

* PHP 8.3 with Apache
* MySQL 8.3
* Adminer (database GUI)
* Automatic directory listing (no 403 errors)
* Hot-reloading from your local `src/` folder

---

## 🏁 Getting Started

### 🔧 Requirements

* [Docker](https://www.docker.com/products/docker-desktop/)
* [Docker Compose](https://docs.docker.com/compose/)

---

## 🚀 How to Run

### 1. Clone or download this repo

```bash
git clone https://github.com/sanjaysagar12/php-docker-student-kit.git
cd php-docker-student-kit/
```

### 2. Add your PHP files

Put your PHP files inside the `src/` folder:

```bash
mkdir -p src
echo "<?php phpinfo(); ?>" > src/index.php
```

### 3. Start the containers

```bash
docker compose up -d --build
```

---

## 🌐 Access the Services

| Service  | URL                                            | Notes                           |
| -------- | ---------------------------------------------- | ------------------------------- |
| PHP Site | [http://localhost:8080](http://localhost:8080) | Serves files from `src/` folder |
| Adminer  | [http://localhost:8081](http://localhost:8081) | DB GUI for MySQL                |

---

## 🛠️ MySQL Database Details

| Key           | Value         |
| ------------- | ------------- |
| Host          | `db`          |
| Port          | `3306`        |
| Database Name | `studentdb`   |
| Username      | `student`     |
| Password      | `studentpass` |
| Root Password | `rootpass`    |

You can use these credentials to connect from PHP or Adminer.

---

## 💡 Tips for Students

* No need to install PHP/MySQL locally.
* Just edit files in `src/` and refresh your browser.
* Want to test `.htaccess` or `pdo_mysql`? It’s already configured.
* If you remove `index.php`, Apache will show the file list (no 403).

---

## 🧹 Stop Everything

To shut everything down:

```bash
docker compose down
```

To rebuild from scratch:

```bash
docker compose down -v
docker compose up --build
```

---

## 📁 Project Structure

```
├── Dockerfile
├── docker-compose.yml
├── README.md
└── src/
    └── index.php
```



# WIP


### MariaDB

Installation
```bash
brew install mariadb
```

Start MariaDB
```bash
brew services start mariadb
```

Change root password
```bash
mysql
```
```sql
FLUSH PRIVILEGES;
```
```sql
ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';
```
Restart MariaDB
```bash
brew services restart mariadb
```
Try to log in as a root
```bash
mysql -u root -p
```


Install oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Set ZSH as default shell
```bash
chsh -s /usr/local/bin/zsh
```

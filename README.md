Bu proje, vagrant shell provisioner özelliğini modüler bir şekilde kullanmanıza olanak sağlar. Böylelikle kurulum scriptlerini projeden ayırarak karmaşadan uzak durmuş olursunuz. 

Precise64 kutusu ile test edilmiştir. Benim diğer projeme, https://github.com/omerucel/vagrant-web-server adresinden göz atarak kullanımına ilişkin bilgi edinebilirsiniz.

# Usage

```bash
$ cd Projects
$ git clone https://github.com/omerucel/vagrant-shell-modules.git
$ git clone https://github.com/omerucel/vagrant-web-server.git
$ cd vagrant-web-server/vagrant
$ vagrant up
```

# Modüller

Aşağıdaki isimlerle ilgili modülleri bootstap.sh dosyasında kullanabilirsiniz. Dikkat ettiyseniz gözünüze çarpmıştır, modül isimleri ile klasör isimleri aynı.

* base
* mysql
* apache2
* memcached
* mongodb
* redis
* php5
* php5-curl
* php5-gd
* php5-mcrypt
* php5-memcached
* php5-mongo
* php5-redis
* php5-xdebug
* php5-mysql

# Modül Ayarları

## Apache2

### APACHE_VHOST_FILE

Apache virtual host dosyası yolunu belirtir. Tanımlanacak yol vagrant kutusuna göre tanımlanmalıdır. Zorunlu değildir. Bootstrap.sh dosyasında tanımlanmaması halinde, apache2/files/vhost.conf dosyası kullanılır. bootstrap.sh dosyasında şu şekilde tanımlayabilirsiniz:

```bash
export APACHE_VHOST_FILE = /vagrant/vagrant/files/vhost.conf
```

## MySQL

Kullanıcı adı: root
Parola:

Uzaktan bağlantı kabul edecek şekilde çalışmaya başlar. Böylelikle herhangi bir istemci ile bağlanabilirsiniz.

### MYSQL_CONF_FILE

MySQL için ayar dosyası yolunu belirtir. Ayar dosyası içerisindeki bilgiler öntanımlı ezer. Zorunlu değildir. Bootstrap dosyasında tanımlanmaması halinde, mysql/files/my.cnf dosyası kullanılır. bootstrap.sh dosyasında şu şekilde tanımlayabilirsiniz:

```bash
export MYSQL_CONF_FILE = /vagrant/vagrant/files/my.cnf
```

## php5-xdebug

PHPStorm vb. gelişmiş bir ide kullanıyorsanız, uzaktan kodlarınızı debug edebilirsiniz. Yapmanız gereken tek şey kullandığınız IDE nin debug listener özelliğini çalıştırmak. xdebug.ini ayar dosyası herhangi bir ayara gerek kalmadan çalışacak şekilde ayarlandı.

### XDEBUG_INI_FILE

XDebug için ayar dosyası yolunu belirtir. Zorunlu değildir. Bootstrap.sh dosyasında tanımlanmaması halinde, php5-xdebug/files/xdebug.ini dosyası kullanılır. bootstrap.sh dosyasında şu şekilde tanımlanabilir:

```bash
export XDEBUG_INI_FILE = /vagrant/vagrant/files/xdebug.ini
```

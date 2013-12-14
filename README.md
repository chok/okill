okill
=====

Over Kill

Installation
------------

```bash
# as root
root@mad:~$ curl https://raw.github.com/chok/okill/master/okill.sh -O /usr/bin/okill && chmod 755 /usr/bin/okill
# Or
man@mad:~$ sudo curl https://raw.github.com/chok/okill/master/okill.sh -O /usr/bin/okill && chmod 755 /usr/bin/okill
```


Usage
-----

List all processes containing a word :

```bash
man@mad:~$ okill gnome
root      2200  0.0  0.0 286160  2540 ?        Sl   10:19   0:00 /usr/lib/gdm/gdm-simple-slave --display-id /org/gnome/DisplayManager/Displays/_0
chok      4146  0.0  0.0 514764  3228 ?        Sl   10:19   0:00 /usr/bin/gnome-keyring-daemon --daemonize --login
chok      4301  0.0  0.2 908488 12428 ?        Ssl  10:19   0:01 /usr/lib/gnome-settings-daemon/gnome-settings-daemon
chok      4312  0.0  0.0 124928  2412 ?        Sl   10:19   0:00 /usr/lib/at-spi2-core/at-spi2-registryd --use-gnome-session
chok      4339  0.0  0.0 683348  4812 ?        Ssl  10:19   0:00 gnome-session --session=gnome
chok      4456  1.7  5.4 1977480 326484 ?      Sl   10:19   5:30 /usr/bin/gnome-shell
chok      4533  0.0  0.0 419068  4092 ?        Sl   10:19   0:00 /usr/lib/gnome-shell/gnome-shell-calendar-server
chok      4900  0.0  0.3 647320 19724 ?        Sl   10:19   0:00 /usr/lib/gnome-online-accounts/goa-daemon
8 processus

```

Kill them all :

```bash
man@mad:~$ okill gnome k

# Huuuum.... 
```






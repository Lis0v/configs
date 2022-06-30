# README

## Basic password protection

Password protection, for proper working, requires:
<ul>
  <li>This block of code included in httpd.conf:
    
```
    <Directory /path/to/protected/directory/>
      AllowOverride all
      Require all denied
    </Directory>
```

> /path/to/protected/directory/

Line above must be replaced with path to directory you want to protect by password.

Also, auth_basic_module must be uncommented:

```
LoadModule auth_basic_module modules/mod_auth_basic.so
```

  <li>.htpasswd created with htpasswd tool provided by Apache in bin folder. Password creation command:
  
  ```
  htpasswd -c /path/to/protected/directory/.htpasswd Username
  ```
  Then type in password (twice). Encrypted password will be located in .htpasswd file.
  
  <li>.htaccess file placed in to-be protected directory with this block of code included:
  
  ```
  #Protect Directory
  AuthName "Password Required"
  AuthType Basic
  AuthUserFile /path/to/.htpasswd
  Require valid-user
  ```
  </ul>
  
  I think, that is it for password.

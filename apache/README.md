# README

## Basic password protection

For proper working, password protection requires:
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
  
## Fancy Indexing
  
For fancy indexing to work:
<ul>
  <li>autoindex module must be uncommented:

  ```
  LoadModule autoindex_module modules/mod_autoindex.so
  ```
  <li>line below must be included in .htaccess file:
  
  ```
  IndexOptions FancyIndexing
  ```  
</ul>

## Styling

For styling, provide header.html and footer.html files in index directory and include them in .htaccess like so:
  
  ```
  HeaderName header.html
  ReadmeName footer.html
  ```
Then call style.css from header.
  
  
Footer.html won't work unless you have these blocks of code in httpd.conf:
<ul>
<li>For public/unprotected directory:

```
<Directory /path/to/public/dir>
  AllowOverride all
  Require all granted
</Directory>
```
</li>
<li>For private/protected directory:

```
<Directory /path/to/private/dir/>
  AllowOverride all
  Require all denied
</Directory>
```
</li>
</ul>

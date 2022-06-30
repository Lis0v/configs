# README

## Basic password protection

Password protection, for proper working, requires:
<ul>
  <li>This block of code included in httpd.conf:
    ```
   <Directory ${SRVROOT}/htdocs/private>
     AllowOverride all
     Require all denied
   </Directory>
    ```
  </li>
  </ul>

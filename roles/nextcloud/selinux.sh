semanage fcontext -a -t httpd_sys_rw_content_t '/opt/nextcloud/data(/.*)?'
semanage fcontext -a -t httpd_sys_rw_content_t '/opt/nextcloud/config(/.*)?'
semanage fcontext -a -t httpd_sys_rw_content_t '/opt/nextcloud/apps(/.*)?'
semanage fcontext -a -t httpd_sys_rw_content_t '/opt/nextcloud/.htaccess'
semanage fcontext -a -t httpd_sys_rw_content_t '/opt/nextcloud/.user.ini'
restorecon -Rv '/opt/nextcloud/' 
setsebool -P httpd_can_network_connect_db 1
semanage port -m -t http_port_t -p tcp 6379

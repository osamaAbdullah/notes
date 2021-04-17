Set-Alias edit notepad.exe
Set-Alias sub 'C:\Program Files\Sublime Text 3\sublime_text.exe'
Set-Alias mysql 'C:\Users\osama\apps\mysql\bin\mysql.exe'


function gs { git status }
function gsh { git push }
function gll { git pull }
function gac($a) { git add .; git commit -m "$a" }
function gcp($a) { git commit -m "$a"; git push }
function gacp($a) { git add .; git commit -m "$a"; git push }

function postgres { psql -h localhost -p 5432 -U postgres postgres }

function pa($a, $b, $c) { php artisan $a $b $c }


function ni($a, $b, $c) { npm install $a $b $c }
function nrd { npm run dev }
function nrw { npm run watch }
function nrp { npm run production }
function pu($a, $b, $c) { ./vendor/bin/phpunit $a $b $c }
function pus($a, $b, $c) { ./vendor/bin/phpunit --filter $a $b $c }
function dtc() { ssh osama.sm@95.170.206.130 }

function mysql-start() {  mysqld --defaults-file='C:\\Program Files\mysql\config.ini' }
function mysql-stop() {  mysqladmin --defaults-file='C:\\Program Files\mysql\config.ini' shutdown }

cd ETicket
truffle init
truffle create contract ETicket

* скачиваем библиотеку openzeppelin-solidity, будем использовать для создания контрактов ERC-721  
**npm init -y**  
**npm install -E openzeppelin-solidity**

* установим truffle-hdwallet-provider (пропишем в truffle.js, чтобы можно было коннектиться к ноде через infura)  
**npm install truffle-hdwallet-provider**

* установим [простой веб сервер](https://www.npmjs.com/package/http-server) для тестов html  
**npm install http-server -g**
> запустить и указать путь к директории где лежат html файлы  
**http-server <путь> -a localhost -p 8000 -c-1**  
http://localhost:8080/

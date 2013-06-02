## Single Sign On Client in Rails

### Quick Start and How to Use

* clone:

  ```
    git clone https://github.com/psahni/sso_client_rails.git
  ```

* Install:
```
    bundle install
```

* I am using **[rubycas-client](https://github.com/rubycas/rubycas-client)** gem. Please Go through it

* Rubycas client uses **[Ruby CAS Server](https://github.com/rubycas/rubycas-server)**, a very beautiful Sinatra application, Please Go through it

* The main part in Ruby CAS Server is modifying the config,yml with your settings and running the server

   ```
    bundle exec rubycas-server -c config.yml
   ```

    Note: You have to create the user in the ruby cas server database

* My Ruby Cas Server Settings are:

    ```
      server: webrick
      port: 8888

      database:
        adapter: mysql2
        database: casserver
        username: root
        password: pass
        host: localhost
        reconnect: true

     authenticator:
       class: CASServer::Authenticators::SQLEncrypted
       database:
         adapter:  mysql2
         database: casserver
         username: root
         password: root
         host: localhost
         user_table: users
         username_column: username

    ```



* Ruby CAS Client settings

   - Create a file inside application.rb, I wrote ( as per ReadMe of the gem )

   ```ruby
       require 'casclient'
       require 'casclient/frameworks/rails/filter'


       # Where is the SSO server
       CASClient::Frameworks::Rails::Filter.configure(
         :cas_base_url => "http://127.0.0.1:8888"
       )
   ```

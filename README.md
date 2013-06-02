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


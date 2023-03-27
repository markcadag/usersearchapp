# Markdown syntax guide

## Ruby Version
* Ruby version 3.1.0
* Rails version 7.0.4.3

## Libraries
* faker - A library for generating fake data such as names, addresses, and phone numbers.

## Running the Project
* Clone repository

```
# Go to root directory and run this commands
rails db:setup
bundle install

# Generate 100 users
rake data_generator:generate_users

# To run the application use
./bin/dev
```


## Running the Test
```
rails test
```
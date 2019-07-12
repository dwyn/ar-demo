http://devise.plataformatec.com.br/


What is the difference between Authentication and Authorization?
Authentication means confirming your own identity, while authorization means granting access to the system. In simple terms, authentication is the process of verifying who you are, while authorization is the process of verifying what you have access to.

Read more: Difference between Authentication and Authorization | Difference Between http://www.differencebetween.net/technology/difference-between-authentication-and-authorization/#ixzz5tU5k4RzP

What is bcyrpt?

#######
What is Devise?
Devise is a flexible authentication solution for Rails based on Warden. It:

Is Rack based;
Is a complete MVC solution based on Rails engines;
Allows you to have multiple models signed in at the same time;
Is based on a modularity concept: use only what you really need.


######
Insalling Devise
(Assuming you have a user model)
echo "gem 'devise'" >> Gemfile    # Or edit Gemfile and add line: gem 'devise'
bundle install                    # Fetch and install the gems
rails generate devise:install     # Creates config file, etc.
rails generate devise user        # Create model class, routes, etc.
rake db:migrate                   # Create user table
rails generate devise:views users # Creates (minimal) views

########
Devise Configuration
Once you have installed Devise, as per the above commands, the next step is configuration. This is specified in two main files:

Firstly in a global config file, config/initializers/devise.rb. If you change the settings in this, they won’t become effective until you restart the Rails server. And the settings apply to the whole site.

Secondly, in a model class representing a (registered) user, which can be tailored to suit a particular role, for example if your app has an end-user, as well as having a site administrator (more on this later).

##################
Devise Utility Methods
Devise contains dozens of classes, including, models, controllers, mailers, helpers, hooks, routes, and views, but since Devise exposes it’s functionality in a small number of simple helper methods, It’s unlikely that you will even need to know of the existence of all of them. The most important helper methods Devise gives you to use in your own app are:

authenticate_user!
current_user
user_signed_in?
sign_in(@user)
sign_out(@user)
user_session

########


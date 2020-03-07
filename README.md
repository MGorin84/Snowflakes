# README

Project Snowflakes was created as an assignment for a GenTech-GLG course at Coder Academy in March 2020

Heroku app link: [Snowflakes](http://intense-beach-26117.herokuapp.com/)

Github:

Trello board:

Wireframes: [Wireframes](https://ninjamock.com/s/KKKJWGx)

Moodboard:

ERD: [ERD](https://dbdesigner.page.link/4HSx9Y2fFggrLmDk7)

## Instructions for running the app

To run the Snowflakes app, please complete the following steps:

- Visit the Heroku site for Snowflakes

- Test the site by creating an account or using the existing account details created for testing.

Functionality included in the app you can test includes

- Logging in
- Creating a new user account
- As an existing user, acting as a buyer

    * editing user information
    * browsing through gallery of products
    * commenting on products
    * adding products to wishlist
    * messaging owners of the products to arrange a sale

- As an existing user, acting as a seller

    * adding, editing and deleting products
    * reading comments on products
    * messaging potential buyers to arrange a sale
    * setting existing product to "sold" and deleting them from the gallery view


Login details are provided for testing:




Jo is an artist

Anna is a buyer


## Identification of the problem you are trying to solve by building this particular marketplace app.

Snowflakes is an online marketplace where independent artists can show and sell their work and also for art lovers looking to buy. It is a virtual gallery for busy buyers looking for interesting non-commercial artworks to add to their collection and a safe place for artists to display and sell their work. There is a comment section attached to artworks which is only visible to artist where potential buyers can leave their complements. The application is also equipped with a messenger allowing users to communicate and arrange payments and delivery. 

## Why is it a problem that needs solving?

Galleries are usually the only places we think of in terms of displaying and buying art. But for independent artists at the beginning of their career it is not easy to find a gallery willing to take their work and their work can stay unseen for a long time leaving it's owner with no income and appreciation. 
Buying art only through physical galleries is also restricting for potential buyers as their choices are limited and they might be short in time to visit places.
This is why Snowflakes is a great place where the needs of both artists and buyers are met. It is a virtual gallery where artists can display their work and connect to potential buyers and where time short art lovers can choose from displayed pieces of art not available through physical galleries.

## Purpose 

Snowflakes os made for a purpose of selling and buying artworks online.

## Functionality / features 

Snowflakes requires it's user to sign up first or sign in as an existing user. An existing user can edit their profile information or delete their account. User model was created with Devise gem with additional attributes added to it during the development.

The application allows an existing user see a gallery of artworks, uploaded by other users, leave comments to those artworks, add those artworks to wishlist.

All existing users can upload new artworks to sell. Those artworks are visible to other users but can only be edited or deleted by the user they belong to. There is also a "Mark as sold" button, which removes the artwork it is applied to from gallery view, but keeps it visible to the owner through dashboard view.

Dashboard view has it's owners artworks available, artworks marked as sold and artworks currently added to wishlist. 

There is an in-built messenger allowing users to communicate and arrange sales. It is accessible from any page by clicking a mailbox button which takes a user to the list of other users. There is also a link added to every artwork item added to wishlist which allows a user to message the artist that artwork belongs to.

## Sitemap 

![Sitemap image](/app/assets/images/Readme_images/Snowflakes.png)

## Target audience 

Snowflakes targets independent artists willing to display and sell their art online. It could be artists at the beginning of their career and not showing their work in physical galleries or mature artists willing to expand their group of buyers.
It also created for artwork lovers looking to buy online due to interest in independent art or shortage in time to vesit physical galleries.

## Tech stack (e.g. html, css, deployment platform, etc)

- Rails

Snowflakes is written in Ruby using Rails.
Rails is a development MVC framework used for web application written on Ruby, which provides developers with a database structure, controllers and views

- HTML/erb

Views for Snowflakes are written in HTML with embedded Ruby code.

- CSS

Stylesheets are created with CSS. There is a big area of improvement in styling, which is currently work in progress.

- Deployment platform

Snowflakes applications runs on Heroku which is a cloud base platform hosting web applications.

- Database

PostgreSQL is used in Snowflakes development as it works better on Heroku deployment platform.

- Gems

Devise gem was used to create User model which equipped the app with all the relevant functions like signing in and out, creating password, changing password ect.

Faker is another gem which was used during development to create data for testing

- Storage

AWS Amazon Simple Storage Service(S3), cloud-based platform, was used to store images 

## User stories



## Explain the different high-level components (abstractions) in your app



## Detail any third party services that your app will use



## Describe your projects models in terms of the relationships (active record associations) they have with each other



## Discuss the database relations to be implemented in your application



## Provide your database schema design

![schema](app/assets/images/Readme_images/Snowflakes_ERD.png)

## Describe the way tasks are allocated and tracked in your project




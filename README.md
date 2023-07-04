## Portal-App


## Setup

To set up the frontend and backend dependencies, from the root directory, run:

```console
$ npm install --prefix client
$ bundle install
```



After you've created the model, check your work by running:

```console
$ rails db:migrate db:seed
```

Then, use `rails c` to view data about the spices.

### Routes

Your API should have the following routes:

- `GET /spices`: return an array of all spices
- `POST /spices`: create a new spice
- `PATCH /spices/:id`: update an existing spice
- `DELETE /spices/:id`: delete an existing spice

Make sure to follow REST conventions for generating these routes.

You should also use strong params in the controller for the POST and PATCH
requests.

Use the tests to guide your progress and ensure that each route has the expected
JSON response body and HTTP status code. You can also run the server with
`rails s` and test out the routes manually using Postman.

Good luck! 💪

Once your API is working, you can try out the full application in the browser
when you're ready to see everything come together. You can run the Rails
application in one terminal by running:

```console
$ rails s
```

Then, **open another terminal** and run React:

```console
$ npm start --prefix client
```

Each application will run on its own port on `localhost`:

- React: [http://localhost:4000](http://localhost:4000)
- Rails: [http://localhost:3000](http://localhost:3000)

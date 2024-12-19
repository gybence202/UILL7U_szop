# Film Streaming Application

## Overview
The Film Streaming Application is a Node.js RESTful service that allows users to manage a list of films and series. It provides functionalities to create, read, update, and delete film entries, along with the ability to retrieve a user's personal film list.

## Features
- CRUD operations for films
- Store film details including title, genre, duration, release date, streaming date, type (film or series), and image URL
- OpenAPI specification for API documentation
- User-specific film list retrieval

## Project Structure
```
filmstreaming-app
├── src
│   ├── controllers        # Contains request handling logic
│   │   └── filmController.js
│   ├── models             # Defines data models
│   │   └── filmModel.js
│   ├── routes             # API route definitions
│   │   └── filmRoutes.js
│   ├── services           # Business logic for film operations
│   │   └── filmService.js
│   ├── app.js             # Entry point of the application
│   └── config             # Configuration files
│       └── database.js
├── public
│   └── images             # Directory for film images
├── package.json           # NPM configuration file
├── .env                   # Environment variables
├── .gitignore             # Git ignore file
├── README.md              # Project documentation
└── openapi.yaml           # OpenAPI specification
```

## Installation
1. Clone the repository:
   ```
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```
   cd filmstreaming-app
   ```
3. Install dependencies:
   ```
   npm install
   ```
4. Set up environment variables in the `.env` file.

## Usage
1. Start the application:
   ```
   npm start
   ```
2. Access the API at `http://localhost:3000`.

## API Documentation
Refer to the `openapi.yaml` file for detailed API specifications, including endpoints, request/response formats, and data models.

## Contributing
Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

## License
This project is licensed under the MIT License.
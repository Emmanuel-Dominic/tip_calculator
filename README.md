
# Tip Calculator

- The Tip Calculator is a Ruby on Rails application that allows users to calculate tips, split bills among people, and manage tip calculation records. It also features an admin dashboard for managing calculations.
- [Project Link
  ](https://tip-calculator-yqvq.onrender.com/)

## Setup Instructions

### Prerequisites

Ensure you have the following installed:

- Ruby (>= 3.0.0)
- Rails (>= 7.0.0)
- Yarn
- Node.js
- Git

### Clone the Repository

```bash
git clone git@github.com:Emmanuel-Dominic/tip_calculator.git
cd tip_calculator
```

### Install Dependencies

1. Install Ruby gems:

   ```bash
   bundle install
   ```

### Configure the Database

1. Create the database:

   ```bash
   rails db:create
   ```
2. Run migrations:

   ```bash
   rails db:migrate
   ```

### Start the Server

Run the Rails server:

```bash
rails s
```

Access the application at `http://127.0.0.1:3000`.

#### Routes available in the Application

##### Create Tip Calculation:

* [X] ``http://127.0.0.1:3000/calculator``

##### List Tip Calculations:

* [X] ``http://127.0.0.1:3000/``
* [X] ``http://127.0.0.1:3000/dashboard``

##### Show Tip Calculation:

* [X] ``http://127.0.0.1:3000/calculations/:id``

##### Update Tip Calculation:

* [X] ``http://127.0.0.1:3000/calculations/:id``

##### Delete Tip Calculation:

* [X] ``http://127.0.0.1:3000/calculations/:id``

##### Admin Dashboard:

- [ ] Admins can access the dashboard at `http://127.0.0.1:3000/dashboard` to view and manage records.

## Implementation Summary

* The develop branch utilized the scaffold format for implementation. Various commands were executed on the main branch to generate models and controllers. This process provided invaluable insight into creating custom routes, models and controllers, particularly for update and delete resources.

## Approach to Solving the Challenge

### Objective

The goal was to create a user-friendly Tip Calculator application with robust functionality for both users and administrators.

### Steps Taken

1. **Database Design**:

   - [X] Created models for `TipCalculation` with fields like `bill_amount`, `tip_percentage`, `num_people`, etc., to store all calculation details.
   - [X] Ensured data integrity with validations and constraints.
2. **Routing**:

   - [X] Defined routes for calculator operations (`new`, `create`, `show, edit, destroy`).
   - [X] Added `resources` for CRUD operations on tip calculation records.
3. **Frontend**:

   - [X] Used Bootstrap for a better user experience.
   - [X] Ensured form inputs are easy to use.
4. **Backend**:

   - [X] Handled tip calculation logic in the `TipCalculatorController`.
   - [X] Provided a landing interface via the `ApplicationController`.
   - [ ] Provided an admin interface via the `AdminController` to manage records.
5. **Error Handling**:

   - [X] Added validations to ensure all required fields are filled and have valid data.
   - [ ] Displayed meaningful error messages to guide the user.
6. **Testing**:

   - [ ] Wrote model and controller tests to ensure core functionalities work as expected.

### Challenges

- [X] Ensuring the delete and edit functionality was accessible and functioning as required.
- [X] Managing data consistency for tip calculation records.
- [ ] Configure user authorisation and authentication using Devise.

### Future Enhancements

- [X] Add authentication and authorization for admin and regular users.
- [X] Enhance the UI with more interactivity using JavaScript.
- [X] Implement an API for external integrations.

Designed by: Matembu Emmanuel Dominic

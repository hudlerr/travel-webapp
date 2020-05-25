# As a user, I want to be able to choose a username and password, so that I can have a personal account on the app.

_Testing Travel Planner App registration fields_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 1 | Registration fields | Testing registration functionality of Travel App | App registration link | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Click 'Don't have an account?' | Registration page should open | Registration page opens | Pass |
|  |  |  |  |  | First name, last name, email, username, password and retype password fields should be available | All fields available | Pass |

_Testing Member Type Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 2 | Members | Testing registration functionality of Travel App | App registration link | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Click 'Don't have an account?' | Registration page should open | Registration page opens | Pass |
|  |  |  |  |  | Team Leader/Member dropdown should be displayed | Dropdown is displayed | Pass |

_Testing Travel Planner App registration field_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 3 | Submit/Cancel Buttons | Testing registration functionality of Travel App | App registration link | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Click 'Don't have an account?' | Registration page should open | Registration page should open | Pass |
|  |  |  |  |  | Submit button should be available | Button available | Pass |

_Testing Travel Planner App mandatory registration field_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 4 | Blank Registration fields | Testing registration functionality of Travel App | App registration link | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Click 'Don't have an account?' | Registration page should open | Registration page should open | Pass |
|  |  |  |  | 3. Leave fields blank | - | - | - |
|  |  |  |  | 4. Click submit | Page should alert user to incomplete fields | Page alerts user | Pass |

_Testing Travel Planner App registration fields_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 5 | Registration Test Successful | Testing registration functionality of Travel App | App registration link, first name, last name, email, username, password and retype password fields | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Click 'Don't have an account?' | Registration page should open | Registration page opens | Pass |
|  |  |  |  | 3. Fill in all fields correctly | - | - | - |
|  |  |  |  | 4. Click submit | Data should be submitted to server | Data is submitted and user is logged in | Pass | 

_Testing Travel Planner App registration fields_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 6 | Characters | Testing registration functionality of Travel App | App registration link, first name and last name | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Click 'Don't have an account?' | Registration page should open | Registration page opens | Pass |
|  |  |  |  | 3. Put numbers in the name fields | Page should alert user to invalid characters | Page refreshes | Fail |

_Testing Travel Planner App email field_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 7 | Invalid Email | Testing registration functionality of Travel App | App registration link, email | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Click 'Don't have an account?' | Registration page should open | Registration page opens | Pass |
|  |  |  |  | 3. Type invalid email | Page should alert user to invalid email | Page refreshes | Fail |

_Testing Travel Planner App email field_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 8 | Taken User ID | Testing registration functionality of Travel App | App registration link, user ID | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Click 'Don't have an account?' | Registration page should open | Registration page opens | Pass |
|  |  |  |  | 3. Enter user ID that already exists | Page should alert user to pick a different username | Page refreshes | Fail |

_Testing Travel Planner App password field_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 9 | Not matching passwords | Testing registration functionality of Travel App | App registration link, password | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Click 'Don't have an account?' | Registration page should open | Registration page opens | Pass |
|  |  |  |  | 3. Type correct password | - | - | - |
|  |  |  |  | 4. Type incorrect password | - | - | - |
|  |  |  |  | 5. Click submit |  Page should alert user to wrong password | Page refreshes | Fail |

# As a user, I want to be able to log back in the app and have all my saved ideas there, so that I can continue planning where I left off.

_Testing Travel Planner App with valid user ID and password_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 10 | Login Test Successful | Testing login functionality of Travel App | App login link, correct user ID, correct password | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Type valid user ID | - | - | - |
|  |  |  |  | 3. Type correct password | - | - | - |
|  |  |  |  | 4. Click on sign in | User is logged in | User is logged in | Pass |

_Testing Travel Planner App with valid user ID and wrong password_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 11 | Login Test Fail | Testing login functionality of Travel App | App login link, correct user ID, wrong password | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Type valid user ID | - | - | - |
|  |  |  |  | 3. Type wrong password | - | - | - |
|  |  |  |  | 4. Click on sign in | Page alerts user to wrong password and allows them to try again | Page alerts user | Pass |

_Testing Travel Planner App with invalid user ID_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 12 | Unregistered Users | Testing login functionality of Travel App | App login link, invalid user ID, wrong password | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Type invalid user ID and password | - | - | - |
|  |  |  |  | 3. Click on sign in | Page alerts user to wrong user ID and password and allows them to try again | Page alerts user | Pass |

_Testing Travel Planner App with valid user ID and empty password_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 13 | Empty Password | Testing login functionality of Travel App | App login link, correct user ID | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Type valid user ID | - | - | - |
|  |  |  |  | 3. Leave password field empty | - | - | - |
|  |  |  |  | 4. Click on sign in | Page alerts user to empty password field and allows them to try again | Page alerts user | Pass |

_Testing Travel Planner App with valid user ID and wrong password_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 14 | Empty Password | Testing login functionality of Travel App | App login link, correct password | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Leave user ID field empty | - | - | - |
|  |  |  |  | 3. Type password | - | - | - |
|  |  |  |  | 4. Click sign in | Page alerts user to empty user ID field and allows them to try again |  |


_Testing Travel Planner App with empty user ID and empty password_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 15 | All Empty Fields | Testing login functionality of Travel App | App login link | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Leave user ID field empty | - | - | - | 
|  |  |  |  | 3. Leave password field empty | - | - | - |
|  |  |  |  | 4. Click sign in | Page alerts user to invalid user ID and password and allows them to try again | Page alerts user | Pass |

_Testing Travel Planner App password privacy_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 16 | Hidden Password | Testing login functionality of Travel App | Any password | 1. Enter password | Password should be displayed with asterisks or bullets | Password is hidden | Pass |

_Testing Travel Planner App with valid user ID and wrong password_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 17 | Case Sensitivity | Testing login functionality of Travel App | App login link, valid user ID and changed cases password | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Type valid user ID | - | - | - | 
|  |  |  |  | 3. Type changed case password | - | - | - |
|  |  |  |  | 4. Click sign in | Page alerts user to wrong password and allows them to try again | Page alerts user | Pass |

_Testing Travel Planner App with valid user ID and correct password_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 18 | Copy & Paste | Testing login functionality of Travel App | App login link, valid user ID and password | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Type valid user ID | - | - | - | 
|  |  |  |  | 3. Type correct password | - | - | - |
|  |  |  |  | 4. Copy and password field elsewhere | Password shouldn't get pasted or visible | Password isn't copied or pasted | Pass |

_Testing Travel Planner App with valid user ID and password_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 20 | Back button after signing out | Testing login functionality of Travel App | App login link, valid user ID and correct password | 1. Open link on web browser | Home page opens | Home page opens | Pass |
|  |  |  |  | 2. Type valid user ID | - | - | - | 
|  |  |  |  | 3. Type correct password | - | - | - |
|  |  |  |  | 4. Click on sign in | User is logged in | User is logged in | Pass |
|  |  |  |  | 5. Sign out | User shouldn't be signed in | User is logged out | Pass |
|  |  |  |  | 6. Press back button | Login page should be shown | Login page shown | Pass |

# As a user, I want to be able to send email invites to friends, so that they are able to receive invites to the app.

_Testing Email Invite Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 22 | Correct Email | Testing email functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Invite Friends' | Invite page should open | Invite page opens | Pass |
|  |  |  |  | 3. Type in a valid email | - | - | - |
|  |  |  |  | 4. Write messge | - | - | - |
|  |  |  |  | 5. Click 'Send email' | Email with message should send | Email Sends | Pass |

_Testing Email Invite Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 23 | Incorrect Email | Testing email functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Invite Friends' | Invite page should open | Invite page opens | Pass |
|  |  |  |  | 3. Type in a invalid email | - | - | - |
|  |  |  |  | 4. Click 'Send email' | Page should alert user to invalid email | Page alerts user | Pass |

_Testing Email Invite Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 24 | Blank SUbject | Testing email functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Invite Friends' | Invite page should open | Invite page opens | Pass |
|  |  |  |  | 3. Type in a valid email | - | - | - |
|  |  |  |  | 4. Click 'Send email' | Email with automated message should send | Email sends | Pass |

# As a user, I want to be able to click on an invite link and be directed to the app, so that i can choose to create an account. 

_Testing Email Invite Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 25 | Email | Testing email link (external) | Sign in/Sign up data for email | 1. Sign into email application | external | external | - |
|  |  |  |  | 2. Click link in email | Link should take user to Travel Web App registration page | Registration page opens | Pass |

# As a user, I want to be able create a new trip and be able to name it, so that I can have a clearly defined space where I start planning my trip.

_Testing Create Trip Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 26 | Create Trip Button | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  |  | Destination, Check-in date, check-out date and price limit fields should be available | All fields available | Pass |

_Testing Member Type Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 27 | Members | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click Sign up | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  |  | Team Leader/Member dropdown should be displayed | Dropdown is displayed | Pass |

_Testing Create Trip Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 28 | Create Trip Button | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  |  | 'Create Trip' button should be available | 'Create Trip' button available | Pass |

_Testing Create Trip Destination_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 29 | Create Trip Button | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Click Destination field | A dropdown list of all countries should be displayed | Dropdown list displayed | Pass |

_Testing Create Trip Dates_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 29 | Check-in date | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Click Check-in date field | Date widget should pop up | Date widget pops up | Pass |

_Testing Create Trip Dates_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 30 | Check-out date | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Click Check-out date field | Date widget should pop up | Date widget pops up | Pass |

_Testing Create Trip Price_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 31 | Price | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Enter negative price in price field | - | - | - |
|  |  |  |  | 4. Click 'Create Trip' button | Page should alert user to negative price | Page refreshes | Fail |

_Testing Create Trip Price_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 32 | Price | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data, destination, check-in date, check-out date and price | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Enter price in price field with £ symbol | - | - | - |
|  |  |  |  | 4. Click 'Create Trip' button | Page should accept data | Page accepts data | Pass |

_Testing Create Trip Price_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 33 | Price | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data, destination, check-in date, check-out date and price | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Fill in all fields correctly | - | - | - |
|  |  |  |  | 4. Enter price in price field without £ symbol | - | - | - |
|  |  |  |  | 5. Click 'Create Trip' button | Page should accept data | Page accepts data | Pass |

_Testing Create Trip Fields_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 34 | Empty Fields | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Leave all fields empty | - | - | - |
|  |  |  |  | 4. Click 'Create Trip' button | Page should alert user to empty fields | Page refreshes | Fail |

_Testing Create Trip Dates_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 35 | Dates | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data, destination, check-in date, check-out date and price | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Fill in all fields | - | - | - |
|  |  |  |  | 4. Make the check-in date after the check-out date | - | - | - |
|  |  |  |  | 5. Click 'Create Trip' button | Page should alert user to date error | Page continues on | Fail |

_Testing Create Trip Save Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 36 | Saved Trip | Testing 'Create Trip' functionality of Travel App | Sign in/Sign up data, destination, check-in date, check-out date and price | 1. Click sign in/ Sign up | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Fill in all fields correctly | - | - | - |
|  |  |  |  | 4. Click 'Create Trip' button | Page should accept data | Page accepts data | Pass |
|  |  |  |  | 5. Sign out | - | - | - |
|  |  |  |  | 6. Sign in | - | - | - |
|  |  |  |  |  |Previous created trips should be displayed | Previous trips displayed | Pass |

# As a user, I want to be able to create new categories and name them, so that I can plan for different aspects of the trip.

_Testing Create Trip Optional Categories Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 37 | Optional Categories | Testing 'Categories' functionality of Travel App | Destination, check-in date, check-out date and price | 1. Click 'Create Trip' | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  |  | 4 category fields should be available | 4 category fields available | Pass |

_Testing Create Trip Optional Categories Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 38 | Optional Categories | Testing 'Categories' functionality of Travel App | Destination, check-in date, check-out date and price | 1. Click 'Create Trip' | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  |  | 'Create Trip' button should be available | Button is available | Pass |

_Testing Create Trip Optional Categories Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 39 | Optional Categories | Testing 'Categories' functionality of Travel App | Destination, check-in date, check-out date and price | 1. Click 'Create Trip' | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Fill all fields correctly | - | - | - |
|  |  |  |  | 3. Click 'Create Trip' | Page should redirect user to page with all their inputed information and categories | Page redirects user to page with all their inputed information and categories | Pass |

_Testing Create Trip Optional Categories Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 40 | Optional Categories | Testing 'Categories' functionality of Travel App | Destination, check-in date, check-out date and price | 1. Click 'Create Trip' | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Leave all fields blank | - | - | - |
|  |  |  |  | 3. Click 'Create Trip' | Page should alert user to empty fields | Page restarts | Fail |

_Testing Create Trip Optional Categories Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 41 | Optional Categories | Testing 'Categories' functionality of Travel App | Destination, check-in date, check-out date and price | 1. Click 'Create Trip' | Create trip page should open | Create trip page opens | Pass |
|  |  |  |  | 2. Fill one field | - | - | - |
|  |  |  |  | 3. Click 'Create Trip' | Page should redirect user to page with all their inputed information and categories | Page restarts | Fail |

# As a user, I want to be able to save links to different categories, so that I can have a list options for each category.

_Testing Link Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 42 | Add links | Testing links functionality of Travel App | Create Trip button | 1. Click any of the user-defined categories | 'Add link' box should pop up | 'Add link' box pops up | Pass |
|  |  |  |  | 2. Click 'Create Trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Add link or type an idea | - | - | - |
|  |  |  |  | 4. Click add | Link should be added to category | Link is added to category | Pass |

_Testing Link Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 43 | Delete links | Testing links functionality of Travel App | Create Trip button | 1. Click any of the user-defined categories | 'Add link' box should pop up | 'Add link' box pops up | Pass |
|  |  |  |  | 2. Click 'Create new trip' | Create Trip page should open | Create Trip page opens | Pass |
|  |  |  |  | 3. Add link or type an idea | - | - | - |
|  |  |  |  | 4. Click add | Link should be added to added to catgegory | Link is added to added to catgegory | Pass |
|  |  |  |  | 5. Click delete | Link should be deleted | Link is deleted | Pass |

# As a user, I want to have the different options in each category clearly ranked, so that each member can clearly see and vote if they agree.

_Testing Groupchat Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 44 | Groupchat | Testing Groupchat functionality of Travel App | Sign in | 1. Click Login | Home page should open | Home page opens | Pass |
|  |  |  |  | 2. Click 'Group Chat' | Username page should open | Username page opens | Pass |
|  |  |  |  | 3. Type in any username | - | - | - |
|  |  |  |  | 4. Click 'Start Chatting' button | Groupchat page should open | Groupchat page opens | Pass |
|  |  |  |  | 5. Type anything | - | - | - |
|  |  |  |  | 6. Press Send | Message should send to groupchat | Message sends | Pass |

# As a user, I want to be able to create a holiday moodboard on the app so that I can prepare for my holiday accordingly.

_Testing Moodboard Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 45 | Moodboard Buttons | Testing Moodboard functionality of Travel App | Sign in | 1. Click Login | Home page should open | Home page opens | Pass |
|  |  |  |  | 2. Click Moodboard | Moodboard page should open | Moodboard page opens | Pass |
|  |  |  |  |  | Add, back, save, crop, done, draw and delete buttons should be available | Add, back, save, crop, done, draw and delete buttons available | Pass |

_Testing Moodboard Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 46 | Moodboard Add Button | Testing Moodboard functionality of Travel App | Sign in | 1. Click Login | Home page should open | Home page opens | Pass |
|  |  |  |  | 2. Click Moodboard | Moodboard page should open | Moodboard page opens | Pass |
|  |  |  |  | 3. Add image link | - | - | - |
|  |  |  |  | 4. Click add button | Image should pop up | Image pops up | Pass |

_Testing Moodboard Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 47 | Moodboard Delete Button | Testing Moodboard functionality of Travel App | Sign in | 1. Click Login | Home page should open | Home page opens | Pass |
|  |  |  |  | 2. Click Moodboard | Moodboard page should open | Moodboard page opens | Pass |
|  |  |  |  | 3. Add image link | - | - | - |
|  |  |  |  | 4. Click add button | Image should pop up | Image pops up | Pass |
|  |  |  |  | 5. Click image | - | - | - |
|  |  |  |  | 6. Click delete button | Image should be deleted | Image is deleted | Pass |

_Testing Moodboard Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 48 | Moodboard Crop Button | Testing Moodboard functionality of Travel App | Sign in | 1. Click Login | Home page should open | Home page opens | Pass |
|  |  |  |  | 2. Click Moodboard | Moodboard page should open | Moodboard page opens | Pass |
|  |  |  |  | 3. Add image link | - | - | - |
|  |  |  |  | 4. Click add button | Image should pop up | Image pops up | Pass |
|  |  |  |  | 5. Click image | - | - | - |
|  |  |  |  | 6. Click crop button | Image should be able to be cropped | Image is cropped | Pass |

_Testing Moodboard Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 49 | Moodboard Draw Button | Testing Moodboard functionality of Travel App | Sign in | 1. Click Login | Home page should open | Home page opens | Pass |
|  |  |  |  | 2. Click Moodboard | Moodboard page should open | Moodboard page opens | Pass |
|  |  |  |  | 3. Add image link | - | - | - |
|  |  |  |  | 4. Click add button | Image should pop up | Image pops up | Pass |
|  |  |  |  | 5. Click image | - | - | - |
|  |  |  |  | 6. Click draw button | Image should be able to be drawn on | Image can be drawn on | Pass |

_Testing Moodboard Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 50 | Moodboard Save Button | Testing Moodboard functionality of Travel App | Sign in | 1. Click Login | Home page should open | Home page opens | Pass |
|  |  |  |  | 2. Click Moodboard | Moodboard page should open | Moodboard page opens | Pass |
|  |  |  |  | 3. Add image link | - | - | - |
|  |  |  |  | 4. Click add button | Image should pop up | Image pops up | Pass |
|  |  |  |  | 5. Click image | - | - | - |
|  |  |  |  | 6. Click save button | Image should be saved | Image is saved | Pass |

_Testing Moodboard Functionalities_

| Test Case ID | Test Case | Description | Input Test Data | Test Case Steps | Expected Results | Actual Results | Status (Pass/Fail) |
| ----- | ----------- | --------------------- | ----------------------- | ----- | --------------------- | ----------------------- | ---- |
| 51 | Moodboard Save Button | Testing Moodboard functionality of Travel App | Sign in | 1. Click Login | Home page should open | Home page opens | Pass |
|  |  |  |  | 2. Click Moodboard | Moodboard page should open | Moodboard page opens | Pass |
|  |  |  |  | 3. Add image link | - | - | - |
|  |  |  |  | 4. Click add button | Image should pop up | Image pops up | Pass |
|  |  |  |  | 5. Click image | - | - | - |
|  |  |  |  | 6. Click Done button | The whole moodboard should save | The moodboard is saved | Pass |

JUnit Testing not applicable

# User Stories - Login and Registration

## Account Registration
**Title:**  
_As a user, I want to register with my name, username, age, and country so that I can create an account and access the habit tracking features._

**Acceptance Criteria:**
1. User can input name, username, age, and country.
2. User receives confirmation after successful registration.
3. Form validation is implemented to prevent invalid entries.

**Priority:** High  
**Story Points:** 3

---

## Account Login
**Title:**  
_As a user, I want to log in using my username and password so that I can access my account and track my habits._

**Acceptance Criteria:**
1. User can input a valid username and password.
2. Successful login redirects to the homepage.
3. Error message displayed for incorrect credentials.

**Priority:** High  
**Story Points:** 2

---

## Error Feedback on Login
**Title:**  
_As a user, I want to receive a message if I enter the wrong username or password so that I know my login attempt was unsuccessful._

**Acceptance Criteria:**
1. Incorrect login attempts trigger an error message.
2. Error message is clear and actionable.
3. System prevents brute force attacks with rate-limiting.

**Priority:** Medium  
**Story Points:** 2

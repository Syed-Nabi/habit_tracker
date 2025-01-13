# Product Backlog

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


# User Stories

## 1. Overview of Data on Home Screen
**As a** user,  
**I want to** view an overview of my data on the home screen  
**so that** I can monitor my progress at a glance.

### Example
A fitness app displays steps walked, calories burned, and water intake on the home screen.

### Why
This helps users stay motivated by seeing their progress immediately.

---

## 2. Introductory Guide for New Users
**As a** new user,  
**I want to** see a quick introductory guide on the home screen  
**so that** I can learn how to use the app.

### Example
A recipe app offers a carousel of tips for searching, saving, and rating recipes.

### Why
Ensures new users quickly understand key features.

---

## 3. Quick Access to Most-Used Features
**As a** user,  
**I want to** access my most-used features from the home screen  
**so that** I can navigate the app efficiently.

### Example
An e-commerce app shows shortcuts to Track Orders, Saved Items, and Browse Categories.

### Why
Improves user experience by reducing clicks for common actions.


# User Stories - Menu

## Access Navigation Menu
**Title:**  
_As a user, I want to access a navigation menu so that I can move between different sections of the app._

**Acceptance Criteria:**
1. Menu includes links to Homepage, Profile, Habits, Reports, Notifications, and Settings.
2. Menu is accessible from all pages.

**Priority:** High  
**Story Points:** 2

---

## Highlight Current Page in Menu
**Title:**  
_As a user, I want the menu to highlight the current page I am on, so that I know where I am in the app._

**Acceptance Criteria:**
1. Current page is visually distinguished in the menu.
2. Highlight updates as the user navigates.

**Priority:** Medium  
**Story Points:** 1

## Notifications

### Daily Reminder Notifications
**Title:**  
_As a user, I want to receive a daily reminder notification so that I don’t forget to complete my tasks._

**Example:**  
A productivity app sends a push notification at 9 AM, reminding users to review their to-do list.

**Why:**  
Encourages consistent app usage.

**Acceptance Criteria:**
1. Notification is sent daily at a user-defined time.
2. Notification includes a summary of pending tasks.
3. User can customize or disable reminders.

**Priority:** High  
**Labels:** `enhancement`, `priority: high`

---

### Feature Update Notifications
**Title:**  
_As a user, I want to receive notifications about new features so that I can explore and benefit from them._

**Example:**  
A streaming app sends a notification about newly added movies in the user's favorite genre.

**Why:**  
Drives engagement and satisfaction.

**Acceptance Criteria:**
1. Notifications are sent for newly added features.
2. Users can configure preferences for feature notifications.
3. Notifications link directly to relevant sections of the app.

**Priority:** Medium  
**Labels:** `enhancement`, `priority: medium`

---

### Disable Promotional Notifications
**Title:**  
_As a user, I want to turn off promotional notifications so that I can focus on essential updates only._

**Example:**  
A shopping app provides a settings option to disable promotional alerts but keep order updates active.

**Why:**  
Reduces user frustration and retains trust.

**Acceptance Criteria:**
1. User can toggle promotional notifications on or off in settings.
2. Essential updates remain unaffected.
3. Setting changes take effect immediately.

**Priority:** Medium  
**Labels:** `enhancement`, `priority: medium`

---

### Admin-Targeted Notifications
**Title:**  
_As an admin, I want to send notifications to specific user groups so that I can target them with relevant information._

**Example:**  
A fitness app admin sends a notification about a new yoga module to users who completed the beginner course.

**Why:**  
Enhances targeted communication and user engagement.

**Acceptance Criteria:**
1. Admins can select specific user groups for notifications.
2. Notifications can include custom messages and links.
3. Delivery is tracked for engagement metrics.

**Priority:** High  
**Labels:** `enhancement`, `priority: high`


# User Stories - Profile

## View and Edit Profile
**Title:**  
_As a user, I want to view and edit my profile information so that I can keep my details updated._

**Acceptance Criteria:**
1. Profile displays name, username, email, and country.
2. User can update details like name and email.
3. Changes are saved and reflected immediately.

**Priority:** High  
**Story Points:** 3

---

## View Personal Achievements
**Title:**  
_As a user, I want to see my habit-related achievements on my profile, so that I can track my milestones._

**Acceptance Criteria:**
1. Profile shows a list of completed milestones.
2. Achievements include dates and details.

**Priority:** Medium  
**Story Points:** 2


# User Stories - Report Page

## View Weekly Reports
**Title:**  
_As a user, I want to see a summary of my weekly progress, so that I can evaluate my habits over time._

**Acceptance Criteria:**
1. Report includes data for completed habits.
2. Visualize data using charts (e.g., bar or pie charts).

**Priority:** High  
**Story Points:** 3

---

## Export Reports
**Title:**  
_As a user, I want to export my progress reports as a PDF, so that I can share or keep them for reference._

**Acceptance Criteria:**
1. User can download reports in PDF format.
2. PDF includes all relevant progress details and charts.

**Priority:** Medium  
**Story Points:** 3

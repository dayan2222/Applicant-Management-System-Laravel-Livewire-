
# Applicant Management System (Laravel + Livewire)

This is a Laravel-based applicant management system built using **Livewire**, **Spatie Laravel-Permission**, and **Spatie Media Library**. The system handles user authentication, role-based permissions, applicant records, image uploads, educational qualifications, fee collection, and more.

---

## 🚀 Features

### ✅ Core Setup
- Laravel application with **Livewire** initialized
- **User Authentication** with Laravel Breeze (or equivalent)
- Role & permission management using **Spatie Laravel-Permission**

### 👤 Applicant Management
- **Applicant Migration** created
- **CRUD Functionality**:
  - Create Applicant
  - View Applicant
  - Edit Applicant
  - Delete Applicant

### 🖼️ Media & Images
- Integrated **Spatie Media Library**
- Applicant image upload and display functionality

### 🎓 Educational Qualification
- Add and manage applicant **educational qualifications**

### 🏢 For Office Use Section
- Additional admin-only section for internal office data per applicant

### 💳 Fee Collection
- Maintain a **fee collection record** for each applicant

---

## 📦 Tech Stack

- **Laravel** 10+
- **Livewire** 3+
- **Spatie Laravel-Permission**
- **Spatie Media Library**
- **MySQL** or other supported relational DB
- **Tailwind CSS** (optional, depending on UI framework)

---

## ⚙️ Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/applicant-management.git
   cd applicant-management


2. **Install dependencies**

   ```bash
   composer install
   npm install && npm run dev
   ```

3. **Configure environment**

   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

4. **Run migrations**

   ```bash
   php artisan migrate
   ```

5. **Set up storage (for media uploads)**

   ```bash
   php artisan storage:link
   ```

6. **Seed roles (optional)**
   You can create roles like `admin`, `staff`, etc., using Laravel tinker or seeder.

---

## 📁 Directory Structure Highlights

* `app/Models/Applicant.php` – Main model for applicants
* `app/Http/Livewire/` – Livewire components for managing applicants
* `database/migrations/` – Contains applicant, fees, and qualification-related migrations

---

## 🔐 Roles & Permissions

This project uses **Spatie Laravel-Permission** to manage roles. Common roles include:

* `Admin` – Full access
* `Staff` – Limited access to create/view/edit applicants

---

## 📷 Media Handling

* Applicant images are stored using **Spatie Media Library**
* Use `addMediaFromRequest('image')->toMediaCollection('applicants')` for uploads

---

## 🧪 Testing

You can write feature and unit tests using Laravel's built-in testing framework.

```bash
php artisan test
```

---

## 📌 To-Do / Improvements

* Add pagination and search for applicant listings
* Add multi-step form for applicant creation
* Implement export to PDF/Excel

---

## 📝 License

This project is open-source and available under the [MIT License](LICENSE).

---

## 🤝 Contributions

Pull requests and feature suggestions are welcome!


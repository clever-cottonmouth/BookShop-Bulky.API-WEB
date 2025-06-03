# E-BookShop (Bulky)

## Project Description
E-BookShop (Bulky) is a full-stack ASP.NET Core MVC web application for managing and selling books online. It features a robust admin panel, user authentication, shopping cart, order management, and Stripe payment integration. The project is modular, following best practices with a layered architecture and repository pattern.

## Features
- User registration, login, and role-based access (Admin, Employee, Company, Customer)
- Product (book) management with images and categories
- Company and user management
- Shopping cart and order processing
- Stripe payment integration
- Order tracking and status management
- Admin dashboard for managing products, categories, companies, users, and orders
- Email notification stubs (can be extended)

## Project Structure
```
E-BookShop/
│
├── Book.DataAccess/      # Data access layer, repositories, EF Core context
│   ├── Data/             # ApplicationDbContext and migrations
│   ├── Repository/       # Repository and UnitOfWork implementations
│
├── Book.Models/         # Entity and ViewModel classes (Product, Order, User, etc.)
│   ├── ViewModels/       # ViewModel classes for MVC
│
├── Book.Utility/        # Utility classes (roles, Stripe settings, email sender)
│
├── BulkyWeb/            # ASP.NET Core MVC web application
│   ├── Areas/           # MVC Areas: Admin, Customer, Identity
│   ├── Views/           # Razor views for all areas
│   ├── wwwroot/         # Static files (images, CSS, JS)
│   ├── Program.cs       # Main entry point
│   ├── appsettings.json # Configuration (DB, Stripe, etc.)
│
├── Bulky.Documents/     # (Optional) Document-related logic (future expansion)
│
├── Bulky.sln            # Visual Studio solution file
└── README.md            # Project documentation
```

## Technologies Used
- ASP.NET Core MVC (.NET 8.0)
- Entity Framework Core (SQL Server, LocalDB)
- Identity for authentication/authorization
- Stripe for payment processing
- Bootstrap for UI
- Repository and Unit of Work patterns

## Getting Started
1. Clone the repository.
2. Update the connection string in `BulkyWeb/appsettings.json` as needed.
3. Run database migrations (if required).
4. Build and run the solution using Visual Studio or `dotnet run`.
5. Access the app at `https://localhost:<port>`.

## Configuration
- **Database:** Set your connection string in `BulkyWeb/appsettings.json`.
- **Stripe:** Add your Stripe API keys in `appsettings.json` under the `Stripe` section.
- **Roles:** Predefined roles are Admin, Employee, Company, and Customer.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---
## Login Details

Email- admin@gmail.com `<br/>`
Password- Admin123*
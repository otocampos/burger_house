# Burger House App - Flutter

![App Demo](https://www.dropbox.com/scl/fi/bqet1y05g9wx81gbz31qj/video-linkedin.mp4?rlkey=be1qrru0e1trnwbew272lkb4i&dl=0)

## Description

The Lunch Order Kiosk App is a mobile application built with Flutter that aims to provide a seamless and interactive ordering experience for customers at a fast-food restaurant or lanchonete. The app is currently in the early stages of development and is designed to enable customers to place orders for custom hamburgers.

## Design Patterns

The app incorporates two design patterns: Factory and Builder.

- **Factory Pattern:** The Factory pattern is used to create different types of hamburgers with various ingredients without specifying the exact class of the object that will be created. This allows for a flexible and extensible approach to building hamburgers with different configurations.

- **Builder Pattern:** The Builder pattern is utilized to construct complex hamburger objects step by step, separating the construction process from the final product. This allows for easy customization of hamburger orders with different buns, patties, toppings, and sauces.

## SOLID Principles

The Lunch Order Kiosk App adheres to the SOLID principles to promote clean, maintainable, and scalable code:

- **Single Responsibility Principle (SRP):** Each class in the app has a single responsibility, ensuring that it encapsulates a single functionality or feature. This enhances the maintainability of the codebase and makes it easier to modify or extend individual classes.

- **Open/Closed Principle (OCP):** The app is designed to be open for extension but closed for modification. The use of design patterns such as Factory and Builder allows for adding new hamburger variations and customizations without modifying existing code.

- **Liskov Substitution Principle (LSP):** The app ensures that derived classes (e.g., different types of hamburgers) can be substituted for their base class (e.g., generic hamburger) without affecting the correctness of the program. This allows for polymorphic behavior and reusability of code.

- **Interface Segregation Principle (ISP):** The app defines interfaces that are specific to the needs of the classes that use them. This promotes a more granular and focused approach to defining interfaces, avoiding the implementation of unnecessary methods.


## Features

The app currently includes the following features:

- Build custom hamburgers using the Factory and Builder patterns.
- Utilize personalized images and animations for the hamburger assembly process.
- Add customizations to hamburger orders, such as toppings and sauces.
- View the completed hamburger order before placing it.

## Planned Future Enhancements

In the future stages of development, the Lunch Order Kiosk App will be expanded to include the following features:
- 
- Browse menu items and categories.
- Selection of predefined meal options, such as combo meals.
- Customization of hamburgers by customers using the Decorator pattern.
- Integration with backend APIs for menu data and order processing.
- Implementation of state management to handle user interactions efficiently.
- Comprehensive testing and debugging to ensure a stable and reliable app.

## Demo Video

Watch the [Demo Video](https://www.dropbox.com/scl/fi/i4wxikmhnsyjefaixtbky/how-to-code-a-big-mac.mp4?rlkey=fhu9uw8nxf9vce1qf1logjsq7&dl=0) to see the current progress of the app and how the hamburger assembly process works with animations and personalized images.

## Dependencies

- flutter: ^3.10.5 
- google_fonts: ^5.1.0


## Installation

1. Clone the repository to your local machine:
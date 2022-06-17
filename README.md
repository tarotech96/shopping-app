Flutter Project Structure
---

This repository shows a template of the real flutter project.

## 1. Overview
Application implementing the following features:

- State management using BLoC;

- Immutable state, models;

- Lazy loading implemented as an infinite list;

- Loaded products’ caching;

- Material Design UI;

- Clean code structure: code is separated into modules by feature, commonly used components, utils, constants are extracted;

- Using a real-world Best Buy API client, which is implemented as a separate Dart package;

- Localizations

- Unit/widget tests covering pretty much the whole code.

## 2. Used packages in project

**Main dependencies**

| Package | Purpose |
----|---- 
| animattions | Pre-built Material Design transition patterns for smooth page/screen transitions. |
| badges | Used to show the current items count in the shopping cart. |
| built_collection | Immutable collections to not allow any unexpected state mutations. |
| cached_network_image | To load and cache network images. |
| flutter_bloc | State management solution implementing the BloC pattern. |
| flutter_cache_manager | Generic cache manager for flutter. Used by CachedNeworkImage. |
| freezed_annotation | Annotations for the `freezed` code generator. |
| hydrated_bloc | An extension to the `flutter_bloc` library which automatically persists and restores bloc states (used for state caching). |
| path_provider | To get commonly used locations on host platform file systems. |
| pedantic | The Dart analyzer settings and best practices used internally at Google (used for static code analysis). |
| rxdart | Used for asynchronous programming, leveraging the native Dart Streams API (e.g. debouncing multiple events in the stream). |


**Dev dependencies**

| Package | Purpose |
----|---- 
| bloc_test | Used for BLoC testing. |
| build_runner | A build system for Dart code generation and modular compilation. |
| freezed | Code generation for immutable classes (used to create immutable state class objects, models). |
| json_serializable | Automatically generate code for converting to and from JSON by annotating Dart classes. |
| mockito | A mock library to create fake test objects in unit tests. |

## 3. Project structure

```
├───android
├───assets
│   └───fonts
├───ios
├───lib
│   ├───config
│   ├───constants
│   ├───modules
│   │   ├───cart
│   │   │   ├───bloc
│   │   │   ├───models
│   │   │   ├───pages
│   │   │   └───widgets
│   │   ├───products
│   │   │   ├───bloc
│   │   │   ├───models
│   │   │   ├───pages
│   │   │   ├───repositories
│   │   │   └───widgets
│   │   └───product_details
│   │       ├───pages
│   │       └───widgets
│   ├───utils
│   └───widgets
├───packages
│   └───best_buy_api
└───test
    ├───config
    ├───helpers
    ├───modules
    │   ├───cart
    │   │   └───widgets
    │   ├───products
    │   │   └───widgets
    │   └───product_details
    │       └───widgets
    └───widgets
```

※ Independent directories
- **assets**: contain all the assets used in the application like images and fonts;
  
- **lib/config**: stores general configuration files like theme data, routes, environment configuration;
  
- **lib/constants**: contain all the general-purpose constants, e.g. colours, common layout spacing values, texts, paths to files, etc.;
  
- **lib/utils**: are used for common helpers used across the app, for instance, helper functions, extension methods;
  
- **lib/widgets**: contain Flutter widgets used in more than one module (common Widgets).

- **lib/l10n**: contain datas for localizing app

※ If we look at the lib/modules, we could see that the code is split based on the app features, like products, product details and cart. Each module shares the following structure:

- **bloc**: if the module requires state management, we store all the bloc-related files (BLoC class itself, events and states) there;

- **models**: contains all the model classes, entities representing the business-related data, like product, cart, cart item, etc.;

- **pages**: stores Flutter Widgets which represent the actual pages that have a specific route to them;

- **repositories**: in simple words, if the module needs to load some kind of data from the database, third-party API, internal storage or any other data source, we store those classes here. Also, this directory could be named as, or you could even have both, repositories and services, directories if you see a need for that. Repositories should provide high-level endpoints/functions to retrieve the data without exposing the implementation details on how this data was retrieved and/or formatted. This way, you just simply use these functions in your BLoC classes to get the data you need. This is called a `Repository Pattern`, you should definitely learn more about it;

- **widgets**: all the UI components, which belongs to this module, should be stored here.

## 4. Related third-party directories
- **packages**: One of the requirements for the prototype was to use a real-world API.
In a real project, we can put all logic related to handling call API, and server here.

## 5. State Management
In project, I had decided using `flutter_bloc` package for state management solution.
If you come from a React Developer then you will feel very familiar. Because Flutter Bloc 
is so similar to Redux which is popular for managing states in React App

## 6. Code Generation
Some code generators like `json_serializable` or `freezed` may are used in project.
Learn more about 👉 [freezed](https://pub.dev/packages/freezed), [json_serializable](https://pub.dev/packages/json_serializable)

## 7. Test, test and test once more
For testing in Flutter app, we can use some following packages below:

- **test**: This package provides a standard way to test classess, method,...so on in Dart. Learn more about 👉 [test](https://pub.dev/packages/test) 

- **flutter_test**: Testing library for flutter, built on top of package:test. Learn more about 👉 [flutter_test](https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html) 

- **golden_toolkit**: This package contains APIs and utilities that build upon Flutter's Golden test functionality to provide powerful UI regression tests. Learn more about 👉 [golden_toolkit](https://pub.dev/packages/golden_toolkit)

## 8. Command line

- **To get package**
```
    flutter pub get
```

- **To add a package**
```
    flutter pub add {package_name}
    flutter pub add --dev {package_name} (for dev dependencies)
```

- **To remove a package**
```
    flutter pub remove {package_name}
    flutter pub remove --dev {package_name}
```

- **To generate code by code generator like `freezed`, `freezed_annotation`**:
```
    flutter run build_runner build
```

- **To run app**
```
    flutter run
```

- **To run the app which was configured by multiple environments with flavor.**
Example configuration:
```js
    flavorDimensions "flavor-type"

    productFlavors {
        develop {
            dimension "flavor-type"
            applicationIdSuffix ".dev"
        }
        staging {
            dimension "flavor-type"
            applicationIdSuffix ".stg"
        }
        production {
            dimension "flavor-type"
            applicationIdSuffix ".prd"
        }
    }
```
```
    flutter run --flavor develop -t lib/main.dart (for dev environment)
    flutter run --flavor staging -t lib/main.dart (for stag environment)
    flutter run --flavor production lib/main.dart (for production environment)
```

- **To run test**
```
    flutter test test/{test_file}
```
※ If you want to export test result, then add --coverage tag to the test command 
```
    flutter test test/{test_file} --coverage
```
To view results by HTML file setting below:
```
    brew install lcov
    genhtml coverage/lcov.info -o coverage/html
```
The result like this: 
<img src="https://blog.dalt.me/wp-content/uploads/2020/12/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88_2020-12-30_19_44_14.jpg" width=300 height=100  />

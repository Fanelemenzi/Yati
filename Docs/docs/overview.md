# **Yati Overview**
Yati is mobile application built using the Flutter Framework. It is designed to provide answers to questions about services provided by governement ministries and their departments.

## **Getting Started**

* **Contributing code.** Check out our guide for new contributors to get started. We have invested in making Yati code highly readable, thoughtfully tested, and easy to modify. Beyond that, we encourage contributors to follow our guidelines on documentation to ensure everything changed is documented.

* **Contributing non-code.** Reporting an issue and give us feedback. We’d love to hear from you, whether you want to contribute to Yati or are just trying it out for the first time.

* **Checking Yati out.** The best way to expireance and use Yati is to download and install Yati App APK. We also recommend joining and following our communities to ask any questions.


You may also be interested in following us on [Twitter]() and [LinkedIn]().

## **Licences.**
Yati is distributed under the [Apache 2.0 license.]()
To learn more about Yati's distribution license, follow this [link]()

## **Yati Architecture Overview**
### **Key Codebases**
The main Yati codebase is at [https://github.com/Fanelemenzi/Yati](). Iit contains all the frontend and backend code for the Yati Mobile App.

Yati Mobile app is a mobile app built on with the flutter framework supporting both iOS and Andriod written with Python and HTML to support some app functions.

### **Usage Assumptions and Concepts**
Yati is a information application provide answers to questions about services and products provided by the Eswatini Government. Information is structured in form of FAQs with answers. It is divided by deaprtments with each department getting its own set of questions and answers.

### **Architecture Components** 

### **Flutter and APIs**
Yati's is primarily implemented in the Flutter cross platform framework with APIs calling data stored on a codebase.

Flutter with dart provides the UI of the application and backend logic allowing/providing functionality to the application UI. The API provide the backend functionality by getting data from database.


## **Directory Structure**
This page documents the Yati directory structure, where to find things, and how to decide where to put a file.

### **Core Folders and Files**
Yati uses the Flutter crossplartform framework, some of this path are default packages and folders coming with the flutter framework.
Folders and Files that can be changed are the working part of the project are expanded and explains in great detail further down this section. These are [lib], [Docs], [pubspec.yaml].

* `yati/.dart_tool` - This folder comes with dart version 2 and used by pub and other tools. It replaced the .pub directory.
* `yati/andriod` - This folder contains native andriod code. Most of the time you dont need to change anything inside this folder but of you want to intercat with low level functions (eg. camera, bluetooth, gps) you need to edit this folder.
* `yati/assets` - This folder contains assests used throughout the project such images, videos, icons and more
* `yati/Docs` - this is the documentation folder that contains all the files dealing with the documentation of any changes in the development of the Yati app.
* `yati/ios` - this folder contains native iOS code.
* `yati/lib` - This is the folder where we will be mostly hanging around in because we will write our Flutter code into this folder. By default lib folder contians only the `main.dart` file. The `main.dart` file is like the a car ignition becuase the app starts running from the `main.dart` file. The folder structure inside lib is important for organizing and managing the application.
* `yati/linux` - Same as andriod folder, contians native code to run application on Linux software 
* `yati/macos` - Folder contains native code torun software on MacOS operating systems.
* `yati/test` - This is the folder where we will write our test for the application.
* `yati/web` - This folder contains code to run the application on web browsers
* `yati/windows` - This folder contains native code that allows app to run on windows OS.
* `yati/.readthedocs.yaml` - file that allows for the app documentation to be hosted on ReadTheDocs.
* `yati/.analysis_options/yaml` - This is a file configuration which configures Dart analyzer which checks all your code and if your code has any conflict with the configurations you wrote then IDE gives an error or warning.
* `yati/pubspec.lock` - This file contains all the packages versions, dependency and description informations used in the project. Purpose is to keep the app packages locked in the same library version so if wwe run the app in different computers we dont have to struggle with code issue caused from different package versions.
* `yati/pubspec.yaml` - This file controls app name, SDK version, packages, dependencies and assets. If you want to add new packages to your project you need to add the package name under dependencies section. 
* `yati/READMe.md` - This is the default markdown file containing resources to get started into Flutter for beginners.

### **Lib Folder**
1. `yati/lib/Constants/` contains constant static files that do not during the function of the project. This files are non-volatile. In this folder there is the 
    * `../lib/Constants/department.dart` contains a class containing a list of strings used to label all the departments used throughout the codebase.
    * `..lib/Constants/ministries.dart` contains a class containing a list of strings used to label all the minitries in the codebase.
2. `yati/lib/dep_pages` folder contains folders with the business logic for eachof the departments FAQs
    * `../dep_pages/Deputy PM Office/` contains the `social_welfare_department.dart` file that runs the business logic of the **social welfare department FAQs**.
    * `../dep_pages/Ministry of Agriculture` contains the `vet_livestock_production.dart` file which controls the logic for the **vet livestock production department FAQs**.
    * `../dep_pages/Ministry of Commerce` contains the `cooperative_development.dart`, `Liquor_department.dart` and the `regristrar_of_companies.dart` files that control the logic of the **Cooperative Development FAQs**, the **Liqour Department FAQs** and the **Regristrar of Companies FAQs**.
    * `../dep_pages/Ministry of Home Affairs` contains the `home_affairs.dart` file which controls the logic and function of the **Home Affairs Department FAQs**.
    * `../dep_pages/Ministry of Labour` contains the `Industrial_and_Vocational_training.dart` and the `scholarship.dart` files which control the functioning and business logic for the **Industrial and Vocational Training Department FAQs** and the **Scholarship Department FAQs**.
3. `yati/lib/Screens/` folder contains the files that controls and renders the presentation layer for the app that users interact with.
    * `yati/Screens/about.dart` This dart file renders the about page in the application.
    * `yati/Screens/most_used.dart` This dart file renders the Most Used page in the application.
    * `yati/Screens/profile.dart` This file renders the profile page on the application.
    * `yati/Screens/welcome_page.dart` This file renders the welcome page which is the first page user interacts with.
4. `yati/lib/bottom_navbar.dart` controls and renders the bottom navigation bar of the application.
5. `yati/lib/opening_screen.dart` controls and renders the opening screens with runs for 5 seconds before the welcome page.
6. `yati/lib/main.dart` the file where the application starts running. Its controls the whole rendering of the application.

### **Documentation**
`/Docs/` This folder contains all the application documentation files that are used to track any changes made to the project.
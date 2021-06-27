Thanks for downloading this template!

Template Name: Amoeba
Template URL: https://bootstrapmade.com/free-one-page-bootstrap-template-amoeba/
Author: BootstrapMade.com
License: https://bootstrapmade.com/license/


Help: Dev Versions
The dev versions of our templates contain source files used to crate the distributed versions of our templates. The development tools we use are: Node.js as backend environment, NPM as a package manager, Gulp as a task manager and Nunjucks as a templating engine.

The dev versions are only available to paid members who have purchased pro unlimited licenses or membership plans.

Getting Started
There are a couple of things you need to make sure are set up on your machine before starting to work with dev versions.

Install Node.js if you do not already have it installed on your machine.
Install Gulp CLI. Run the below command in your terminal. This will install Gulp CLI globally.
npm install gulp-cli -g
Open the dev version of the template directory with your cmd or terminal and run the following command: npm install This will start the process of installing all dependencies required to work with the project.
You’re now ready to work with the dev version. You can run npm start This will build the project inside the /dist folder and start a local webserver at http://localhost:3000 with live preview. If you edit and save a file inside the src folder, your browser will automatically refresh and preview the changes. Please, also check Working with Gulp section below for more command-line tools
Project File Structure
Inside the dev version of each of the template, you will find the following files and directories. The src folder content may differ from project to project.

template-pro-dev/
├── .browserslistrc
├── changelog.txt
├── dependencies.json
├── documentation.html
├── LICENSE.txt
├── gulpfile.js
├── package.json
├── Readme.txt
├── dist/
└── src/
    ├── assets/
    │   ├── img/
    │   ├── js/
    │   └── vendor/
    ├── forms/
    │   ├── contact.php
    │   └── Readme.txt
    ├── parts/
    ├── scss/
    ├── index.html
    └── template.html
The /src and the /dist folders are the most important folders for the project.

The /src folder contains all template source files. You’ll typically work with the files inside this folder.
The /dist folder is where the source files from the /src folder are compiled and exported for production. Do not add/edit/save any files or folders inside the dist folder. They will be deleted by the gulp tasks.
Editing and customizing the template files
You’ll mostly need to edit the .html, .scss and .js files inside the /src folder to fully customize the template for your needs.

.scss files – All the .scss files are properly structured and organized inside the /src/scss folder. The scss files are compiled and exported to dist/assets/css folder during the build task by gulp.
main.js – All the template related JavaScript code are placed inside the /src/assets/js/main.js It’s also exported by gulp during the build task to /dist/assets/js/main.js
.html files – We use the Nunjucks templating engine by Mozilla to create the .html files. It’s straightforward to use and comes with powerful features. One of the most useful features for us is the ability to split and include the repetitive parts of the pages like headers and footers. Check the full Nunjucks documentation.

Gulp is a JavaScript task runner. It helps with performing all the necessary tasks required to compile and export the project to the /dist folder. All the Gulp tasks are already set up for you inside the gulpfile.js
The below Gulp commands are available:

gulp or npm run dist – Compiles and exports the project to the /dist folder
gulp start or npm start – Starts a local webserver at http://localhost:3000 with live preview. If you edit and save a file inside the /src folder, your browser will automatically refresh and preview the changes.
gulp watch or npm run watch – It will watch and automatically compile the project to the /dist folder each time you edit and save a file inside the /src folder
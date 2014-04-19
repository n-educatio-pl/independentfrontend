Independent frontend workflow
================
Less, requirejs, grunt, bower, karma and jasmine
--------

Using this configuration you can use the less, requirejs, grunt, bower, karma, jasmine (and anything else you need) stack in your existing and new web applications, regardless of the backend framework you use.
Make the front-end develpers life easier!

Credits
-------
This WORK was inspired by a great [Cool like Frontend Developer](https://github.com/knpuniversity/symfonycon-frontend) PROJECT
and the presentation of the same title at SymfonyCon 2013.

Goal
-------
The goal of this project is to equip your toolbox with the frontend stack that is easy to launch and easy to integrate with any backend system and any language
(Java with Spring, PHP with Symfony2 etc.). The idea is that you should be able to make your decisions about frontend architecture
and tools independent from the backend system of your choice - only then you can pick the right tool for the job.

This project uses static HTML page for rendering the content.
It is done on purpose - if you can run it using a static HTML page it means that you can integrate it with any backend framework and language.

How to start
===============

Glossary
--------
- host machine - your computer (as opposed to guest machine)
- guest machine - virtual machine (an environment independent from your host machine), that you launch to create an environment containing tools and packages you'll need


1. Prepare host machine
-------------
The preperation of the host machine comes down to the installation of the virtualization mechanism. After that everything else is automated.

1. Install [Virtualbox](https://www.virtualbox.org/wiki/Downloads) from the official site (the newest version).
2. Check the installation by typing `VirtualBox --help`, you should see somthing like `Oracle VM VirtualBox Manager 4.3.10` with the list of available commands.
3. Install [Vagrant](https://www.vagrantup.com/downloads) from the official site (same here, the newest version).
4. Check the installation by typing `vagrant -v` - you should see something like `Vagrant 1.5.1`.
5. Clone project and go to project's directory - it'll be the project root directory.


2. Prepare guest machine
-------------

1. Be sure you're in the the project root directory (where the Vagrantfile is located) and type `vagrant up`
2. Do at least 15 deep knee bends or arm swings while waiting - automation FTW!
3. In the end you should see something like `Notice: Finished catalog run in 299.02 seconds`. If something went wrong, check docs/referenceSuccessfulRun.txt for correct reference output.
4. Go to http://192.168.33.10/frontendworkflow/index.html, you should see some not so pretty page (it probably reads 'server works').
5. Congratulations! You've just created and provisioned your server.


3. Build the project
-------------

1. Ssh to the guest machine - from the project root (where the Vagrantfile is located) type `vagrant ssh`.
2. You should connect to the guest machine. Go to /vagrant directory (it's your project root): `cd /vagrant`.
3. Build you project by typing:
```
    bower install
    npm install
    grunt
```
4. One again, on you host machine go to http://192.168.33.10/frontendworkflow/index.html and verify the build according to the checklist displayed there.


4. What's next
-----------
- You can deploy the app by typing `grunt production`.
- You can develop the app with real time feedback by typing `grunt watch`.
- Play around with the project - change the less styles and observe the page, make the tests fail etc.
- You can use it in your both green- and brownfield projects by using the code in index.html in your layouts and pages.
## SuperScript Bootstrap

Welcome to the wonderful world of building chatbots!


### Getting the enviroment setup

We will assume you already have Node and NPM installed. To use SuperScript you need to make sure you have Node 0.12.x installed. Later version do not work yet.

SuperScript also requires MongoDB - You can download and install Mongo from `https://www.mongodb.org/downloads#production`

Once installed you run it from the command line by `sudo mongod`

You can start by cloneing this repo locally using the command 
`git clone https://github.com/silentrob/hello-superscript.git`

You will then want to run `npm install` This will load in all the dependencies. 

This example will show you how to create a basic trigger, topic and plugin, and use 2 sample clients. (Telnet and Slack)

## Basic Workflow

* You will want to make sure you have `mongo` running, all the conversation and user data is stored in mongo, namely, `Gambits`, `Replies`, `Topics` and `Users`. If you don't yet have Mongo Running, see the first section.

* Lets compile our first trigger and store that in mongo. I already created the topic folder and ss file see `./topics/main.ss` 

We can compile the data two ways, either by typing `parse` from the command line which generates a intermediate json representation that we can manually import, or by doing a parse and load combind step. Lets do the latter as it removes the need to manually import the JSON file ourselves.

Run `./node_modules/superscript/bin/cleanup.js --mongo telnetbot`

We pass in a `--mongo telnetbot` param to say we want to store (and flush) from the telnetbot database in mongo, this is also a handy way to seperate other bots.

The output should look something like:
```
users is clear
topics is clear
replies is clear
gambits is clear
Time to Process 1.009 seconds
Number of topics 2 parsed.
Number of gambits 1 parsed.
Number of replies 1 parsed.
Number of convos 0 parsed.
Number of Gambits: 0
Number of Replies: 0
Everything imported
```

It should be noted that this task will also cull the existing data before adding new data.

As we can see we have added one Gambit and One Reply as expected. We also have two topics, one called `main`, and one the system creates called `random`.

* Running a client

The next step is to see the bot in action, for that we will fire up our first client and chat with our new bot. SuperScript will work with on any messaging platform. Slack, Telegram, Twilio, IRC, WebSockets or anything that exposes text output and a way to reply.

Some of the more advanced client logic is deliberately left upto you to build, this is because there are many differnet chat paradigms one on one, multi-party chat, direct messaging. Usually what you want to do is specific to your own app. For now we will cover a basic telnet example. You can find more clients here: `https://github.com/silentrob/superscript/tree/master/clients`

Lets fire up the client by running `node telnet.js`

And in a new window lets chat with it by running `telnet 127.0.0.1 2000`



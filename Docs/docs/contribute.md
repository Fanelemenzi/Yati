# **Contributing to Yati Project**
Welcome to the Yati community. We happy and excited you choose us for oyur open source contribution.

## **Contribution Guide**
### **Zulip development community**
The primary communication forum for the Yati project is the discord server hosted at discord.com:

**Users and administrators** of the Yati project stop by to ask questions, offer feedback, and participate in product design discussions.
**Contributors to the project**, including the core Yati project team, discuss ongoing and future projects, brainstorm ideas, and generally help each other out.

Everyone is welcome to sign up and participate — we love hearing from our users! Public streams in the community receive thousands of messages a week.

To learn how to get started participating in the community, including community norms and where to post, check out our [Yati development community guide](devenv.md). The Yati project community is governed by a [code of conduct]().

### **Ways to contribute**
To make a code or documentation contribution, read our step-by-step guide to [getting started](overview.md) with the Zulip codebase. A small sample of the type of work that needs doing:

* Bug squashing and feature development on our Python/Django backend, web frontend, Flutter mobile app in beta, or Electron desktop app.
* Building out our Python API and bots framework.
* Writing an integration.
* Improving our user or developer documentation.
* Reviewing code and manually testing pull requests.

Non-code contributions: Some of the most valuable ways to contribute don’t require touching the codebase at all. For example, you can:

* Report issues, including both feature requests and bug reports.
* Give feedback if you are evaluating or using Yati.
* Participate thoughtfully in design discussions.

## **Your first codebase contribution**
This section has a step by step guide to starting as a Yati codebase contributor. It’s long, but don’t worry about doing all the steps perfectly; no one gets it right the first time, and there are a lot of people available to help.

* First, make an account on the Yati discord server, paying special attention to the community norms. If you’d like, introduce yourself in `#new members` channel, using your name as the topic. Bonus: tell us about your first impressions of Yati, and anything that felt confusing/broken or interesting/helpful as you started using the product.
* Read What makes a great Zulip contributor.
* Set up the development environment for the Zulip codebase you want to work on, and start getting familiar with the code.
    **For the server and web app:**

    1. Install the [development environment](devenv.md), getting help in #provision help if you run into any troubles.
    2. Familiarize yourself with using the development environment.
    3. Go through the new application feature tutorial to get familiar with how the Yati codebase is organized and how to find code in it.

Read the Zulip [guide to Git](gitguide.md) if you are unfamiliar with Git or Yati’s rebase-based Git workflow, getting help in `#git help` if you run into any troubles. Even Git experts should read the Yati-specific Git tools page.

## **Where to look for an issue**
Now you’re ready to pick your first issue! Yati has several repositories you can check out, depending on your interests. There are hundreds of open issues in the main [Yati repository]().

You can look through issues tagged with the `“help wanted”` label, which is used to indicate the issues that are ready for contributions. Some repositories also use the `“good first issue”` label to tag issues that are especially approachable for new contributors.

### **Picking an issue to work on**
There’s a lot to learn while making your first pull request, so start small! Many first contributions have fewer than 10 lines of changes (not counting changes to tests).

We recommend the following process for finding an issue to work on:

* Read the description of an issue tagged with the “help wanted” label and make sure you understand it.
* If it seems promising, poke around the product (on discord server or in the Github comments) until you know how the piece being described fits into the bigger picture. If after some exploration the description seems confusing or ambiguous, post a question on the GitHub issue, as others may benefit from the clarification as well.
* When you find an issue you like, try to get started working on it. See if you can find the part of the code you’ll need to modify (git grep is your friend!) and get some idea of how you’ll approach the problem.
* If you feel lost, that’s OK! Go through these steps again with another issue. There’s plenty to work on, and the exploration you do will help you learn more about the project.

Note that you are not claiming an issue while you are iterating through steps 1-4. Before you claim an issue, you should be confident that you will be able to tackle it effectively.
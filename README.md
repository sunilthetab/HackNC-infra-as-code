# HackNC-infra-as-code
This contains all code and configuration details to maintain instances on AWS. This is for HackNC 2017 hackathon.

# Story
## Inspiration
Any software that is developed revolves around simplifying the task of humans. In regard to this there are many tools which try to simplify the task of people who develop software. We know how widespread is the Agile methodology in software industry and our Emma Bot aims to simplify an important part of their day-to-day tasks. Stand up meetings require physical effort by all the team members and human-computer interaction. Even for these short meetings, developers end up putting some effort. Our aim is to reduce it and eliminate the need of the developer to carefully look at and interact with the Scrum Board(computer).

## What it does
Emma Bot is accessed by using Amazon's Alexa. Within a stand-up meeting Emma can successfully move tasks as per team member's update on the task's status, schedules a meeting for the team if needed and gives the summary of the team's on-going sprint if asked for. Now instead of looking up the board and the Scrum Master manually moving tasks, user is only giving short instructions as voice input to Emma bot and output is easily provided to the team member.

## How I built it
The Emma Bot's user interface is via Alexa wand/Echo. We have used multiple technologies and integrated them to provide this end-to-end scrum master service. JIRA Software is used for Scrum Board and we have built Java service as well as using JIRA REST APIs to make API calls for task movements and obtain summary report. Alexa is integrated with AWS Serverless lambda function which consumes RESTful endpoints exposed by core scrum service. This core scrum service is deployed as Docker containers in AWS. Google API is used for accessing calendar events and schedule meeting.
The complete infrastructure is hosted on AWS, built as a CI/CD pipeline. We have used Jenkins build management tool to build and deploy our services.

## Challenges I ran into

## Accomplishment that I'm proud of

## What I learned

## What's next for Scrum master emma

# HackNC-infra-as-code
This contains all code and configuration details to maintain instances on AWS. This is for HackNC 2017 hackathon.

# Story
## Inspiration
Any software that is developed revolves around simplifying the task of humans. In regard to this there are many tools which try to simplify the task of people who develop software. We know how widespread is the Agile methodology in software industry and our Emma Bot aims to simplify an important part of their day-to-day tasks. Stand up meetings require physical effort by all the team members and human-computer interaction. Even for these short meetings, developers end up putting some effort. Our aim is to reduce it and eliminate the need of the developer to carefully look at and interact with the Scrum Board(computer).

## What it does
Emma Bot is accessed by using Amazon's Alexa. Within a stand-up meeting Emma can successfully move tasks as per team member's update on the task's status, schedules a meeting for the team if needed and gives the summary of the team's on-going sprint if asked for. Now instead of looking up the board and the Scrum Master manually moving tasks, user is only giving short instructions as voice input to Emma bot and output is easily provided to the team member.

## How I built it
The Emma Bot's user interface is via Alexa wand/Echo. We have used multiple technologies and integrated them to provide this end-to-end scrum master service. JIRA Software is used for Scrum Board and we have built Java service as well as using JIRA REST APIs to make API calls for task movements and obtain summary report. Alexa is integrated with AWS Serverless lambda function which consumes RESTful endpoints exposed by core scrum service. This core scrum service is deployed as Docker containers in AWS. Google API is used for accessing calendar events and schedule meeting. The complete infrastructure is hosted on AWS, built as a CI/CD pipeline. We have used Jenkins build management tool to build and deploy our services.

## Challenges we ran into
1) Training Alexa to understand user's instructions as it can misinterpret voice input many times.
2) We were adding on features one at a time and faster deployment was a challenge. We solved this by using a CI/CD pipeline to build after every new feature was added.
3) Integration of schedule meeting function with the Scrum Service.
4) We created a portal to see the actions performed by Emma, we initially though of storing all the logs into AWS Aurora RDS instance but it gave performance issues. We resolved this by using in-memory storage of Redis. as an Elasticache service of AWS.

## Accomplishments that we're proud of
1) Achieving major stand up meeting tasks used in Agile just by providing simple voice input and automating task movements and changes on the JIRA Scrum Board.
2) Reducing each team member's effort and time put in,thereby eliminating need of a physical Scrum Master.
3) Using a variety of technologies including DevOps skills to solve a problem related to widely practised Agile methodology in the software industry - which means for thousands of organizations.
3) Building CI/CD pipeline to make deployment faster and successfully integrating the various parts and services used for our project. 

## What we learned
1) Using REST APIs to implement methods for Java service.
2) Writing Alexa skills and training it for customized events.
3) Automating actions on two different platforms (google calendar and JIRA board) by providing just voice input.


## What's next for Emma Bot as Scrum Master
1) Implementing more functionalities like notes/comment taking from user for his/her tasks.
2) Creating sprints/issues although this would require more user input and larger voice inputs will tend to have more errors.
3) Make it a cross-platform bot service , example any other Scrum Board softwares like Trello could be used.



## Why this project?

The project was simply for a (lazy)lawyer friend who wanted to know if he had to go to court. The information is provided everyday in the form \
of a pdf by Madras High Court. This pdf contains a list of cases which are scheduled in the court, with information about the judge, the \
case number,the lawyers, the court number and so on for each of the cases. The objective of this version is to find if a specific lawyer\
has a case he has to attend to.

## How does this work?
The python application downloads and parses the pdf, and searches for the name. \
The ps executable calls the python app and sends a notification by email.

## Why the powershell script?
The power shell script can be added to the task scheduler present in windows so everything is automated!

## Drawbacks
You only have information about whether you're name is present or not.\
The computer has to turned on when the script is run by the task scheduler

## Improvements?
Check out -> [Version1](https://github.com/kirank215/courtv1)

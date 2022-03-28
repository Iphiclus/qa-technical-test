Feature: Calculate holiday entitlement

    As an employed UK citizen
    I want to be able to calculate how much holiday entitlement I am entiled to using the online calculator

    Background:
        Given the URL 'https://www.gov.uk/calculate-your-holiday-entitlement'

    Scenario: I want to check my holiday entitlement using days worked per week
        Given I go to the URL
        When I make my selections based on the following questions
            | Question                             | Answer                |
            | Is the holiday entitlement based on: | days worked per week  |
            | Do you want to work out holiday      | for a full leave year |
            | Number of days worked per week?      | 5                     |
        Then my statutory holiday entitlement is 28 days holiday

    Scenario: I want to check my holiday entitlement when my job has started part way through the year
        Given I go to the URL
        When my holiday entitlement is based on days worked per week
        And the employment start date is 01/03/2022
        And the leave year starts on the 1st of January
        And the number of days worked per week is 5 days
        Then my statutory holiday entitlement is displayed
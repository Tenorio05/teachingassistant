Feature: Performance Comparison
As a professor
I want to see the classes performance graph
So that I can compare the classes of a course

Scenario: Comparing students frequency in the graph
Given I am at the performance comparison page
And I see the graph showing "Students grades average" x "Classes"
When I set the graph to show "Students frequency average"
Then I can see the graph showing "Students frequency average" x "Classes"

Scenario: Comparing classes pass rate in the graph
Given I am at the performance comparison page
And I see the graph showing "Students grades average" x "Classes"
When I set the graph to show "Pass rate"
Then I can see the graph showing "Pass rate" x "Classes"

Scenario: Filtering the performance graph by a specific semester
Given I am at the performance comparison page
And the graph displays the classes "T01" and "T02" from semester "2025.2"
When I apply a filter for semester "2026.1"
Then the graph updates to show the classes "Q1", "Q2" and "Q3"
And the classes "Q1", "Q2" and "Q3" are all and only the classes from semester "2026.1"
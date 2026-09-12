Feature: Performance Comparison
As a professor
I want to see the classes performance graph
So that I can compare the classes of a course

Scenario: Comparing students frequency in the graph
Given I am at the performance comparison page
And I see the graph showing "Students grades average" x "Classes"
When I set the graph to show "Students frequency average"
Then I can see the graph showing "Students frequency average" x "Classes"
And I can see the options "PNG" and "PDF" to download the graph

Scenario: Comparing classes pass rate in the graph
Given I am at the performance comparison page
And I see the graph showing "Students grades average" x "Classes"
When I set the graph to show "Pass rate"
Then I can see the graph showing "Pass rate" x "Classes"

Scenario: Displaying multiple classes from the same period accurately
Given I am at the performance comparison page
When I select the "Attendance rate" category for semesters "2024.2" and "2025.1"
And semester "2024.2" contains classes "T1" and "T2"
And semester "2025.1" also contains classes "T1" and "T2"
Then the graph shows "2024.2" classes as "24.2 - T1" and "24.2 - T2" on the x-axis
And the graph shows "2025.1" classes as "25.1 - T1" and "25.1 - T2" after "2024.2" classes on the x-axis
And the "Attendance rate" for classes "24.2 - T1", "24.2 - T2", "25.1 - T1" and "25.1 - T2" is plotted on the y-axis

Scenario: Filtering the performance graph by a specific semester
Given I am at the performance comparison page
And the graph displays the classes "T1" and "T2" from semester "2025.2"
When I apply a filter for semester "2026.1"
Then the graph updates to show the classes "Q1", "Q2" and "Q3"
And the classes "Q1", "Q2" and "Q3" are all and only the classes from semester "2026.1"

Scenario: Filtering the performance chart by specific academic semesters
Given I am at the "Performance Comparison" page for the course "ESS"
And the line chart shows the classes "ESS 2024.2", "ESS 2025.1", "ESS 2025.2" and "ESS 2026.1" on the x-axis
When I filter the chart to include only the semesters "2025.2" and "2026.1"
And I select the category "Arithmetic Average"
Then the line chart shows only the classes "ESS 2025.2" and "ESS 2026.1" on the x-axis
And the chart shows an arithmetic average of "7.8" for class "ESS 2025.2" and "8.1" for class "ESS 2026.1" on the y-axis

Scenario: Selecting a different category displays a separate chart
Given I am at the "Performance Comparison" page for the course "ESS"
And I am viewing the "Arithmetic Average" chart for the classes "ESS 2025.2" and "ESS 2026.1"
When I select the category "Number of entering students"
Then a new chart named "Number of entering students" is displayed, separate from the "Arithmetic Average" chart
And the new chart shows the classes "ESS 2025.2" and "ESS 2026.1" on the x-axis
And the new chart shows "45" entering students for class "ESS 2025.2" and "50" entering students for class "ESS 2026.1" on the y-axis
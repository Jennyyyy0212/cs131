# CS 131 Processing Big Data: Mini Project

## Data 
State-Level Data from https://github.com/nytimes/covid-19-data (us-state.csv)

## Project Objectives
<ul>
 <li>Analyze the trend of COVID-19 cases and deaths in the US by state until now.</li>
 <li>Identify the states with the highest number of cases and deaths.</li>
 <li>Visualize the trend of cases and deaths over time for the US and individual states.</li>
</ul>

## Metadata of the Dataset:
<ul>
 <li>Number of Entries: 61942</li>
 <li>Features: Date, State, FIPS, Cases, Deaths</li>
 <li>More information: https://docs.google.com/document/d/1jHpRmtLUjgNutriAcdjOc44gie6HIJTbvjgFWUz_MG4/edit?usp=sharing</li>
</ul>

## Nontrivial Information from the Dataset
<ul>
 <li>The first recorded case in the US was in Washington on January 21, 2020.</li>
 <li>California has the highest number of cases and deaths among all states. (state-numberofcase.txt, state-numberofdeath.txt)</li>
 <li>The number of cases and deaths have fluctuated significantly over time, with several spikes and dips in the trend. ( (cases_and_deaths.svg , covid.svg) </li>
 <li>New Jersey has the highest death rate among all states. (death_percentage.svg)</li>
</ul>

## Interesting Data Trends
<ul>
 <li>There has been a consistent increase in the number of cases and deaths in the US since March 2020, with a significant spike around January 2021 and January 2022. (cases_and_deaths.svg)</li>
 <li>The Covid-19 death rate experienced two peaks, one in March 2020 and another in May 2020, but has been steadily decreasing since then. (death_rate_overtime.svg)</li>
 <li>Despite having the 11th highest number of Covid-19 cases and deaths, New Jersey has the highest death rate among all U.S. states, while California, which has the highest number of cases and deaths, has a much lower death rate than the national average. (death_percentage.svg, state_totals.svg)</li>
</ul>

## Visualizations
<ul>
  <li>Line plot of the number of cases and deaths over time (cases_and_deaths.svg)</li>
  <li>Line plot of the percentage of death over time (death_rate_overtime.svg)</li>
  <li>Bar plot of the total number of cases and deaths by state. (state_totals.svg)</li>
  <li>Bar plot of the percentage of death over case by state. (death_percentage.svg)</li>
</ul>



# Overview
Welcome to my MADA project! Below, I will outline my project submissions by part throughtout the semester. Please see the bottom section for instructions on reproducing my project. 

# Project Part 1: Proposal
My proposal for part 1 of the project can be found in the products folder (`proposal.Rmd` and `proposal.html`)

# Project Part 2: Data Wrangling and Exploration
I plan to write my project report in the style of a manuscript, so my loading/cleaning/wrangling steps will be documented in supplementary files. 

I pulled additional data from a couple of different sources to supplement my primary data. The files where these data are loaded and processed are located in the `code/processing_code` folder, and all necessary raw data is located in `data/raw_data`. The output from the processing codes is located in `processed_data`. 

My main text output for the Project Part 2 submission is the `exploration.Rmd` file located under `code/analysis_code`. For this part of the project, I spent a large portion of time attaining/cleaning/wrangling additional data to supplement my own original data. For this reason, my exploration is not as far along as I plan for it to be quite yet. I have explored distribution of microplastic levels, and relationships between MP levels and population and bacteria level. I need to further explore proximity to water reclamation facility effluent and land cover as the project continues.

# Project Part 3: Beginning Analysis
At this project checkpoint, I have continued to work on data exploration and have begun the analysis/modeling portion of the project. There are some additions to my manuscript, including exploratory figures and initial models. I'm working on configuring the style to match the requirements for a conference where my abstract was accepted (reference issue now resolved as well). I have also changed my methods for acquiring population data (from zip code to census tract), and I have figured out how to calculate another variable, distance from nearest water reclamation facility. The UOWN data from July 2021 is also now available and has been added to my project. 

Some thoughts going forward:
 - Considering compiling processing files to decrease how many Rmd are needed to reproduce.
 - Having issues with figuring numbering in the `Manuscript.Rmd` word doc output; also trying to customize style output to fit certain publishing requirements
 - Not seeing super obvious relationships between outcome/predictors - unsure about the quality of modeling I'll be able to produce (?)
 - Still need to write up a section on data processing/wrangling to include in the manuscript (with main code in the supplementary file)


# Reproducing this project
All required data files are located within this R.project file on GitHub. Run scripts in this order:
1. mpprocessing.R
2. uownprocessing.Rmd
3. censusprocessing.Rmd
4. censusland_code.Rmd
5. wrfprocessing.Rmd
6. exploration.Rmd
7. analysis.Rmd




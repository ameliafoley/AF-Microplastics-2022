The mpprocessing.R is the initial code to load, clean, and wrangle the raw data. It produces products that will be used later in the analysis code. 

#Order of scripts:
1. *mpprocessing.R*
 - requires: mp_dataALL.xlsx, uown 8.26.xlsx
 - produces: cleansampledata, volunteer, controldata
2. *uownprocessing.Rmd*
 - requires: UOWN_spring2021.csv, uown_summer2021_qtrly.csv, cleansampledata
 - produces: cleanuowndata, combodata
3. *censusprocessing.Rmd*
 - requires: zippop, combodata, nhgis0001_ds244_20195_tract.csv
 - produces: popdata, fips, tractpopdata
4. *censusland_code.Rmd*
 - requires: landcover2015.csv, tractpopdata
 - produces: athensland
5. *wrfprocessing.Rmd*
 - requires: popdata, wrflocation
 - produces: mpwrfdata, mpwrfcombo
6. *exploration.Rmd*
 - requires: popdata, tractpopdata
 - produces: multiple plots
7. *analysis.Rmd*
 - requires: mpwrfcombo
 - produces: various modeling fits, subset_data.rds
8. *modeling.Rmd*
 - requires: mpwrfcombo
 - produces: model_grid and individual plots for model performance
9. *subset_modeling.Rmd*
 - requires: data_subset
 - produces: LASSO fit on a subset of data
10. *land_model.Rmd*
 - requires: athensland
 - produces: LASSO model including land use data
11. *map_images*
 - requires: results/maps
 - produces: map_grid

 
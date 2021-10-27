--------------------------------------------------------------------------------
Documentation for US_tract_2015_nlcd.csv   
NHGIS land cover summaries with GISJOIN identifiers
--------------------------------------------------------------------------------
 
Contents
    - Data Summary
    - Data Dictionary
    - Notes
    - References
    - Citation and Use
 
Additional documentation on NHGIS environmental summaries is available at:
    https://www.nhgis.org/user-resources/environmental-summaries

--------------------------------------------------------------------------------
Data Summary
--------------------------------------------------------------------------------
 
Time series layout:     Time varies by column
Geographic level:       Tract
Geographic vintage:     2015
Land cover vintage:     2001, 2006, 2011

Files:  US_tract_2015_nlcd.csv     

Content:
	- The top row is a header row
	- Each subsequent row represents an 2015 US tract
	- The GISJOIN field contains NHGIS-standard county identifiers:
		- A county GISJOIN is a concatenation of:
			- "G"
			- State NHGIS code: 3 digits (FIPS + "0")
			- County NHGIS code: 4 digits (FIPS + "0")
			- Census tract code: 6 digits
	- The AREA fields are in square meters.
	- The PROPXX_AREA fields report the proportion of the tract's area that
	  is covered by the XX land cover class. The formula used to compute 
	  PROPXX_AREA is:
		- PROPXX_AREA = AREAXX_YYYY / AREA
		  where AREAXX_YYYY is the area of land cover class XX for year 
		  YYYY in the tract, and AREA is the total area of the tract.
		- YYYY has three possible values: 2001, 2006, and 2011.  
		
--------------------------------------------------------------------------------
Data Dictionary
--------------------------------------------------------------------------------
        GISJOIN:       GIS Join Match Code
        AREA:          Tract area
	AREA11_2001:   2001: Area of land cover class 11, open water 
	AREA12_2001:   2001: Area of land cover class 12, perennial ice/snow
	AREA21_2001:   2001: Area of land cover class 21, developed, open space 
	AREA22_2001:   2001: Area of land cover class 22, developed, low intensity 
	AREA23_2001:   2001: Area of land cover class 23, developed, medium intensity 
	AREA24_2001:   2001: Area of land cover class 24, developed, high intensity 
	AREA31_2001:   2001: Area of land cover class 31, barren land (rock/sand/clay)
	AREA41_2001:   2001: Area of land cover class 41, deciduous forest 
	AREA42_2001:   2001: Area of land cover class 42, evergreen forest 
	AREA43_2001:   2001: Area of land cover class 43, mixed forest 
	AREA52_2001:   2001: Area of land cover class 52, shrub/scrub
	AREA71_2001:   2001: Area of land cover class 71, grassland/herbaceous   
	AREA81_2001:   2001: Area of land cover class 81, pasture/hay
	AREA82_2001:   2001: Area of land cover class 82, cultivated crops 
	AREA90_2001:   2001: Area of land cover class 90, woody wetlands 
	AREA95_2001:   2001: Area of land cover class 95, emergent herbaceous wetlands 
	PROP11_2001:   2001: Proportion of county covered by land cover class 11, open water 
	PROP12_2001:   2001: Proportion of county covered by land cover class 12, perennial ice/snow
	PROP21_2001:   2001: Proportion of county covered by land cover class 21, developed, open space 
	PROP22_2001:   2001: Proportion of county covered by land cover class 22, developed, low intensity 
	PROP23_2001:   2001: Proportion of county covered by land cover class 23, developed, medium intensity 
	PROP24_2001:   2001: Proportion of county covered by land cover class 24, developed, high intensity 
	PROP31_2001:   2001: Proportion of county covered by land cover class 31, barren land (rock/sand/clay)
	PROP41_2001:   2001: Proportion of county covered by land cover class 41, deciduous forest 
	PROP42_2001:   2001: Proportion of county covered by land cover class 42, evergreen forest 
	PROP43_2001:   2001: Proportion of county covered by land cover class 43, mixed forest 
	PROP52_2001:   2001: Proportion of county covered by land cover class 52, shrub/scrub
	PROP71_2001:   2001: Proportion of county covered by land cover class 71, grassland/herbaceous   
	PROP81_2001:   2001: Proportion of county covered by land cover class 81, pasture/hay
	PROP82_2001:   2001: Proportion of county covered by land cover class 82, cultivated crops 
	PROP90_2001:   2001: Proportion of county covered by land cover class 90, woody wetlands 
	PROP95_2001:   2001: Proportion of county covered by land cover class 95, emergent herbaceous wetlands 
	AREA11_2006:   2006: Area of land cover class 11, open water 
	AREA12_2006:   2006: Area of land cover class 12, perennial ice/snow
	AREA21_2006:   2006: Area of land cover class 21, developed, open space 
	AREA22_2006:   2006: Area of land cover class 22, developed, low intensity 
	AREA23_2006:   2006: Area of land cover class 23, developed, medium intensity 
	AREA24_2006:   2006: Area of land cover class 24, developed, high intensity 
	AREA31_2006:   2006: Area of land cover class 31, barren land (rock/sand/clay)
	AREA41_2006:   2006: Area of land cover class 41, deciduous forest 
	AREA42_2006:   2006: Area of land cover class 42, evergreen forest 
	AREA43_2006:   2006: Area of land cover class 43, mixed forest 
	AREA52_2006:   2006: Area of land cover class 52, shrub/scrub
	AREA71_2006:   2006: Area of land cover class 71, grassland/herbaceous   
	AREA81_2006:   2006: Area of land cover class 81, pasture/hay
	AREA82_2006:   2006: Area of land cover class 82, cultivated crops 
	AREA90_2006:   2006: Area of land cover class 90, woody wetlands 
	AREA95_2006:   2006: Area of land cover class 95, emergent herbaceous wetlands 
	PROP11_2006:   2006: Proportion of county covered by land cover class 11, open water 
	PROP12_2006:   2006: Proportion of county covered by land cover class 12, perennial ice/snow
	PROP21_2006:   2006: Proportion of county covered by land cover class 21, developed, open space 
	PROP22_2006:   2006: Proportion of county covered by land cover class 22, developed, low intensity 
	PROP23_2006:   2006: Proportion of county covered by land cover class 23, developed, medium intensity 
	PROP24_2006:   2006: Proportion of county covered by land cover class 24, developed, high intensity 
	PROP31_2006:   2006: Proportion of county covered by land cover class 31, barren land (rock/sand/clay)
	PROP41_2006:   2006: Proportion of county covered by land cover class 41, deciduous forest 
	PROP42_2006:   2006: Proportion of county covered by land cover class 42, evergreen forest 
	PROP43_2006:   2006: Proportion of county covered by land cover class 43, mixed forest 
	PROP52_2006:   2006: Proportion of county covered by land cover class 52, shrub/scrub
	PROP71_2006:   2006: Proportion of county covered by land cover class 71, grassland/herbaceous   
	PROP81_2006:   2006: Proportion of county covered by land cover class 81, pasture/hay
	PROP82_2006:   2006: Proportion of county covered by land cover class 82, cultivated crops 
	PROP90_2006:   2006: Proportion of county covered by land cover class 90, woody wetlands 
	PROP95_2006:   2006: Proportion of county covered by land cover class 95, emergent herbaceous wetlands 	
	AREA11_2011:   2011: Area of land cover class 11, open water 
	AREA12_2011:   2011: Area of land cover class 12, perennial ice/snow
	AREA21_2011:   2011: Area of land cover class 21, developed, open space 
	AREA22_2011:   2011: Area of land cover class 22, developed, low intensity 
	AREA23_2011:   2011: Area of land cover class 23, developed, medium intensity 
	AREA24_2011:   2011: Area of land cover class 24, developed, high intensity 
	AREA31_2011:   2011: Area of land cover class 31, barren land (rock/sand/clay)
	AREA41_2011:   2011: Area of land cover class 41, deciduous forest 
	AREA42_2011:   2011: Area of land cover class 42, evergreen forest 
	AREA43_2011:   2011: Area of land cover class 43, mixed forest 
	AREA52_2011:   2011: Area of land cover class 52, shrub/scrub
	AREA71_2011:   2011: Area of land cover class 71, grassland/herbaceous   
	AREA81_2011:   2011: Area of land cover class 81, pasture/hay
	AREA82_2011:   2011: Area of land cover class 82, cultivated crops 
	AREA90_2011:   2011: Area of land cover class 90, woody wetlands 
	AREA95_2011:   2011: Area of land cover class 95, emergent herbaceous wetlands 
	PROP11_2011:   2011: Proportion of county covered by land cover class 11, open water 
	PROP12_2011:   2011: Proportion of county covered by land cover class 12, perennial ice/snow
	PROP21_2011:   2011: Proportion of county covered by land cover class 21, developed, open space 
	PROP22_2011:   2011: Proportion of county covered by land cover class 22, developed, low intensity 
	PROP23_2011:   2011: Proportion of county covered by land cover class 23, developed, medium intensity 
	PROP24_2011:   2011: Proportion of county covered by land cover class 24, developed, high intensity 
	PROP31_2011:   2011: Proportion of county covered by land cover class 31, barren land (rock/sand/clay)
	PROP41_2011:   2011: Proportion of county covered by land cover class 41, deciduous forest 
	PROP42_2011:   2011: Proportion of county covered by land cover class 42, evergreen forest 
	PROP43_2011:   2011: Proportion of county covered by land cover class 43, mixed forest 
	PROP52_2011:   2011: Proportion of county covered by land cover class 52, shrub/scrub
	PROP71_2011:   2011: Proportion of county covered by land cover class 71, grassland/herbaceous   
	PROP81_2011:   2011: Proportion of county covered by land cover class 81, pasture/hay
	PROP82_2011:   2011: Proportion of county covered by land cover class 82, cultivated crops 
	PROP90_2011:   2011: Proportion of county covered by land cover class 90, woody wetlands 
	PROP95_2011:   2011: Proportion of county covered by land cover class 95, emergent herbaceous wetlands 	
	
--------------------------------------------------------------------------------
Notes
--------------------------------------------------------------------------------

The following process was used to create the land cover summaries:

	1. Download the 2001, 2006, and 2011 land cover data as georeferenced 
	   raster files.
	2. Extract each land cover class into its own raster dataset.
	3. For each class-specific dataset, execute ArcGIS 10.4.1 Zonal 
	   Statistics As Table tool. The Zonal Statistics As Table tool takes 
	   two input datasets - a land cover class-specific raster file and a 
	   polygon dataset. For each polygon, the tool calculates the area how 
	   much of its area is covered by the land cover class.
	4. Compute the proportion of the polygon's area covered by the land 
	   cover class.

--------------------------------------------------------------------------------
References
--------------------------------------------------------------------------------

The National Land Cover Database (NLCD) can be obtained from
https://www.mrlc.gov/index.php

More details about the methodology used to create the NLCD can be found in the 
following publications:

	Homer, C.G., Dewitz, J.A., Yang, L., Jin, S., Danielson, P., Xian, G., Coulston, J., Herold, N.D., Wickham, J.D., and Megown, K., 2015, Completion of the 2011 National Land Cover Database for the conterminous United States-Representing a decade of land cover change information. "Photogrammetric Engineering and Remote Sensing", v. 81, no. 5, p. 345-354 

	Fry, J., Xian, G., Jin, S., Dewitz, J., Homer, C., Yang, L., Barnes, C., Herold, N., and Wickham, J., 2011. Completion of the 2006 National Land Cover Database for the Conterminous United States, "PE&RS", Vol. 77(9):858-864.

	Homer, C., Dewitz, J., Fry, J., Coan, M., Hossain, N., Larson, C., Herold, N., McKerrow, A., VanDriel, J.N., and Wickham, J. 2007. Completion of the 2001 National Land Cover Database for the Conterminous United States. "Photogrammetric Engineering and Remote Sensing", Vol. 73, No. 4, pp 337-341. 

--------------------------------------------------------------------------------
Citation and Use
--------------------------------------------------------------------------------
 
All persons are granted a limited license to use this documentation and the
accompanying data, subject to the following conditions:

* Publications and research reports employing NHGIS data must cite it appropriately. The citation should include the following:

    Steven Manson, Jonathan Schroeder, David Van Riper, and Steven Ruggles. 
    IPUMS National Historical Geographic Information System: Version 12.0 [Database]. 
    Minneapolis: University of Minnesota. 2017. 
    http://doi.org/10.18128/D050.V12.0

* For policy briefs or articles in the popular press, we recommend that you cite the use of NHGIS data as follows:

    IPUMS NHGIS, University of Minnesota, www.nhgis.org.

In addition, we request that users send us a copy of any publications, research
reports, or educational material making use of the data or documentation.
Printed matter should be sent to:

    IPUMS NHGIS
    Minnesota Population Center
    University of Minnesota
    50 Willey Hall
    225 19th Ave S
    Minneapolis, MN 55455

Send electronic material to: nhgis@umn.edu
The Tide Model Driver (TMD)
---------------------------

Several models (listed below) are available to interested researchers. The model grid files are formatted to match the Oregon State Tidal Inversion Software (OTIS) format, and can be accessed using FORTRAN-based OSU Tidal Prediction Software (OTPS) code. ESR provides Matlab software, the Tide Model Driver (TMD) package, to access all the listed models and to make tidal predictions. TMD includes both a Graphical User Interface (GUI) and lower-level scripts. The TMD package is available following the links for model grids. See README_TMD.pdf for a detailed description of the software.

Model Comparisons to Altimetric and GPS-derived Elevation
---------------------------------------------------------

The ocean tide models all report ocean tide, i.e., the variation about mean sea level of the height of the ocean surface relative to the seabed. For some applications, e.g., removing tide from satellite-derived altimetric heights (e.g., detiding of satellite-derived ice shelf elevation), an additional tide correction is required to account for the deformation of the solid earth by the water above it. This so-called "load tide" is, generally, roughly out of phase with the ocean tide, and a few percent of the ocean tide. The model, TPXO7.2_load, can be used to calculate load tides, which would then be added to the ocean tide prediction to give the complete tidal correction to altimetry.

Two things to note:

1. Because tide loading affects the Earth's solid crust, it is non-zero even under continents, although it becomes very small tens of km inland from the coast.
2. Most satellite altimetry data sets already include tide corrections, including load tides. Make sure that you are not making tide corrections to data that have already been tide-corrected!

The Models
----------

* [Global 1/4o x 1/4o Inverse Model (TPXO7.2, from OSU)](ftp://ftp.oce.orst.edu/dist/tides/Global/tpxo.tar.Z)

* [Global 1/4o x 1/4o Inverse Load Tide Model (TPXO7.2_load, from OSU)](http://www.esr.org/~padman/tpxo7.2_load/)

* [AOTIM-5 Arctic Ocean 5 km Inverse Model](http://polaris.esr.org/polar_tide_models/Model_AOTIM5.html)

* [AODTM-5 Arctic Ocean 5 km Forward Model](http://polaris.esr.org/polar_tide_models/Model_AODTM5.html)

* [CATS2008 Circum-Antarctic Inverse Model](http://www.esr.org/polar_tide_models/Model_CATS2008a.html)

* [Antarctic Peninsula High-Res 1/30o x 1/60o (~2 km) Forward Model](http://polaris.esr.org/polar_tide_models/Model_AntPen0401.html)

* [Ross Sea 1/8o x 1/24o Forward Model](http://polaris.esr.org/polar_tide_models/Model_RossPrior.html)

* [Ross Sea Height-Based 1/4o x 1/12o Inverse Model](http://polaris.esr.org/polar_tide_models/Model_RossInv2002.html)

* [Ross Sea Velocity-Based 1/8o x 1/24o Inverse Model (RossTIM)](http://polaris.esr.org/polar_tide_models/Model_RossTIM.html)

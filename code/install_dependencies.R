# R package dependencies
# Applied Statistics for a Tropical Arboretum

# The scripts require R >= 4.1.0 because some workflows use the native pipe
# operator (|>). Exact package versions used to render the original HTML files
# were not recorded. This script therefore installs current versions of any
# required packages that are not already available in the user's R library.

required_packages <- c(
  "bestNormalize",
  "car",
  "cowplot",
  "DescTools",
  "DHARMa",
  "dplyr",
  "emmeans",
  "forcats",
  "ggeffects",
  "ggplot2",
  "ggpmisc",
  "ggrepel",
  "infer",
  "knitr",
  "lme4",
  "lmerTest",
  "lmtest",
  "MASS",
  "moments",
  "multcomp",
  "multcompView",
  "patchwork",
  "performance",
  "PMCMRplus",
  "RColorBrewer",
  "rgbif",
  "rmarkdown",
  "rstatix",
  "scales",
  "skimr",
  "stringi",
  "stringr",
  "tibble",
  "tidyr",
  "tidyverse",
  "treemapify"
)

installed_packages <- rownames(installed.packages())
missing_packages <- setdiff(required_packages, installed_packages)

if (length(missing_packages) == 0) {
  message("All required packages are already installed.")
} else {
  message(
    "Installing missing packages: ",
    paste(missing_packages, collapse = ", ")
  )

  install.packages(missing_packages)
}

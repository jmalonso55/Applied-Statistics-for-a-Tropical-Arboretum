# Applied Statistics for a Tropical Arboretum

This repository contains the datasets, R Markdown scripts, rendered analytical
outputs, and teaching materials associated with the study:

> *Dendrometric Data from a Tropical Arboretum as a Teaching Dataset and
> Baseline for Living Collection Monitoring*

The project uses a dendrometric census of the Rio de Janeiro Botanical Garden
Arboretum as a real-world dataset for teaching applied statistics. The analyses characterize the structure of the living collection at the
time of the census and provide a baseline for future monitoring.

## Project website

The teaching materials and rendered analyses are available at:

<https://jmalonso55.github.io/Applied-Statistics-for-a-Tropical-Arboretum/>

## Study and course context

The materials were developed for a graduate-level applied statistics course
offered by the Escola Nacional de Botânica Tropical of the Rio de Janeiro
Botanical Garden. The course combined statistical concepts with reproducible
analyses of an institutional living collection.

The repository also supports the associated manuscript, which reports the
teaching experience and presents selected dendrometric analyses. The
pedagogical component should be understood as a report of experience rather
than a formal evaluation of learning outcomes.

## Repository contents

| Path | Contents |
| --- | --- |
| [`data/`](data/) | Raw, intermediate, and processed datasets, plus the data dictionary |
| [`code/`](code/) | R Markdown source files and the dependency installation script |
| [`analysis/`](analysis/) | Rendered HTML outputs, including anonymized student assignments |
| [`index.html`](index.html) | Home page for the published teaching website |
| [`LICENSE`](LICENSE) | CC BY-NC 4.0 terms for the repository contents |
| [`README.md`](README.md) | Repository description and instructions |

## Data

| File | Description |
| --- | --- |
| [`data/raw_data.csv`](data/raw_data.csv) | Original working dataset, containing 10,106 records |
| [`data/pre_processed_data.csv`](data/pre_processed_data.csv) | Intermediate dataset after initial filtering and organization |
| [`data/processed_data.csv`](data/processed_data.csv) | Analysis-ready dataset containing 4,621 individuals |
| [`data/data_dictionary.csv`](data/data_dictionary.csv) | Definitions, units, types, and notes for all variables |

The processed dataset contains 3,007 trees, 1,357 palms and other Arecaceae,
and 257 individuals in other growth-form categories. Processing included the
removal of dead individuals, the exclusion of records without height
measurements, the consolidation of multiple stems using equivalent diameter at
breast height, and the exclusion of two records considered likely measurement
or data-entry errors.

The variables include taxonomic identification, geographic position,
dendrometric measurements, wood density, and derived quantities. Wood density
is expressed in g/cmÂ³. The slenderness variable (`rel_hd`) is calculated as
height in metres divided by diameter at breast height in centimetres; therefore,
a 10 m tall tree with a diameter of 10 cm has a value of 1.

Coordinates were inherited from an earlier institutional inventory. Their
coordinate reference system and datum were not documented in the available
records; users should account for this limitation before spatial reuse.

## R Markdown scripts

| Script | Purpose |
| --- | --- |
| [`1_a_data_preprocessing.Rmd`](code/1_a_data_preprocessing.Rmd) | Data cleaning and preparation |
| [`1_b_updating_nomenclature.Rmd`](code/1_b_updating_nomenclature.Rmd) | Taxonomic nomenclature update |
| [`2_descriptive_analysis.Rmd`](code/2_descriptive_analysis.Rmd) | Descriptive statistics and visualization |
| [`3_probability_random_variables.Rmd`](code/3_probability_random_variables.Rmd) | Probability and random variables |
| [`4_inference_hypothesis_sampling.Rmd`](code/4_inference_hypothesis_sampling.Rmd) | Sampling, estimation, and hypothesis testing |
| [`5_regression.Rmd`](code/5_regression.Rmd) | Regression analyses |
| [`6_manuscript_code.Rmd`](code/6_manuscript_code.Rmd) | Analyses and figures used in the manuscript |

Scripts 1â€“5 correspond to the instructional sequence. Script 6 documents the
author-checked, rerun, and refined analytical workflow used for the manuscript;
it should not be interpreted as an unmodified student submission.

## Student assignments and instructor feedback

Two anonymized student assignments are preserved as part of the record of the
teaching experience:

- [Tree-group assignment (HTML)](analysis/grupo_arvores_corrigido.html)
- [Palm-group assignment (HTML)](analysis/grupo_palmeira_corrigido.html)
- [Tree-group source and instructor feedback (Rmd)](code/grupo_arvores_corrigido.Rmd)
- [Palm-group source and instructor feedback (Rmd)](code/grupo_palmeira_corrigido.Rmd)

The R Markdown files include instructor feedback in Portuguese. These materials
are shared with the agreement of the participating students, who are coauthors
of the associated manuscript and reviewed its contents. They remain accessible
by direct link but are intentionally excluded from the navigation of the
teaching website, which is intended for reuse in future courses.

## Software requirements

- R version 4.1.0 or later
- RStudio and Pandoc are recommended for rendering the R Markdown files
- Internet access is required because the scripts read data from the public
  GitHub repository and some steps query external services

Install the required R packages by running:

```r
source("code/install_dependencies.R")
```

The package list is maintained in
[`code/install_dependencies.R`](code/install_dependencies.R). Exact package
versions used in the original course were not recorded. Consequently, current
package versions may produce small numerical or graphical differences. Results
from external services, including taxonomic information retrieved from GBIF,
may also change over time.

## Reproducing the analyses

Clone or download the complete repository:

```bash
git clone https://github.com/jmalonso55/Applied-Statistics-for-a-Tropical-Arboretum.git
cd Applied-Statistics-for-a-Tropical-Arboretum
```

Install the dependencies and render a selected analysis. For example:

```r
source("code/install_dependencies.R")
rmarkdown::render("code/6_manuscript_code.Rmd")
```

The scripts intentionally retain the public GitHub URLs used to import the
datasets. A downloaded script can therefore run from another computer when an
internet connection is available. The existing HTML files can be opened
directly without rerunning the analyses.

## Interpretation and limitations

- The data represent a single census conducted in 2021â€“2022. They provide a
  baseline but do not, by themselves, demonstrate temporal change.
- The dataset derives from operational field records and is subject to the
  measurement and documentation limitations described in the data dictionary
  and manuscript.
- The coordinate reference system and datum are undocumented.
- Reproduction may be affected by changes in R packages and external services.

## Dataset creators and contributions

- **Jorge Makhlouta Alonso** â€” repository responsibility, data curation, data
  processing, documentation, and analytical workflow.
- **Bruno Coutinho Kurtz** â€” conceptualization, supervision, and institutional
  and botanical context.
- **ThaÃ­s Marques Hidalgo Almeida** â€” principal responsibility for field data
  collection.

Authorship of the associated manuscript is distinct from responsibility for the
dataset and repository.

## Related manuscript

Alonso, J. M.; Lopes, L. C. M.; Braga, L. R. T.; Cabral, J. J. P.; Cabrini,
M. D.; Plata-Castro, A. D.; Cruz, N. C.; Ferreira, L. F.; Gomes, L. R.;
Moraes, R. A. S. M.; Oliveira, M. V. C. S.; Souza, L. G. M. P.; and Kurtz,
B. C. *Dendrometric Data from a Tropical Arboretum as a Teaching Dataset and
Baseline for Living Collection Monitoring*. Manuscript under review.

## Citation

Until a DOI is assigned, cite the repository as:

> Alonso, J. M.; Kurtz, B. C.; Almeida, T. M. H. (2026). *Applied Statistics
> for a Tropical Arboretum: Dendrometric Data, Teaching Materials, and
> Analytical Code* (Version 1.0.0) [Dataset]. GitHub.
> <https://github.com/jmalonso55/Applied-Statistics-for-a-Tropical-Arboretum>

After the GitHub release is archived in Zenodo, replace the provisional citation
above with:

> Alonso, J. M.; Kurtz, B. C.; Almeida, T. M. H. (2026). *Applied Statistics
> for a Tropical Arboretum: Dendrometric Data, Teaching Materials, and
> Analytical Code* (Version 1.0.0) [Dataset]. Zenodo.
> https://doi.org/TO-BE-ASSIGNED

The version-specific Zenodo DOI should be cited when referring to the archived
materials used in the manuscript.

## License

Except for separately identified third-party material, the repository contents
are licensed under the
[Creative Commons Attribution-NonCommercial 4.0 International License
(CC BY-NC 4.0)](https://creativecommons.org/licenses/by-nc/4.0/).
Reuse and adaptation are permitted with appropriate attribution for
noncommercial purposes. Commercial use requires separate permission from the
rights holders. See [`LICENSE`](LICENSE) for details.

## Contact

Jorge Makhlouta Alonso<br>
Rio de Janeiro Botanical Garden Research Institute<br>
<jorge.alonso@jbrj.gov.br>

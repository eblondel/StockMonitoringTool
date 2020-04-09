getDataConsiderationTextForCmsy <- function() {
  text <- "<strong>Use the sample dataset as a template to prepare your data.</strong><br/>"
  text <- paste0(text, "Mandatory fields to run CMSY are")
  text <- paste0(text, "<ul>")
  text <- paste0(text, "<li>Stock (fish stock name)</li>")
  text <- paste0(text, "<li>Yr (year of the catch)</li>")
  text <- paste0(text, "<li>Ct (catch)</li>")
  text <- paste0(text, "<li>bt (biomass estimates, if available; otherwise input “NA”)</li>")
  text <- paste0(text, "</ul>")
  text <- paste0(text, "<br/>")
  text <- paste0(text, "<p>Other columns are identifiers that you may choose to include, but they are not necessary to run the model.</p>")
  text <- paste0(text, "<br/>")
  text <- paste0(text, "<p>Ensure your data are in .csv format and use a “.” to separate decimals in the data.</p>")
  text <- paste0(text, "<br/>")
  text <- paste0(text, "<h5><p><b>Please ensure your time-series at least 15 years in length from starting year to ending year.<br> (Note that years with missing data should be filled with an 'NA' value.</b></p></h5>")
  text <- paste0(text, "<h5>", "**If desired, the life history parameters pulled from FishBase.org in the Supporting Tools: 'Natural Mortality Estimators' tool could be used to provide estimates of natural mortality (M) for the Optional Parameters section.", "</h5>")
  text
}

getDataConsiderationTextForElefan <- function() {
  text <- "<b>Mandatory fields for ELEFAN are</b>"
  text <- paste0(text, "<ul>")
  text <- paste0(text, "<li>Mid-lengths : Length classes are inserted as rows in the first column of the dataset.</li>")
  text <- paste0(text, "<li>Catches (in number) per length class (rows) and per sampling time (columns).</li>")
  text <- paste0(text, "</ul>")
  text <- paste0(text, "<b>If you are creating your own dataset:</b>")
  text <- paste0(text, "<ul>")
  text <- paste0(text, "<li>", "Ensure that your input file has dates in one of the formats:<br/><ul><li>YYYY-MM-DD</li><li>YYYY/MM/DD</li></ul>", "</li>")
  text <- paste0(text, "<li>", "Ensure that your length-frequency data is representative of the full population. (If this is not so, then estimates of fishing mortality will be biased.)", "</li>")
  text <- paste0(text, "<li>", "Ensure that all age groups were sampled.", "</li>")
  text <- paste0(text, "<li>", "Ensure that the sample was from a range of areas where different life histories might live. (e.g., if juveniles occupy nearshore habitat and adults are offshore)", "</li>")
  text <- paste0(text, "<li>", "Ensure that a variety of gears with different selectivities used to collect the samples so that the samples contain multiple age groups.", "</li>")
  text <- paste0(text, "</ul>")
  text <- paste0(text, "<h5>", "**If desired, the life history parameters pulled from FishBase.org in the Supporting Tools: 'Natural Mortality Estimators' tool could be used to provide estimates of ", withMathJax("\\(L_\\infty\\)"), " and von Bertalanffy K in the Optional Parameters section in the %%ELEFAN%% tool.", "</h5>")
  return (text)
}
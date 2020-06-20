Magento EU Tax Rates
====================

Starting from 1st of January 2015, EU tax regulation has changed regarding taxation. In some cases, 
instead of the original tax calculation,
where the seller took the tax rate from his own country, the tax now needs to be based on the country of
the seller. Most of these cases deal with the sales of digital goods or digital services.
Within Magento, this simply means that the tax is calculated using tax rates that differ per EU
country. This is not a repository that tries to answer the question whether you need this or not. Instead, if you or your
bookkeeper has decided that such tax calculation is indeed the case, this repository gives you the tax rates.

This repository contains a file `tax_rates_eu.csv` which can be imported into the Magento System Configuration 
to setup tax rates automatically.

## Usage Magento 1.x
Login to your Magento backend and navigate to `Sales > Tax > Import / Export Tax Rates`. 
Use `Export Tax Rates` to backup your previous rates. Use `Import Tax Rates` to upload the file 
`tax_rates_eu.csv` from this repository.

Note that the first row of the CSV is in English, and you'll need the English locale to be loaded for this CSV
to be imported correctly. To allow for this: Change the locale in the bottom of your Magento Admin Panel
to "English (United States)".

## Usage Magento 2.x
Login to your Magento backend and navigate to `System > Import/Export Tax Rates`. 
Use `Export Tax Rates` to backup your previous rates. Click on `Browse ...` and select the downloaded  file 
`tax_rates_eu.csv` from this repository and click on `Imnport Tax Rates`.

## Managing taxrates automatically with the Yireo TaxRatesManager extension
Periodically, tax rates change. When dealing with a busy Magento shop, you will want to change the tax rates as soon as the time is there, to prevent sales after
that date with the wrong tax rates. This is where our paid extension Yireo TaxRatesManager extension comes into the picture. It guarantees that a specific tax
rates is properly changed at the right date.

This commercial Yireo extension actually makes use of the information in this repository. The `feeds.json` file is used to get a listing of possible feeds, while
the naming convention of the other CSV files makes sure that on a specific date the right files switch. The extension relies on cron to be running. It also ships
with an automatic fixing ability via cron and via the backend: The backend option allows you to preview what kind of changes would be made at a specific date.

- Yireo TaxRatesManager extension for Magento 1: https://www.yireo.com/software/magento-extensions/taxratesmanager
- Yireo TaxRatesManager extension for Magento 2: https://www.yireo.com/software/magento-extensions/taxratesmanager2

## Disclaimer on correctness
We are not bookkeepers. We do not claim to be bookkeepers. If you want to make sure whether these tax rates apply to your own
store or not, make sure to consult your local bookkeeper instead.

We took the information from various third party sites like Wikipedia. The information might be incorrect.
If you have a better resource to base this CSV file off, please let us know.

This file has been tested so far on the following Magento versions:
* Magento CE 1.9
* Magento CE 1.8
* Magento CE 2.0
* Magento CE 2.1
* Magento CE 2.2
* Magento CE 2.3

Most likely this also works without issues on EE versions.

## We need help
We need your help. If you download this list and happen to find a mistake, please let us (and the community)
know through info@yireo.com.

More information is here:
- http://europa.eu/youreurope/business/vat-customs/buy-sell/
- http://www.vatlive.com/vat-rates/european-vat-rates/eu-vat-rates/
- https://github.com/yireo/Magento_EU_Tax_Rates/issues/url

## Testing
### Testing for TaxRatesManager functionality
Fork this GitHub repository and then add a specific file. Next, reconfigure your TaxRatesManager extension to use a
different CSV file.

### Testing for tax changes in the CSV files
For this GitHub repository and add a `diff` file in the `diff` folder following the naming standard of other files.
For instance, a diff file with a filename `diff/tax_rates_eu_2020-07-01.diff`. You can also use the script
`bin/create_diff.sh` to generate this file based on changes you have made to `tax_rates_eu.csv`.

Next, run the script `bin/apply_diff.sh`.

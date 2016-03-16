Magento EU Tax Rates
====================

Starting from 1st of January 2015, EU tax regulation has changed regarding taxation. In some cases, 
instead of the original tax calculation,
where the seller took the tax rate from his own country, the tax now needs to be based on the country of
the seller. Most of these cases deal with the sales of digital goods or digital services.
Within Magento, this simply means that the tax is calculated using tax rates that differ per EU
country. This is not a repository that tries to answer the question whether you need this or not. Instead, if you or your
bookkeeper has decided that such tax calculation is indeed the case, this repository gives you the tax rates.

This repository contains a file `tax_rates.csv` which can be imported into the Magento System Configuration 
to setup tax rates automatically.

## Usage
Login to your Magento backend and navigate to `Sales > Tax > Import / Export Tax Rates`. 
Use `Export Tax Rates` to backup your previous rates. Use `Import Tax Rates` to upload the file 
`tax_rates.csv` from this repository.

Note that the first row of the CSV is in English, and you'll need the English locale to be loaded for this CSV
to be imported correctly. To allow for this: Change the locale in the bottom of your Magento Admin Panel
to "English (United States)".

## Disclaimer on correctness
We are not bookkeepers. We do not claim to be bookkeepers. If you want to make sure whether these tax rates apply to your own
store or not, make sure to consult your local bookkeeper instead.

We took the information from various third party sites like Wikipedia. The information might be incorrect.
If you have a better resource to base this CSV file off, please let us know.

This file has been tested so far on the following Magento versions:
* Magento CE 1.9
* Magento CE 1.8

## We need help
We need your help. If you download this list and happen to find a mistake, please let us (and the community)
know through info@yireo.com.

More information is here:
http://europa.eu/youreurope/business/vat-customs/buy-sell/
http://www.vatlive.com/vat-rates/european-vat-rates/eu-vat-rates/
https://github.com/yireo/Magento_EU_Tax_Rates/issues/url

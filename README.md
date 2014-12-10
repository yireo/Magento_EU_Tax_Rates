Magento_EU_Tax_Rates
====================

Starting from 1st of January 2015, EU tax regulation changes. Instead of the original tax calculation,
where the seller took the tax rate from his own country, the tax now needs to be based on the country of
the seller. Within Magento, this simply means that the tax is calculated using tax rates that differ per EU
country.

This repository contains a file `tax_rates.csv` which can be imported into the Magento System Configuration 
to setup tax rates automatically.

## Usage
Login to your Magento backend and navigate to `Sales` > `Tax` > `Import / Export Tax Rates`. 
Use `Export Tax Rates` to backup your previous rates. Use `Import Tax Rates` to upload the file 
`tax_rates.csv` from this repository.


## Disclaimer
We took the information from various third party sites like Wikipedia. The information might be incorrect.
If you have a better resource to base this CSV file off, please let us know.

This file has been tested so far on the following Magento versions:
* Magento CE 1.9
* Magento CE 1.8

## We need help
We need your help. If you download this list and happen to find a mistake, please let us (and the community)
know through info@yireo.com.

## Used on
To give you an idea of who's using these rules, so that we can all blame each other, here is a list of sites
that use these ratings:
* Yireo webshop


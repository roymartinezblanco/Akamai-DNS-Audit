# AkamaiDNSAudit
This script will audit a list of DNS records to see if they are On Akamai's CDN.

![Sample Output](https://raw.githubusercontent.com/roymartinezblanco/AkamaiDNSAudit/master/assets/sampleOutput.png)

### Prerequisites
No especial requirements for this just that you have "dig" and "grep" on your machine.
* Dig
* grep

## Usage
```
sh AkamaiDig.sh [List of Domains]
````
Here is an example:

```
sh AkamaiDig.sh roymartinez.com www.akamai.com
```

This Script will optionally create a file on your *~/Download* folder
```
Export results to a file?(Y/N).
```

The output is the exact same as as shown here.
```
Domains within Akamai:
======================

www.akamai.com

Domains not pointed to an Akamai edgehostname:
=============================================

roymartinezblanco.com
```
# License

I am providing code and resources in this repository to you under an open source license. Because this is my personal repository, the license you receive to my code and resources is from me and not my employer (Akamai).

```
Copyright 2019 Roy Martinez

Creative Commons Attribution 4.0 International License (CC BY 4.0)

http://creativecommons.org/licenses/by/4.0/
```

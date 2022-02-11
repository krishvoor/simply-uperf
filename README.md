# simply-uperf
Standalone script to parse uperf stdout and get you a summary report, its a substitute of benchmark-wrapper on host client.
Configure server details in `uperf.xml` and run the script.

```
python3 uperf.py
{                                               
    "norm_byte_avg": "21.47 GB",
    "norm_ltcy_avg": 5.527672362374212, 
    "norm_ltcy_p95": 5.701739778930597,
    "norm_ltcy_p99": 6.713087208396643 
}                                      

```

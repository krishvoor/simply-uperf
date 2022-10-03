# What is simply-uperf
Standalone script to parse uperf stdout and get you a summary report, its a substitute of benchmark-wrapper on host client.

## Install dependencies 
Prior using, install the dependencies
```
export ENV_DIR=$(date +%s%3N)
python3 -m venv /tmp/${ENV_DIR}
source /tmp/${ENV_DIR}/bin/activate
pip install -r requirements.txt
```

## Usage
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

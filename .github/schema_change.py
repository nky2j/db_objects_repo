import yaml
from dotenv import load_dotenv
import os
load_dotenv()

SF_ACCOUNT=os.environ.get('SF_ACCOUNT')
SF_ROLE=os.environ.get('SF_ROLE')
SF_WAREHOUSE=os.environ.get('SF_WAREHOUSE')
SF_USERNAME=os.environ.get('SF_USERNAME')
#SNOWFLAKE_PRIVATE_KEY_PATH=os.environ.get('SNOWFLAKE_PRIVATE_KEY_PATH')
SF_DATABASE=os.environ.get('SF_DATABASE', None)
SF_SCHEMA=os.environ.get('SF_SCHEMA', None)
ROOT_FOLDER=os.environ.get('ROOT_FOLDER', None)

vars = {}

for key,value in os.environ.items():
    if (key.startswith("VAR_")):
        vars[key] = value
    elif (key.startswith("SECRET_")):
        vars[key] = value


#VAR_ENV_UC=os.environ.get('ENV_UC')

data = {
    "config-version" : 1,
    "snowflake-account" : SF_ACCOUNT,
    "snowflake-user" : SF_USERNAME,
    "snowflake-role" : SF_ROLE,
    "snowflake-warehouse" : SF_WAREHOUSE,
    "snowflake-database" : SF_DATABASE,
    "snowflake-schema" : SF_SCHEMA,
    "create-change-history-table": True,
    "vars" : vars,
    "autocommit": True,
    "root-folder": ROOT_FOLDER
}


with open("schemachange-config.yml","w") as f:
    yaml.dump(data, f, default_flow_style=False)
import os
import yaml

# Define the path to the YAML file
yaml_file_path = 'profiles.yml'

# Read the YAML file
with open(yaml_file_path, 'r') as file:
    yaml_content = yaml.safe_load(file)

# Update the 'spark' key with the value of the SPARK_HOME environment variable
spark_home = os.environ.get('SPARK_HOME')
yaml_content['mysql_employee']['outputs']['dev']['spark'] = spark_home

# Write the updated YAML content back to the file
with open(yaml_file_path, 'w') as file:
    yaml.dump(yaml_content, file)

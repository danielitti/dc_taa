# isa-cogs-bridge

The `isa-cogs-bridge` project contains the Python code needed for loading and transforming data from Base (S3) to COGS Bridge (S3). 

## Modularity
Large piece of code has been broken down into small independent parts (functions) based on their functionality. Each function is intended to perform a specific task and has inputs and outputs. These functions have been then grouped into modules (or python files) based on their usability, making in this way code maintainability easier:
* main.py: as suggested by the name, this is the module the execute the main code for loading and transforming the data;
* helpers.py: contains functions used by the main code, such as the ones to connect to AWS S3, Snowflake or compute waste cost; 
* data_quality_checks.py.py: contains the functions used to apply the data quality checks. This specific module has been created to centralise them and facilitate adding new ones. Every data quality check is represented by a distinct function so it is easy to locate them in case of need;
* config.py: module that groups all the different configurable parameters needed to run the project. E.g. AWS S3 connection details, Snowflake connection details, Data Quality checks' threshold.

## Readability
The code has been written with readability in mind, so that HF can read and maintain it in the future.
* variable names: they are self explanatory in order to make easy understanding what each variable contains;
* function names: they are self explanatory in order to make easy understanding what each function does; the name contains a verb that indicates the action they are performing (get, read, convert)
* comments: where relevant, comments have been added to clarify part of the code. Comments are following a specific convention:
  ** `#` represents a single line comment; 
  ** `## START` and `## END` encloses a code block. This is used to highlight a specific set of instructions that require attention; 
* docstring: at the beginning of each function definition, few lines of text describes the purpose of the function along with its inputs and outputs. The docstring contenct can be accessed using the `__doc__` method of the object or using the help function. Docstring can also be used in conjucntion with the doctest module to allow the easy generation of tests.

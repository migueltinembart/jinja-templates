# jinja-templates
<<<<<<< HEAD
jinja templates and a basic dependency for generating configuration files
=======

A wide collection of jinja2-templates for use in different environments.

## Usage

Made for use with the cli, but can also be used by every known jinja2 engine for use with different projects.

For every template or templatecollection, there is a payload.json which serves as the schema definition of the designated template.

You need to have **python3** installed if you want use the templates in the cli.

To get up and running follow the instructions below:

```bash
python3 install -r requirements.txt

## if your python3 packages are included in $PATH
jinja2 file.j2 payload.json 

## Write the output to a file
jinja2 file.j2 payload.json > result

## Pass in an input file and separate key=value pairs and combine it to an output

jinja2 file.j2 payload.json -D password=$(openssl passwd -6 randomPassword) > file
```
 
>>>>>>> d0e81b4 (Initial commit)

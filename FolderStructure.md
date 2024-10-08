# Folder Structure

For reference, the structure of this program is as follows:

```
apple_cloud_notes_parser
  |
  |-docker_scripts
  |  |
  |  |-build_all.sh: A shell script to build all relevant versions of the Docker container.
  |  |-linux_run_file.sh: Execute the docker version on NoteStore.sqlite in the present working directory
  |  |-mac_run_file.sh: Execute the docker version on NoteStore.sqlite in the present working directory
  |  |-mac_run_itunes.sh: Execute the docker version on each of the local Mac user's mobile backups
  |  |-mac_run_notes.sh: Execute the docker version on the local Mac user's Notes folder
  |  
  |-lib
  |  |
  |  |-notestore_pb.rb: Protobuf representation generated with protoc
  |  |-Apple\*.rb: Ruby classes dealing with various aspects of Notes
  |
  |-output (created after run)
  |  |
  |  |-[folders for each date/time run]
  |     |
  |     |-csv: This folder holds the CSV output
  |     |-debug_log.txt: A more verbose log to assist with debugging
  |     |-files: This folder holds files copied out of the backup, such as pictures
  |     |-html: This folder holds the generated HTML copy of the Notestore
  |     |-json: This folder holds the generated JSON summary of the Notestore
  |     |-Manifest.db: If run on an iTunes backup, this is a copy of the Manifest.db
  |     |-NoteStore.sqlite: If run on a modern version, this copy of the target file will include plaintext versions of the Notes
  |     |-notes.sqlite: If run on a legacy version, this copy is just a copy for ease of use
  |
  |-spec
  |  |
  |  |-backup: Test specs related to Backup classes.
  |  |-base_classes: Test specs related to foundational classes like AppleNote.
  |  |-data: Folder container test data. See [this file](spec/data/README.md) for the folder structure if you want to add data.
  |  |-embedded_objects: Test specs related to EmbeddedObjects. This needs the most work.
  |  |-integration: Test specs related to the full program running.
  |  |-output: Test specs related to how output should appear. WARNING, this may change as things are stablized.
  |  |-spec.rb: The base RSpec file.
  |  |-utilities: Test specs related to utility classes like AppleDecrypter.
  |  
  |-.gitignore
  |-.travis.yml
  |-Dockerfile: The Dockerfile for Github's Docker registry
  |-Gemfile
  |-LICENSE
  |-README.md
  |-Rakefile
  |-notes_cloud_ripper.rb: The main program itself
```

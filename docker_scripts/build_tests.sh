# Ruby 3.4
docker build -f dockerfiles/Dockerfile-Test-3.4 -t apple_notes_cloud_parser:test-3.4 .

# Ruby 3.3
docker build -f dockerfiles/Dockerfile-Test-3.3 -t apple_notes_cloud_parser:test-3.3 .

# Ruby 3.2
docker build -f dockerfiles/Dockerfile-Test-3.2 -t apple_notes_cloud_parser:test-3.2 .

# Ruby 3.1
docker build -f dockerfiles/Dockerfile-Test-3.1 -t apple_notes_cloud_parser:test-3.1 .

# Ruby 3.0
docker build -f dockerfiles/Dockerfile-Test-3.0 -t apple_notes_cloud_parser:test-3.0 .

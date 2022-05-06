  http --form POST http://192.168.0.38:8090/api/endpoints \
    "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlcm5hbWUiOiJhbnNpYmxlIiwicm9sZSI6MSwic2NvcGUiOiJkZWZhdWx0IiwiZXhwIjoxNjUxODk2NDUzfQ.14Tq9neJHThmzpKx0-LE5ulOL6sLmLN2MMksfOYfjEo" \
    Name="test-remote" URL="tcp://192.168.0.37:9091" EndpointCreationType=1

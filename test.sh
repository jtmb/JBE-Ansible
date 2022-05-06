http --form POST 192.168.0.38:8090/api/endpoints \
    "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlcm5hbWUiOiJhbnNpYmxlIiwicm9sZSI6MSwic2NvcGUiOiJkZWZhdWx0IiwiZXhwIjoxNjUxNzQxNjE5fQ.weXCZX2k2fG5my_XWm6VzS_-t-4Er5kUVoKOibGaSOM" \
    Name="test-remote" URL="http://192.168.0.37:9091" EndpointCreationType=1

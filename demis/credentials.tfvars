# Helm Registry Credentials
# Fill this with the credentials for GitHub to avoid rate limits
#helm_repository_username = "USERNAME_HERE"
#helm_repository_password = "PASSWORD_HERE"

# Pull Secrets - List of Credentials
# Fill this with the credentials for DockerHub to avoid rate limits
docker_pull_secrets = []
# docker_pull_secrets = [
#   {
#     name          = "dockerhub-pull-secret"
#     registry      = "docker.io/gematik1"
#     user_name     = ""
#     user_email    = "my-mail@gematik.de"
#     user_password = "" # DockerHub-Access Token
#     password_type = "plain"
#   }
# ]

# Database Credentials - List of all entries
database_credentials = [
  {
    username            = "postgres"
    password            = "dummy-password"
    secret-name         = "postgres-secret"
    secret-key-user     = "POSTGRES_USER"
    secret-key-password = "POSTGRES_PASSWORD"
  },
  {
    username            = "pseudo-admin"
    password            = "dummy-password"
    secret-name         = "pseudo-database-secret"
    secret-key-user     = "PSEUDO_DB_USER"
    secret-key-password = "PSEUDO_DB_PASSWORD"
  },
  {
    username            = "fhir-storage-writer-ddl"
    password            = "dummy-password"
    secret-name         = "fhir-storage-writer-ddl-database-secret"
    secret-key-user     = "FHIR_STORAGE_WRITER_DDL_DB_USER"
    secret-key-password = "FHIR_STORAGE_WRITER_DDL_DB_PASSWORD"
  },
  {
    username            = "fhir-storage-writer"
    password            = "dummy-password"
    secret-name         = "fhir-storage-writer-database-secret"
    secret-key-user     = "FHIR_STORAGE_WRITER_DB_USER"
    secret-key-password = "FHIR_STORAGE_WRITER_DB_PASSWORD"
  },
  {
    username            = "fhir-storage-reader"
    password            = "dummy-password"
    secret-name         = "fhir-storage-reader-database-secret"
    secret-key-user     = "FHIR_STORAGE_READER_DB_USER"
    secret-key-password = "FHIR_STORAGE_READER_DB_PASSWORD"
  },
  {
    username            = "fhir-storage-purger"
    password            = "dummy-password"
    secret-name         = "fhir-storage-purger-database-secret"
    secret-key-user     = "FHIR_STORAGE_PURGER_DB_USER"
    secret-key-password = "FHIR_STORAGE_PURGER_DB_PASSWORD"
  },
  {
    username            = "ars-pseudo-ddl"
    password            = "dummy-password"
    secret-name         = "ars-pseudo-ddl-database-secret"
    secret-key-user     = "ARS_PSEUDO_DDL_DB_USER"
    secret-key-password = "ARS_PSEUDO_DDL_DB_PASSWORD"
  },
  {
    username            = "ars-pseudo-user"
    password            = "dummy-password"
    secret-name         = "ars-pseudo-user-database-secret"
    secret-key-user     = "ARS_PSEUDO_USER_DB_USER"
    secret-key-password = "ARS_PSEUDO_USER_DB_PASSWORD"
  },
  {
    username            = "ars-pseudo-purger"
    password            = "dummy-password"
    secret-name         = "ars-pseudo-purger-database-secret"
    secret-key-user     = "ARS_PSEUDO_PURGER_DB_USER"
    secret-key-password = "ARS_PSEUDO_PURGER_DB_PASSWORD"
  },
  {
    username            = "destination_lookup_writer_ddl"
    password            = "dummy-password"
    secret-name         = "destination-lookup-writer-ddl-database-secret"
    secret-key-user     = "DESTINATION_LOOKUP_WRITER_DDL_DB_USER"
    secret-key-password = "DESTINATION_LOOKUP_WRITER_DDL_DB_PASSWORD"
  },
  {
    username            = "destination_lookup_writer"
    password            = "dummy-password"
    secret-name         = "destination-lookup-writer-database-secret"
    secret-key-user     = "DESTINATION_LOOKUP_WRITER_DB_USER"
    secret-key-password = "DESTINATION_LOOKUP_WRITER_DB_PASSWORD"
  },
  {
    username            = "destination_lookup_reader"
    password            = "dummy-password"
    secret-name         = "destination-lookup-reader-database-secret"
    secret-key-user     = "DESTINATION_LOOKUP_READER_DB_USER"
    secret-key-password = "DESTINATION_LOOKUP_READER_DB_PASSWORD"
  },
  {
    username            = "destination_lookup_purger"
    password            = "dummy-password"
    secret-name         = "destination-lookup-purger-database-secret"
    secret-key-user     = "DESTINATION_LOOKUP_PURGER_DB_USER"
    secret-key-password = "DESTINATION_LOOKUP_PURGER_DB_PASSWORD"
  },
  {
    username            = "ars-bulk-stats-ddl"
    password            = "dummy-password"
    secret-name         = "ars-bulk-stats-ddl-database-secret"
    secret-key-user     = "ARS_BULK_STATS_DDL_DB_USER"
    secret-key-password = "ARS_BULK_STATS_DDL_DB_PASSWORD"
  },
  {
    username            = "ars-bulk-stats-user"
    password            = "dummy-password"
    secret-name         = "ars-bulk-stats-user-database-secret"
    secret-key-user     = "ARS_BULK_STATS_USER_DB_USER"
    secret-key-password = "ARS_BULK_STATS_USER_DB_PASSWORD"
  },
  {
    username            = "ars-bulk-stats-purger"
    password            = "dummy-password"
    secret-name         = "ars-bulk-stats-purger-database-secret"
    secret-key-user     = "ARS_BULK_STATS_PURGER_DB_USER"
    secret-key-password = "ARS_BULK_STATS_PURGER_DB_PASSWORD"
  }
]

# PostgreSQL Certificates
postgres_root_ca_certificate = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNURENDQWZHZ0F3SUJBZ0lVYjMzZTBsUHQzMTRWTmNROFJZVm5Jcll5ZHVVd0NnWUlLb1pJemowRUF3SXcKY3pFTE1Ba0dBMVVFQmhNQ1JFVXhEekFOQmdOVkJBZ01Ca0psY214cGJqRVBNQTBHQTFVRUJ3d0dRbVZ5YkdsdQpNUlV3RXdZRFZRUUtEQXhuWlcxaGRHbHJJRWR0WWtneERqQU1CZ05WQkFzTUJVUkZUVWxUTVJzd0dRWURWUVFECkRCSkVSVTFKVXlCVVpYTjBJRkp2YjNRZ1EwRXdIaGNOTWpZd01UQTNNVEl3T1RBeVdoY05Nell3TVRBMU1USXcKT1RBeVdqQnpNUXN3Q1FZRFZRUUdFd0pFUlRFUE1BMEdBMVVFQ0F3R1FtVnliR2x1TVE4d0RRWURWUVFIREFaQwpaWEpzYVc0eEZUQVRCZ05WQkFvTURHZGxiV0YwYVdzZ1IyMWlTREVPTUF3R0ExVUVDd3dGUkVWTlNWTXhHekFaCkJnTlZCQU1NRWtSRlRVbFRJRlJsYzNRZ1VtOXZkQ0JEUVRCWk1CTUdCeXFHU000OUFnRUdDQ3FHU000OUF3RUgKQTBJQUJMY3FtL2VUOWVja09GTnBmMFRqN1dNd1dSdjJEQytuaHVFQ2EvVmp0dy9TZlIvWlhsN0Vzaklub2d4NAozODQzaW85c3RtU3duL3oyRnhEMmZScWtrdzJqWXpCaE1CMEdBMVVkRGdRV0JCVHBTalhQeGJ0eEU3Q0lzUGY3Ck0yTUNtb2RZQkRBZkJnTlZIU01FR0RBV2dCVHBTalhQeGJ0eEU3Q0lzUGY3TTJNQ21vZFlCREFQQmdOVkhSTUIKQWY4RUJUQURBUUgvTUE0R0ExVWREd0VCL3dRRUF3SUJoakFLQmdncWhrak9QUVFEQWdOSkFEQkdBaUVBL21FMwp0NWNYNGFhYjdocUlJcDJuMlZnc25ydTV3NE0rbm1LWXlrRUJhT2tDSVFDZmtsTDUvbjQ0V0oyUWZMWGR2b3BZCmVudG95NTNMWFhEUW02WDZEWFB1Wnc9PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
postgres_server_certificate  = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNxRENDQWs2Z0F3SUJBZ0lVYkIzcTZiRXI2K3VFVTFWeG5uRDVUQ1Q0aTM4d0NnWUlLb1pJemowRUF3SXcKZXpFTE1Ba0dBMVVFQmhNQ1JFVXhEekFOQmdOVkJBZ01Ca0psY214cGJqRVBNQTBHQTFVRUJ3d0dRbVZ5YkdsdQpNUlV3RXdZRFZRUUtEQXhuWlcxaGRHbHJJRWR0WWtneERqQU1CZ05WQkFzTUJVUkZUVWxUTVNNd0lRWURWUVFECkRCcEVSVTFKVXlCVVpYTjBJRWx1ZEdWeWJXVmthV0YwWlNCRFFUQWVGdzB5TmpBeE1EY3hNakE1TURKYUZ3MHkKT1RBeE1EWXhNakE1TURKYU1JR0JNUXN3Q1FZRFZRUUdFd0pFUlRFUE1BMEdBMVVFQ0F3R1FtVnliR2x1TVE4dwpEUVlEVlFRSERBWkNaWEpzYVc0eEZUQVRCZ05WQkFvTURHZGxiV0YwYVdzZ1IyMWlTREVPTUF3R0ExVUVDd3dGClJFVk5TVk14S1RBbkJnTlZCQU1NSUhCdmMzUm5jbVZ6TG1SbGJXbHpMbk4yWXk1amJIVnpkR1Z5TG14dlkyRnMKTUZrd0V3WUhLb1pJemowQ0FRWUlLb1pJemowREFRY0RRZ0FFaXM2ekhqVHh6WVluY3hmYUZDS3NGa0FUUkpkWApUT2lQRUNKaC84bUJFU2lXVldZT1o3bmlCUHVLUCtuMW5La2JwdElRMFJlVWNXd3NxWXdwdEpwcVhhT0JxRENCCnBUQUpCZ05WSFJNRUFqQUFNQTRHQTFVZER3RUIvd1FFQXdJRm9EQWRCZ05WSFNVRUZqQVVCZ2dyQmdFRkJRY0QKQWdZSUt3WUJCUVVIQXdFd0tRWURWUjBSQkNJd0lJSWVjRzl6ZEdkeVpYTXVhV1J0TG5OMll5NWpiSFZ6ZEdWeQpMbXh2WTJGc01CMEdBMVVkRGdRV0JCUlB6N0pnTWgreFA4dGQ0M2ZIUTBHbVFwNE41VEFmQmdOVkhTTUVHREFXCmdCVGg0dVpzVTNUNTAwb3paSVZmYWNmMWJGZ0J2akFLQmdncWhrak9QUVFEQWdOSUFEQkZBaUF4OW1ESndFM28KM0QrSElEdENnQzBNbDB5d1dURk5ZK2VPbUlRaEhZc3ozQUloQUpTcHVueTJBSnFsUEZVK2VlZG9PTlFBNWxtdAp2K0FFZnRLMHRWRGtwZUpVCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0KLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNWakNDQWZ5Z0F3SUJBZ0lVZXIvelBpNFk1a3FiejQ0OGE5VEIvOW11dGVjd0NnWUlLb1pJemowRUF3SXcKY3pFTE1Ba0dBMVVFQmhNQ1JFVXhEekFOQmdOVkJBZ01Ca0psY214cGJqRVBNQTBHQTFVRUJ3d0dRbVZ5YkdsdQpNUlV3RXdZRFZRUUtEQXhuWlcxaGRHbHJJRWR0WWtneERqQU1CZ05WQkFzTUJVUkZUVWxUTVJzd0dRWURWUVFECkRCSkVSVTFKVXlCVVpYTjBJRkp2YjNRZ1EwRXdIaGNOTWpZd01UQTNNVEl3T1RBeVdoY05Nell3TVRBMU1USXcKT1RBeVdqQjdNUXN3Q1FZRFZRUUdFd0pFUlRFUE1BMEdBMVVFQ0F3R1FtVnliR2x1TVE4d0RRWURWUVFIREFaQwpaWEpzYVc0eEZUQVRCZ05WQkFvTURHZGxiV0YwYVdzZ1IyMWlTREVPTUF3R0ExVUVDd3dGUkVWTlNWTXhJekFoCkJnTlZCQU1NR2tSRlRVbFRJRlJsYzNRZ1NXNTBaWEp0WldScFlYUmxJRU5CTUZrd0V3WUhLb1pJemowQ0FRWUkKS29aSXpqMERBUWNEUWdBRTlwbXdsY3FwUWFuWHk0Ulh2TFRaMUxXMVk3S2Y3MkcyelRidUVsbytHZUFNQWJPVApLVnhleW95R1VCaXdEWjdkdU82N2dIa0FNZVJLUjZnL2dYN2ZWcU5tTUdRd0hRWURWUjBPQkJZRUZPSGk1bXhUCmRQblRTak5raFY5cHgvVnNXQUcrTUI4R0ExVWRJd1FZTUJhQUZPbEtOYy9GdTNFVHNJaXc5L3N6WXdLYWgxZ0UKTUJJR0ExVWRFd0VCL3dRSU1BWUJBZjhDQVFBd0RnWURWUjBQQVFIL0JBUURBZ0dHTUFvR0NDcUdTTTQ5QkFNQwpBMGdBTUVVQ0lEWXFRK202a0NlY2M0MGdBTDU0WElmb05SRkZGWURKL3dmRy9sWUJ1R3g3QWlFQXJ6N1cvZGpZCktHWWN5Y3lIdHFHT1RTTG9zVEdoQldJMGsyQXJmNnpwVU5NPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0t"
postgres_server_key          = "LS0tLS1CRUdJTiBQUklWQVRFIEtFWS0tLS0tCk1JR0hBZ0VBTUJNR0J5cUdTTTQ5QWdFR0NDcUdTTTQ5QXdFSEJHMHdhd0lCQVFRZ0VERG04NXl5aEhoM0d4OTgKRTBtdFkxeFNpdmhyZ0tTYXJVUnJKR0Y2Z3AraFJBTkNBQVNLenJNZU5QSE5oaWR6RjlvVUlxd1dRQk5FbDFkTQo2SThRSW1IL3lZRVJLSlpWWmc1bnVlSUUrNG8vNmZXY3FSdW0waERSRjVSeGJDeXBqQ20wbW1wZAotLS0tLUVORCBQUklWQVRFIEtFWS0tLS0tCg=="

# IGS Credentials
# Needed for IGS and Minio TLS communication
# dummy value because the communication is HTTP only in local environment
s3_tls_credential = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNxRENDQWs2Z0F3SUJBZ0lVYkIzcTZiRXI2K3VFVTFWeG5uRDVUQ1Q0aTM4d0NnWUlLb1pJemowRUF3SXcKZXpFTE1Ba0dBMVVFQmhNQ1JFVXhEekFOQmdOVkJBZ01Ca0psY214cGJqRVBNQTBHQTFVRUJ3d0dRbVZ5YkdsdQpNUlV3RXdZRFZRUUtEQXhuWlcxaGRHbHJJRWR0WWtneERqQU1CZ05WQkFzTUJVUkZUVWxUTVNNd0lRWURWUVFECkRCcEVSVTFKVXlCVVpYTjBJRWx1ZEdWeWJXVmthV0YwWlNCRFFUQWVGdzB5TmpBeE1EY3hNakE1TURKYUZ3MHkKT1RBeE1EWXhNakE1TURKYU1JR0JNUXN3Q1FZRFZRUUdFd0pFUlRFUE1BMEdBMVVFQ0F3R1FtVnliR2x1TVE4dwpEUVlEVlFRSERBWkNaWEpzYVc0eEZUQVRCZ05WQkFvTURHZGxiV0YwYVdzZ1IyMWlTREVPTUF3R0ExVUVDd3dGClJFVk5TVk14S1RBbkJnTlZCQU1NSUhCdmMzUm5jbVZ6TG1SbGJXbHpMbk4yWXk1amJIVnpkR1Z5TG14dlkyRnMKTUZrd0V3WUhLb1pJemowQ0FRWUlLb1pJemowREFRY0RRZ0FFaXM2ekhqVHh6WVluY3hmYUZDS3NGa0FUUkpkWApUT2lQRUNKaC84bUJFU2lXVldZT1o3bmlCUHVLUCtuMW5La2JwdElRMFJlVWNXd3NxWXdwdEpwcVhhT0JxRENCCnBUQUpCZ05WSFJNRUFqQUFNQTRHQTFVZER3RUIvd1FFQXdJRm9EQWRCZ05WSFNVRUZqQVVCZ2dyQmdFRkJRY0QKQWdZSUt3WUJCUVVIQXdFd0tRWURWUjBSQkNJd0lJSWVjRzl6ZEdkeVpYTXVhV1J0TG5OMll5NWpiSFZ6ZEdWeQpMbXh2WTJGc01CMEdBMVVkRGdRV0JCUlB6N0pnTWgreFA4dGQ0M2ZIUTBHbVFwNE41VEFmQmdOVkhTTUVHREFXCmdCVGg0dVpzVTNUNTAwb3paSVZmYWNmMWJGZ0J2akFLQmdncWhrak9QUVFEQWdOSUFEQkZBaUF4OW1ESndFM28KM0QrSElEdENnQzBNbDB5d1dURk5ZK2VPbUlRaEhZc3ozQUloQUpTcHVueTJBSnFsUEZVK2VlZG9PTlFBNWxtdAp2K0FFZnRLMHRWRGtwZUpVCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"

# Minio Credentials
minio_root_user     = "minioadmin"
minio_root_password = "minioadmin"

# Redis CUS Credentials (Reader)
redis_cus_reader_user     = "reader"
redis_cus_reader_password = "read_this_password"

# ars pseudo service secrets
ars_pseudo_hash_pepper = "36EWaW1l4MBwORh39aaLzT9rVqF9wD3QtE4jltq8NKk="

# RabbitMQ Credentials
rabbitmq_username = "rabbit_user"
rabbitmq_password = "rabbit_password"
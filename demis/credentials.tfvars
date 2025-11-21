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
    username            = "hapi-fhir-writer"
    password            = "dummy-password"
    secret-name         = "hapi-fhir-writer-database-secret"
    secret-key-user     = "HAPI_FHIR_WRITER_DB_USER"
    secret-key-password = "HAPI_FHIR_WRITER_DB_PASSWORD"
  },
  {
    username            = "hapi-fhir-reader"
    password            = "dummy-password"
    secret-name         = "hapi-fhir-reader-database-secret"
    secret-key-user     = "HAPI_FHIR_WRITER_DB_USER"
    secret-key-password = "HAPI_FHIR_READER_DB_PASSWORD"
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
  }
]

# PostgreSQL Certificates
postgres_root_ca_certificate = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNDakNDQWJHZ0F3SUJBZ0lVWEc1d2Y2S1hWck9pc0VBZENuQ0ZXMnBvZEFZd0NnWUlLb1pJemowRUF3SXcKV2pFVE1CRUdBMVVFQ2d3S1JFVk5TVk1nVkdWemRERVdNQlFHQTFVRUF3d05SRVZOU1ZNZ1ZFVlRWQ0JEUVRFcgpNQ2tHQ1NxR1NJYjNEUUVKQVJZY1pHVnRhWE10Wlc1MGQybGphMngxYm1kQVoyVnRZWFJwYXk1a1pUQWdGdzB5Ck5UQTNNRGN4TXpVeU1qZGFHQTh5TURjMU1EWXlOVEV6TlRJeU4xb3dXakVUTUJFR0ExVUVDZ3dLUkVWTlNWTWcKVkdWemRERVdNQlFHQTFVRUF3d05SRVZOU1ZNZ1ZFVlRWQ0JEUVRFck1Da0dDU3FHU0liM0RRRUpBUlljWkdWdAphWE10Wlc1MGQybGphMngxYm1kQVoyVnRZWFJwYXk1a1pUQlpNQk1HQnlxR1NNNDlBZ0VHQ0NxR1NNNDlBd0VICkEwSUFCRWx1QklmZEpuM05CWTFKTUFyYUFkdUczOFB3WENkUzZMUlFSaFZVdVBQcjFGT2hiMisrYWRiNHB4VkwKbWNJU2pjeDJ0TndXWERkVU9QRlVKZ1NQclVXalV6QlJNQjBHQTFVZERnUVdCQlFhQ3ZBRzROT2RHN3ZBSEMveAp5UkpCT21CR3FEQWZCZ05WSFNNRUdEQVdnQlFhQ3ZBRzROT2RHN3ZBSEMveHlSSkJPbUJHcURBUEJnTlZIUk1CCkFmOEVCVEFEQVFIL01Bb0dDQ3FHU000OUJBTUNBMGNBTUVRQ0lHeVYyUFBxdjNCT3V4WUE3VFFaNnZxQkIvMWoKNnRxSEFvZEg2WVppNitQNkFpQlRZalFaSldUcXdnWllFTzYzTjNaZGVGeUNXaWhLK1dkMThSWTM1Rm9GS3c9PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCi0tLS0tQkVHSU4gQ0VSVElGSUNBVEUtLS0tLQpNSUlDS1RDQ0FjK2dBd0lCQWdJVUJjYWFTM2ZIazlvT0VhdUx5WkMwdE1ZbkVHWXdDZ1lJS29aSXpqMEVBd0l3CldqRVRNQkVHQTFVRUNnd0tSRVZOU1ZNZ1ZHVnpkREVXTUJRR0ExVUVBd3dOUkVWTlNWTWdWRVZUVkNCRFFURXIKTUNrR0NTcUdTSWIzRFFFSkFSWWNaR1Z0YVhNdFpXNTBkMmxqYTJ4MWJtZEFaMlZ0WVhScGF5NWtaVEFlRncweQpOVEEzTURjeE16VXlNamRhRncwek5UQTNNRFV4TXpVeU1qZGFNR2N4R3pBWkJnTlZCQW9NRWtSRlRVbFRJRWx1CmRHVnliV1ZrYVdGMFpURWJNQmtHQTFVRUF3d1NURzlqWVd3Z1NXNTBaWEp0WldScFlYUmxNU3N3S1FZSktvWkkKaHZjTkFRa0JGaHhrWlcxcGN5MWxiblIzYVdOcmJIVnVaMEJuWlcxaGRHbHJMbVJsTUZrd0V3WUhLb1pJemowQwpBUVlJS29aSXpqMERBUWNEUWdBRW1LMVlQNkJqMDFNc01qblN6QkxPVndvTGhTN3NoQmhtWHRQZFJLNDBZYVdZCnZEdEtDdXNFeGdmZW1JRjNXSmhvOWtpOUgwR3RvblRnakxJN0ZpaFdYYU5tTUdRd0VnWURWUjBUQVFIL0JBZ3cKQmdFQi93SUJBREFPQmdOVkhROEJBZjhFQkFNQ0FZWXdIUVlEVlIwT0JCWUVGSXNlZitMc0FnMlMwSE9qOS9PNwo2UHBzR2lWck1COEdBMVVkSXdRWU1CYUFGQm9LOEFiZzA1MGJ1OEFjTC9ISkVrRTZZRWFvTUFvR0NDcUdTTTQ5CkJBTUNBMGdBTUVVQ0lDY2VCWFdGNVlwREN3NWFPZkJmcittR29KZVJwVkJwdE9KVFprV1VxZWZHQWlFQXZkREIKcFNCcWM5VnI5eEJ2Qm55MFBqS3B5OFFmbThWWUZzSFpJYUNCaWpjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
postgres_server_certificate  = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNrekNDQWpxZ0F3SUJBZ0lVUGVqbmlIMEFtZUhFeEdlQ1dMQ051bEk3R2t3d0NnWUlLb1pJemowRUF3SXcKWnpFYk1Ca0dBMVVFQ2d3U1JFVk5TVk1nU1c1MFpYSnRaV1JwWVhSbE1Sc3dHUVlEVlFRRERCSk1iMk5oYkNCSgpiblJsY20xbFpHbGhkR1V4S3pBcEJna3Foa2lHOXcwQkNRRVdIR1JsYldsekxXVnVkSGRwWTJ0c2RXNW5RR2RsCmJXRjBhV3N1WkdVd0hoY05NalV3TnpBM01UTTFNakk0V2hjTk16QXdOekEyTVRNMU1qSTRXakJ2TVJVd0V3WUQKVlFRS0RBeEVSVTFKVXlCVFpYSjJaWEl4S1RBbkJnTlZCQU1NSUhCdmMzUm5jbVZ6TG1SbGJXbHpMbk4yWXk1agpiSFZ6ZEdWeUxteHZZMkZzTVNzd0tRWUpLb1pJaHZjTkFRa0JGaHhrWlcxcGN5MWxiblIzYVdOcmJIVnVaMEJuClpXMWhkR2xyTG1SbE1Ga3dFd1lIS29aSXpqMENBUVlJS29aSXpqMERBUWNEUWdBRTVsN0p4RldxVXcyT1FUdTEKNVNiclBJdXUzaGoyQ3V4QjBYd2g2Y0FiVUtQYURKaHlSaDdmUnRPeTJkMTFDKzNENXhhcmhvMTAvd3o0VU5TNgowNWR4T3FPQnV6Q0J1REFmQmdOVkhTTUVHREFXZ0JTTEhuL2k3QUlOa3RCem8vZnp1K2o2YkJvbGF6QUpCZ05WCkhSTUVBakFBTUFzR0ExVWREd1FFQXdJRm9EQVRCZ05WSFNVRUREQUtCZ2dyQmdFRkJRY0RBVEJKQmdOVkhSRUUKUWpCQWdpQndiM04wWjNKbGN5NWtaVzFwY3k1emRtTXVZMngxYzNSbGNpNXNiMk5oYklFY1pHVnRhWE10Wlc1MApkMmxqYTJ4MWJtZEFaMlZ0WVhScGF5NWtaVEFkQmdOVkhRNEVGZ1FVSFUrNmJUV1BFQTJyV0NTVHk3NHNoUU0vCkgzd3dDZ1lJS29aSXpqMEVBd0lEUndBd1JBSWdTMkpXWS8rWUN1Um9MN0xKR2ZScWZkZkVGdDEyMUZ1Rkp2NFcKY3hCUExMUUNJSHVmS3NnZlRBZ2VwcVloVWs3QW9jcXZmMWhzMFVPZ216L1pYNnE3VzdVWAotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0t"
postgres_server_key          = "LS0tLS1CRUdJTiBFQyBQUklWQVRFIEtFWS0tLS0tCk1IY0NBUUVFSUJaaFZmbEpmazdCOEtJSHhPYmJsRzREV0hPWTc1YVYwT1RNSXdYTit1Y0NvQW9HQ0NxR1NNNDkKQXdFSG9VUURRZ0FFNWw3SnhGV3FVdzJPUVR1MTVTYnJQSXV1M2hqMkN1eEIwWHdoNmNBYlVLUGFESmh5Umg3ZgpSdE95MmQxMUMrM0Q1eGFyaG8xMC93ejRVTlM2MDVkeE9nPT0KLS0tLS1FTkQgRUMgUFJJVkFURSBLRVktLS0tLQo="

# IGS Credentials
storage_tls_certificate = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM1RENDQW9xZ0F3SUJBZ0lVZVZ1US9wTWhieElHcnRXME11YmxyWUI0d2Nvd0NnWUlLb1pJemowRUF3SXcKZXpFTE1Ba0dBMVVFQmhNQ1JFVXhEekFOQmdOVkJBZ01Ca0psY214cGJqRVBNQTBHQTFVRUJ3d0dRbVZ5YkdsdQpNUlV3RXdZRFZRUUtEQXhuWlcxaGRHbHJJRWR0WWtneERqQU1CZ05WQkFzTUJVUkZUVWxUTVNNd0lRWURWUVFECkRCcEVSVTFKVXlCVVpYTjBJRWx1ZEdWeWJXVmthV0YwWlNCRFFUQWVGdzB5TkRFeU1UWXhNVEl6TXpWYUZ3MHkKTlRFeU1UWXhNVEl6TXpWYU1ITXhDekFKQmdOVkJBWVRBa1JGTVE4d0RRWURWUVFJREFaQ1pYSnNhVzR4RHpBTgpCZ05WQkFjTUJrSmxjbXhwYmpFVk1CTUdBMVVFQ2d3TVoyVnRZWFJwYXlCSGJXSklNUTR3REFZRFZRUUxEQVZFClJVMUpVekViTUJrR0ExVUVBd3dTWVhWMGFDNXBibWR5WlhOekxteHZZMkZzTUZrd0V3WUhLb1pJemowQ0FRWUkKS29aSXpqMERBUWNEUWdBRVUxUmltVGFVNlE5U0dwVWJMTmN1aExDbkI4MG0vZTVUM3FVakgxelhTamtyRkdOLwpaeUMzNGpVanQ2NUtHMldkc3lZQ21ZbHVEcDVYclZwVDkvbTBMS09COHpDQjhEQUpCZ05WSFJNRUFqQUFNQTRHCkExVWREd0VCL3dRRUF3SUZvREFUQmdOVkhTVUVEREFLQmdnckJnRUZCUWNEQVRCK0JnTlZIUkVFZHpCMWdoSmgKZFhSb0xtbHVaM0psYzNNdWJHOWpZV3lDR0dKMWJtUnBaQzFwWkhBdWFXNW5jbVZ6Y3k1c2IyTmhiSUlaYVdkegpMWE4wYjNKaFoyVXVhVzVuY21WemN5NXNiMk5oYklJVWNHOXlkR0ZzTG1sdVozSmxjM011Ykc5allXeUNGSFJwCkxXbGtjQzVwYm1keVpYTnpMbXh2WTJGc01CMEdBMVVkRGdRV0JCUWJIL1VteFBtM0ZwRGtiNlVHU3VCOXNEWFUKeERBZkJnTlZIU01FR0RBV2dCU2owOWxxejNWTEZiblhSamdRTVdFRHZqQ0g3ekFLQmdncWhrak9QUVFEQWdOSQpBREJGQWlFQTNQWUlFODJoNlZYWEFobTFtbnBaN00rSmY4VmE4MlBySFFSVDdjbks5K29DSUd6a1RvSXowTTJpCngxMFpWV3dRTlF6ZE5Zb1JTRDdVWko4VlBqeHcya3A2Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
# OLD Credential, can be deleted after march 2025
storage_tls_certificate_internal = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNZekNDQWdxZ0F3SUJBZ0lVZVZ1US9wTWhieElHcnRXME11YmxyWUI0d2Nzd0NnWUlLb1pJemowRUF3SXcKZXpFTE1Ba0dBMVVFQmhNQ1JFVXhEekFOQmdOVkJBZ01Ca0psY214cGJqRVBNQTBHQTFVRUJ3d0dRbVZ5YkdsdQpNUlV3RXdZRFZRUUtEQXhuWlcxaGRHbHJJRWR0WWtneERqQU1CZ05WQkFzTUJVUkZUVWxUTVNNd0lRWURWUVFECkRCcEVSVTFKVXlCVVpYTjBJRWx1ZEdWeWJXVmthV0YwWlNCRFFUQWVGdzB5TkRFeU1UWXhNVEl6TXpWYUZ3MHkKTlRFeU1UWXhNVEl6TXpWYU1IVXhDekFKQmdOVkJBWVRBa1JGTVE4d0RRWURWUVFJREFaQ1pYSnNhVzR4RHpBTgpCZ05WQkFjTUJrSmxjbXhwYmpFVk1CTUdBMVVFQ2d3TVoyVnRZWFJwYXlCSGJXSklNUTR3REFZRFZRUUxEQVZFClJVMUpVekVkTUJzR0ExVUVBd3dVYzNSdmNtRm5aUzEwYkhNdGFXNTBaWEp1WVd3d1dUQVRCZ2NxaGtqT1BRSUIKQmdncWhrak9QUU1CQndOQ0FBUzZlOGZleTJOS0JGSG9IQWlrMFVrbTFPUW9ONzVFTTI2QmNKQlVZUUE1dldCdApkNkphempvMFVtMm13cXNxUW80bFBVSDNxVGQxdFYwYUg2RFZJdGxhbzNJd2NEQUpCZ05WSFJNRUFqQUFNQTRHCkExVWREd0VCL3dRRUF3SUZvREFUQmdOVkhTVUVEREFLQmdnckJnRUZCUWNEQWpBZEJnTlZIUTRFRmdRVUNHYjkKdUEyZ0ppZm15TUEwLzVLVmRsWUlRb013SHdZRFZSMGpCQmd3Rm9BVW85UFphczkxU3hXNTEwWTRFREZoQTc0dwpoKzh3Q2dZSUtvWkl6ajBFQXdJRFJ3QXdSQUlnZTNzR2JTYnBNMk4yU2o0SW05RVNQVVVUVWk4LzN4T25EQ2U5CmJPWk5rWGtDSUg4SjdMcWd4bVdqcHh0Z0ZMbWYyUW81Z1V6Y1p6T09SRjAxczEybDh3eWQKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
# NEW:
s3_tls_credential = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNZekNDQWdxZ0F3SUJBZ0lVZVZ1US9wTWhieElHcnRXME11YmxyWUI0d2Nzd0NnWUlLb1pJemowRUF3SXcKZXpFTE1Ba0dBMVVFQmhNQ1JFVXhEekFOQmdOVkJBZ01Ca0psY214cGJqRVBNQTBHQTFVRUJ3d0dRbVZ5YkdsdQpNUlV3RXdZRFZRUUtEQXhuWlcxaGRHbHJJRWR0WWtneERqQU1CZ05WQkFzTUJVUkZUVWxUTVNNd0lRWURWUVFECkRCcEVSVTFKVXlCVVpYTjBJRWx1ZEdWeWJXVmthV0YwWlNCRFFUQWVGdzB5TkRFeU1UWXhNVEl6TXpWYUZ3MHkKTlRFeU1UWXhNVEl6TXpWYU1IVXhDekFKQmdOVkJBWVRBa1JGTVE4d0RRWURWUVFJREFaQ1pYSnNhVzR4RHpBTgpCZ05WQkFjTUJrSmxjbXhwYmpFVk1CTUdBMVVFQ2d3TVoyVnRZWFJwYXlCSGJXSklNUTR3REFZRFZRUUxEQVZFClJVMUpVekVkTUJzR0ExVUVBd3dVYzNSdmNtRm5aUzEwYkhNdGFXNTBaWEp1WVd3d1dUQVRCZ2NxaGtqT1BRSUIKQmdncWhrak9QUU1CQndOQ0FBUzZlOGZleTJOS0JGSG9IQWlrMFVrbTFPUW9ONzVFTTI2QmNKQlVZUUE1dldCdApkNkphempvMFVtMm13cXNxUW80bFBVSDNxVGQxdFYwYUg2RFZJdGxhbzNJd2NEQUpCZ05WSFJNRUFqQUFNQTRHCkExVWREd0VCL3dRRUF3SUZvREFUQmdOVkhTVUVEREFLQmdnckJnRUZCUWNEQWpBZEJnTlZIUTRFRmdRVUNHYjkKdUEyZ0ppZm15TUEwLzVLVmRsWUlRb013SHdZRFZSMGpCQmd3Rm9BVW85UFphczkxU3hXNTEwWTRFREZoQTc0dwpoKzh3Q2dZSUtvWkl6ajBFQXdJRFJ3QXdSQUlnZTNzR2JTYnBNMk4yU2o0SW05RVNQVVVUVWk4LzN4T25EQ2U5CmJPWk5rWGtDSUg4SjdMcWd4bVdqcHh0Z0ZMbWYyUW81Z1V6Y1p6T09SRjAxczEybDh3eWQKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="

# Minio Credentials
minio_root_user     = "minioadmin"
minio_root_password = "minioadmin"

# Redis CUS Credentials (Reader)
redis_cus_reader_user     = "reader"
redis_cus_reader_password = "read_this_password"

# ars pseudo service secrets
ars_pseudo_hash_pepper = "36EWaW1l4MBwORh39aaLzT9rVqF9wD3QtE4jltq8NKk="
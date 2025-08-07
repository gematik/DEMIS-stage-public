<img align="right" width="250" height="47" src="media/Gematik_Logo_Flag.png"/> <br/>

# Release Notes stage-public

## Release 1.3.0
- Update Postgres
  - remove pseudonymization storage service database from init script
  - remove NCAPI database from init script
  - add surveillance pseudonym database to init script
- Dependency updates for:
  - futs
  - lifecycle-validation-service
  - notification-gateway
  - notification-processing-service
  - notification-routing-service
  - validation-service
- Compatible with DEMIS-Development-Cluster 3.7.2 and below

## Release 1.2.0
- Update Postgres Server Certificates and CA Chain
- Removal of NCAPI, which has been replaced by the FHIR storage service.
- Removal of the pseudonymization storage service, which was responsible for the separate storage of pseudonyms.
- Updating of backend and frontend components for bug fixes, stability improvements, and consistency.
- Compatible with DEMIS-Development-Cluster 3.7.1

## Release 1.1.0
- Update service-versions and configurations to be compatible with DEMIS-Development-Cluster 3.4.3
- Delete keycloak-gematik-idp-public-key secret, add config-options ONLINE_SERVICE_ID JWT_VALIDATION_VERIFICATION_KEY

## Release 1.0.0
- First official GitHub-Release

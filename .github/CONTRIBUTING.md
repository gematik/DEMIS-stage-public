# Welcome to the gematik contributing guide 

Thank you for investing your time in contributing to our projects!

Read our [Code of Conduct](CODE_OF_CONDUCT.md) to keep our community approachable and respectable.

In this guide you will get an overview how you can contribute to our projects by opening an issue, creating, reviewing and merging a pull request.  It also explains when to bump the Major, Minor or Patch version of this repository.

## Reporting a security vulnerability

Please do not report vulnerabilities and security incidents as GitHub issues. Please contact us by sending an E-Mail to [Open Source Program Office](mailto:ospo@gematik.de?subject=[GitHub]%20stage-public) or report them using the contact form at https://fachportal.gematik.de/kontaktformular.

## New contributor guide

To get an overview of the project, read the [README](../README.md).

## Getting started

### Issues

#### Create a new issue

If you spot a problem with the docs, search if an issue already exists.
If a related issue doesn't exist, you can open a new issue.

#### Solve an issue

Scan through our existing issues to find one that interests you. If you find an issue to work on, you are welcome to open a PR with a fix.

### Coding Style

gematik projects follow the [google style guide](https://github.com/google/styleguide) conventions. Please follow them when working on your contributions.

### Commit your update

Commit the changes once you are happy with them.

### Pull Request Process

- When you're finished with the changes, create a pull request, also known as a PR.
- Fill the pull request template so that we can review your PR. This template helps reviewers to understand your changes as well as the purpose of your pull request.
- Don't forget to [link the PR to the issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue) if you are solving one.
- Update the [README.md](../README.md), the documentation and the [ReleaseNotes.md](../ReleaseNotes.md) with all details to document the changes made by this PR.
- Increase the version numbers in any necessary files and the [readme](../README.md) to the new version that this
  Pull Request would represent. The versioning scheme we use is [SemVer](http://semver.org/).
- Once you submit your PR, a project team member will review your proposal. We may ask questions or request additional information.
- We may ask for changes to be made before a PR can be merged, either using [suggested changes](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/incorporating-feedback-in-your-pull-request)
  or pull request comments. You can apply suggested changes directly through the UI. You can make any other changes in your fork, then commit them to your branch.
- As you update your PR and apply changes, mark each conversation as [resolved](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/commenting-on-a-pull-request#resolving-conversations).
- You may merge the Pull Request in once you have the sign-off of two other developers, or if you
  do not have permission to do that, you may request the second reviewer to merge it for you.

### Your PR is merged!

Congratulations :tada: :tada: The gematik team thanks you :sparkles:.

Once your PR is merged, your contributions will be publicly visible on the [gematik github page](https://github.com/gematik/).

## Versioning

This repository contains the public configuration and service definitions for running DEMIS in a self-managed Kubernetes cluster. 
It does **not** contain application source code — it contains Terraform/Helm configuration, service version pinning, feature flags and network policies. The versioning rules below therefore describe how to version **configuration changes** using [Semantic Versioning 2.0.0](https://semver.org/).

### Where the version is defined

| Artifact | Purpose |
| --- | --- |
| Git tag `X.Y.Z` (e.g. `1.31.0`) | The released version of this repository. One tag per release. |
| [ReleaseNotes.md](../ReleaseNotes.md) | A `## Release X.Y.Z` section is added for every release. |
| [cluster-deployment-version.yaml](../cluster-deployment-version.yaml) | The Terraform cluster-deployment tag this stage is compatible with. |
| `<namespace>/active-versions.yaml` | The pinned Helm chart versions per service and namespace (`demis`, `idm`, `mesh`, `dmz`, `are`, `ekm-template`). |
| `<namespace>/feature_flags.tfvars` | The feature flags activated for the services of a namespace (`flag_name`, `flag_value`). |

> The version of this repository is **independent** of the versions of the individual services listed in `active-versions.yaml`. Updating a service version does not, by itself, change the repository's semantic version — only the *kind* of change does (see the rules below).

### Summary table

| Change | Example | Bump |
| --- | --- | --- |
| Update a pinned service version, config tweak, policy/network update, bug fix | update `validation-service` `2.16.0` to `2.16.1`; adjust resource limits | **Patch** |
| New service, new namespace, **enabling a feature flag**, new configuration option, profile bump, new cluster compatibility | add `new-service`; set `FEATURE_FLAG_*` from `false` to `true`; bump IGS profile `5.0.1` to `5.1.0` | **Minor** |
| Breaking change for consumers, removal of a service/namespace/flag, renames of configuration keys, mandatory new variables, incompatible cluster compatibility | remove a service; rename a `config_options` key; drop support for a cluster-deployment version | **Major** |


### Major version (`X.0.0`)

Increment the major version for **breaking changes** — changes that require a consumer of this repository to adapt its setup, or that are no longer backward-compatible:

- **Removal of a service, namespace or feature flag** that was previously enabled/available.
- **Renaming or removal of existing configuration keys** (`config_options`, `feature_flags`, `application-configuration` variables, `credentials` fields) in a way that old deployments would break.
- **Making a previously optional variable mandatory**, or changing a default in a way that changes existing behavior incompatibly.
- **Incompatible change of the required `cluster-deployment-version`** (e.g. a jump that drops support for the previously supported DEMIS-Development-Cluster version).
- **Structural changes** to the repository layout that break the documented deployment workflow (`make local init-stage`).
- Changes to the **deployment contract** that require manual migration steps by the operator.

### Minor version (`X.Y.0`)

Increment the minor version for **backward-compatible new functionality** — anything that makes a new capability, service or construct available to the operator or to the users of the deployed DEMIS:

- **Enabling a feature flag** in a `<namespace>/feature_flags.tfvars` (flip `flag_value` from `false` to `true`). The flag may have existed as a deactivated placeholder before — switching it on **exposes new functionality**, so it is a minor. See [Feature flags](#feature-flags) below.
- **Disabling a feature flag** that was previously active, as long as no consumer has to change its own setup. This removes a capability but is not breaking for the deployment interface, so it is a minor (highlight it prominently in the release notes).
- **Adding a new service** to a namespace's `active-versions.yaml` (as `enabled: true`).
- **Adding a new namespace** directory (e.g. a new stage/environment section).
- **Adding new feature flags or config options** (new `FEATURE_FLAG_*` / `*_OPTION_*` entries), including adding a flag as a deactivated placeholder together with its activation.
- **Adding a new configuration surface** that can be switched on (e.g. external routing configuration).
- **Profile/version bumps that introduce new functionality**, e.g. bumping an IGS or disease profile to a new feature release (X.Y.0).
- **Changing default values** of existing options to a new behavior (non-breaking for the interface, but a behavior change worth highlighting).
- **Adding compatibility for a new `cluster-deployment-version`** while keeping the old one supported.

### Patch version (`X.Y.Z`)

Increment the patch version for **backward-compatible fixes and routine maintenance**:

- **Updating a pinned service version** in `active-versions.yaml` where no new repository-level capability is exposed — i.e. routine "updated service versions" releases.
- **Configuration changes** to existing values (resource limits, replicas, timeout/retry overrides, routing entries).
- **Network-policy / authorization policy updates** that do not add new structural capabilities.
- **Toggling a feature flag value for an already-active flag** (e.g. adjusting a threshold or weight via the flag) that neither exposes a new capability nor removes one.
- **Bug fixes, typo fixes, documentation updates** and other maintenance that does not change the interface.

> **Rule of thumb:** If a consumer can update by checking out the new version **without changing anything in their own setup**, it is at most a *minor*. If they must *adapt* something, it is a *major*. If nothing new is exposed and only existing behavior is corrected or a dependency is refreshed, it is a *patch*.

### Feature flags

Feature flags are the most common source of ambiguity. The following table decides the bump for a change to `<namespace>/feature_flags.tfvars`:

| Change to a feature flag | Bump | Rationale |
| --- | --- | --- |
| Set an existing `flag_value` from `false` to `true` (activate a capability) | **Minor** | New functionality becomes available to users of the deployed DEMIS. |
| Add a new `FEATURE_FLAG_*` entry (active) | **Minor** | New functionality is exposed. |
| Add a new `FEATURE_FLAG_*` entry kept deactivated (`flag_value = false`) | **Minor** | New configuration surface is contributed. |
| Set an existing `flag_value` from `true` to `false` (deactivate a capability) | **Minor** | Capability is removed; document it, but the deployment interface stays compatible. |
| Remove `FEATURE_FLAG_*` entry entirely | **Minor** | The functionality of the deployed DEMIS does not change — only the option to switch the flag on/off is lost. Not breaking for the deployment interface; document the lost toggle in the release notes. |
| Change the `services` list of a flag, or otherwise tune an already-active flag without changing the capability | **Patch** | Maintenance of an existing capability. |
| Rename a `flag_name` (or a `project_feature_flags` key) | **Major** | The flag name is the interface key the service charts evaluate; the old name is no longer recognized. |
| Change the meaning of an existing flag name so that the same `flag_value` yields different behavior | **Major** | Existing configurations silently change behavior. |
| Remove a `FEATURE_FLAG_*` entry that still controls an **active** behavior (the service would fall back to its default) | **Major** | The operator can no longer keep the capability active — the deployed DEMIS loses functionality. |
| Change the `services` list of a flag so that a service **loses** an active capability | **Major** | The capability disappears for that service and the operator cannot compensate. |

### Practical guidance

- When several kinds of change are bundled in one release, **use the highest applicable bump**. A release that both adds a new service (minor) and removes an old one (major) is a **major**.
- The version is decided in the **Pull Request**: update the planned version in the PR.
- Every release **must** add a `## Release X.Y.Z` section to [ReleaseNotes.md](../ReleaseNotes.md) describing the change and stating the compatible DEMIS-Development-Cluster version.
- Releases are cut by tagging `main` with the new `X.Y.Z` version and publishing the corresponding GitHub Release.
- Keep this document up to date: if a new category of change appears that does not fit the table above, extend the table and the rules in the same PR.
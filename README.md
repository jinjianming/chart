# Helm Charts

The canonical source for Helm charts is the [Helm Hub](https://hub.helm.sh/), an aggregator for distributed chart repos.

This GitHub project is the source for Helm `stable` and `incubator` [Helm chart repositories](https://v3.helm.sh/docs/topics/chart_repository/), currently listed on the Hub.

For more information about installing and using Helm, see the
[Helm Docs](https://helm.sh/docs/). For a quick introduction to Charts, see the [Chart Guide](https://helm.sh/docs/topics/charts/).

## Status of the Project

Similar to the [Helm 2 Support Plan](https://helm.sh/blog/2019-10-22-helm-2150-released/#helm-2-support-plan), this GitHub project has begun transition to a 1 year "maintenance mode" (see [Deprecation Timeline](#deprecation-timeline) below). Given the deprecation plan, this project is intended for [apiVersion: v1](https://helm.sh/docs/topics/charts/#the-apiversion-field) Charts (installable by both Helm 2 and 3), and not for `apiVersion: v2` charts (installable by Helm 3 only).

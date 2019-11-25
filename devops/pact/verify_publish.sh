#!/bin/sh

pact_verifier=$(find node_modules/@pact-foundation/pact-node/standalone/*/bin -name pact-provider-verifier)
provider_version="$(git rev-parse HEAD)"

$pact_verifier \
  --provider-base-url "$npm_package_config_pact_url" \
  --pact-broker-base-url "$npm_package_config_pact_broker" \
  --provider "$npm_package_config_pacticipant" \
  --provider-app-version "$provider_version" \
  --publish-verification-results \
  --broker-token "$PACT_BROKER_TOKEN"

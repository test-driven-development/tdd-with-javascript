#!/bin/sh

pact_verifier=$(find node_modules/@pact-foundation/pact-node/standalone/*/bin -name pact-provider-verifier)

$pact_verifier \
  --provider-base-url "$npm_package_config_pact_url" \
  --provider-states-setup-url "$npm_package_config_pact_url/pact-setup" \
  --pact-broker-base-url "$npm_package_config_pact_broker" \
  --provider "$npm_package_config_pacticipant" \
  --broker-token "$PACT_BROKER_TOKEN"

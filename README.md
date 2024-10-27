# Bitwarden Secret Manager ARM Issue Replication

Run the replication as follows:

1. `docker buildx build --platform linux/arm64 -t bws-arm-issue .`
1. `docker run --rm bws-arm-issue`

This should output an error that looks like:

```
node:internal/modules/cjs/loader:1249
  const err = new Error(message);
              ^

Error: Cannot find module '@bitwarden/sdk-napi-linux-arm64-gnu'
Require stack:
- /app/node_modules/@bitwarden/sdk-napi/binding.js
- /app/node_modules/@bitwarden/sdk-napi/dist/bitwarden_client/index.js
    at Function._resolveFilename (node:internal/modules/cjs/loader:1249:15)
    at Function._load (node:internal/modules/cjs/loader:1075:27)
    at TracingChannel.traceSync (node:diagnostics_channel:315:14)
    at wrapModuleLoad (node:internal/modules/cjs/loader:218:24)
    at Module.require (node:internal/modules/cjs/loader:1340:12)
    at require (node:internal/modules/helpers:141:16)
    at Object.<anonymous> (/app/node_modules/@bitwarden/sdk-napi/binding.js:203:31)
    at Module._compile (node:internal/modules/cjs/loader:1546:14)
    at Object..js (node:internal/modules/cjs/loader:1689:10)
    at Module.load (node:internal/modules/cjs/loader:1318:32) {
  code: 'MODULE_NOT_FOUND',
  requireStack: [
    '/app/node_modules/@bitwarden/sdk-napi/binding.js',
    '/app/node_modules/@bitwarden/sdk-napi/dist/bitwarden_client/index.js'
  ]
}

Node.js v22.10.0
```

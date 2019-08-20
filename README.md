# About
This plugin is used to login into other applications on the boypoint server using the discourse login so the credentials only have to be used once and are kept all in the same place.

## Test-Aufruf
`<@username:host.tld>` und `<password>` anpassen.
```
curl 'http://localhost:3000/_matrix-internal/identity/v1/check_credentials' -H 'X-Requested-With: XMLHttpRequest' -d '{"user": {"id": "<@username:host.tld>","password": "<password>"}}'
```

## ToDo
- [ ] Response vervollständigen/anpassen (/app/controllers/synapseAuth_controller.rb:11)

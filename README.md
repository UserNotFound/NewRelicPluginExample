Some ENV's must be set: (`aptible config:set --app ENV=value ENV=value`)

* `${NEWRELIC_KEY}` - your NewRelic license key
* `${DATABSE_URL}` - the private address of you Aptible MySQL database (`db-shared-us-east-1-yolo-1111.aptible.in:20349`)
* `${PASSWORD}`     - The password for the Aptible user (provided via the dashboard)

Since the plugin doesn't seem to support secure MySQL connections, the `aptible-nossl` user is assumed in this example; it can be overridden with `${USER}`.
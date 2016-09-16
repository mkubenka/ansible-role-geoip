# Ansible Role GeoIP [![Build Status](https://travis-ci.org/mkubenka/ansible-role-geoip.svg?branch=master)](https://travis-ci.org/mkubenka/ansible-role-geoip)

[GeoIP](https://dev.maxmind.com/geoip/), MaxMind’s IP intelligence product, consists of several related products. GeoIP lets you discover information about a specific IP address.

## Requirements

None

## Role Variables

The variables that can be passed to this role and a brief description about
them are as follows. (For all variables, take a look at [defaults/main.yml](defaults/main.yml))

```yaml

# License key
# customers should insert their license key and user_id
# free GeoLite users should use 000000000000 as license key
geoip_license_key: '000000000000'

# User ID ( GeoLite only users should use 999999 as user_id )
geoip_user_id: '999999'

geoip_product_ids:
  - 506 # GeoLite Legacy Country
  - 533 # GeoLite Legacy City

```

## Dependencies

None

## Example Playbook

    - hosts: servers
      roles:
         - { role: mkubenka.geoip }

## License

BSD

## Author Information

Michal Kubenka <mkubenka@gmail.com>

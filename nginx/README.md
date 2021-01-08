1. exec `block-req-setup.sh`

2. Add below config in `nginx.conf`

```nginx
http {
  ...

    map $request_uri $block_request {
        default 0;
        include /etc/nginx/evil.d/evil-request.map;
    }

    map $http_user_agent $block_ua_request {
        default 0;
        include /etc/nginx/evil.d/ua.map;
    }

  ...
}
```

3. Add below confin in your `server` directive.

```nginx
server {
  ...

  include /etc/nginx/evil.d/common.conf;

  ...
}
```

4. exec `test.sh` for testing.

```sh
$ curl -A "User-Agent" https://example.com
curl: (56) Failure when receiving data from the peer

$ curl https://example.com/index.php
curl: (56) Failure when receiving data from the peer
```

TODO
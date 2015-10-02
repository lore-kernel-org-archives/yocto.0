Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03D2EE00D8F; Thu,  1 Oct 2015 18:25:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F1EBE00A49
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 18:25:48 -0700 (PDT)
Received: by pacex6 with SMTP id ex6so91147281pac.0
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 18:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=HAWWLkfe4DQGPYVbm61uMkYPUZjsnQE6AQFWLZYFu7w=;
	b=HvBO3WxTKsYSBGLogHs+Rs0L0FCpb53tyAJe5HfGtiWjPwlYVpzGVqowuNuiiY+6m7
	51sOtzgO542g4pFEP5LWFz0FPbP0vjcJEVknk10sBTrGXpjXqczCOxPRw94oZ5dL93cO
	NM9bmQ9dXJo+Z+a9diTtT6cxsuQiAe90AONzrmM4/jS5AV9+SuCX6tw+V6KUGTw1nnGo
	adaYyMRqCQ+NvNXtpbyHMuzgqQQuvtOy3WAX2G3gR9N9GA2ZxZ5LliykdiPRETHMlR0U
	4z0YkhtGUr4TTOVLTB5PyxoTCmuG4zMp8reboHf8r8MqbC3EgykfwMVz1BrjcfHxbsIf
	zk2w==
X-Received: by 10.69.2.69 with SMTP id bm5mr16127384pbd.41.1443749148506;
	Thu, 01 Oct 2015 18:25:48 -0700 (PDT)
Received: from [192.168.0.4] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85]) by smtp.gmail.com with ESMTPSA id
	cs5sm9121331pbc.15.2015.10.01.18.25.47
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 01 Oct 2015 18:25:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1739F874-791D-4371-B60A-B234370430A4@gmail.com>
Date: Thu, 1 Oct 2015 18:25:42 -0700
Message-Id: <69B07C73-5285-4201-BFEC-0C77E1883E61@gmail.com>
References: <1739F874-791D-4371-B60A-B234370430A4@gmail.com>
To: Jens Rehsack <rehsack@gmail.com>
X-Mailer: Apple Mail (2.3094)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 5/7][meta-openembedded] Update nginx to 1.9.5
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Oct 2015 01:25:53 -0000
X-Groupsio-MsgNum: 26650
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A643947C-5A9F-45C3-8F88-221CA05C8ED2";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A643947C-5A9F-45C3-8F88-221CA05C8ED2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Jens


> On Oct 1, 2015, at 11:18 AM, Jens Rehsack <rehsack@gmail.com> wrote:
>=20
>=20
> many bux-fixes, optmizations and features added:
>=20
> Changes with nginx 1.9.5                                         22 =
Sep 2015
>=20
>    *) Feature: the ngx_http_v2_module (replaces ngx_http_spdy_module).
>       Thanks to Dropbox and Automattic for sponsoring this work.
>=20
>    *) Change: now the "output_buffers" directive uses two buffers by
>       default.
>=20
>    *) Change: now nginx limits subrequests recursion, not simultaneous
>       subrequests.
>=20
>    *) Change: now nginx checks the whole cache key when returning a
>       response from cache.
>       Thanks to Gena Makhomed and Sergey Brester.
>=20
>    *) Bugfix: "header already sent" alerts might appear in logs when =
using
>       cache; the bug had appeared in 1.7.5.
>=20
>    *) Bugfix: "writev() failed (4: Interrupted system call)" errors =
might
>       appear in logs when using CephFS and the "timer_resolution" =
directive
>       on Linux.
>=20
>    *) Bugfix: in invalid configurations handling.
>       Thanks to Markus Linnala.
>=20
>    *) Bugfix: a segmentation fault occurred in a worker process if the
>       "sub_filter" directive was used at http level; the bug had =
appeared
>       in 1.9.4.
>=20
> Changes with nginx 1.9.4                                         18 =
Aug 2015
>=20
>    *) Change: the "proxy_downstream_buffer" and =
"proxy_upstream_buffer"
>       directives of the stream module are replaced with the
>       "proxy_buffer_size" directive.
>=20
>    *) Feature: the "tcp_nodelay" directive in the stream module.
>=20
>    *) Feature: multiple "sub_filter" directives can be used =
simultaneously.
>=20
>    *) Feature: variables support in the search string of the =
"sub_filter"
>       directive.
>=20
>    *) Workaround: configuration testing might fail under Linux OpenVZ.
>       Thanks to Gena Makhomed.
>=20
>    *) Bugfix: old worker processes might hog CPU after reconfiguration =
with
>       a large number of worker_connections.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process if =
the
>       "try_files" and "alias" directives were used inside a location =
given
>       by a regular expression; the bug had appeared in 1.7.1.
>=20
>    *) Bugfix: the "try_files" directive inside a nested location given =
by a
>       regular expression worked incorrectly if the "alias" directive =
was
>       used in the outer location.
>=20
>    *) Bugfix: in hash table initialization error handling.
>=20
>    *) Bugfix: nginx could not be built with Visual Studio 2015.
>=20
> Changes with nginx 1.9.3                                         14 =
Jul 2015
>=20
>    *) Change: duplicate "http", "mail", and "stream" blocks are now
>       disallowed.
>=20
>    *) Feature: connection limiting in the stream module.
>=20
>    *) Feature: data rate limiting in the stream module.
>=20
>    *) Bugfix: the "zone" directive inside the "upstream" block did not =
work
>       on Windows.
>=20
>    *) Bugfix: compatibility with LibreSSL in the stream module.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: in the "--builddir" configure parameter.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: the "ssl_stapling_file" directive did not work; the bug =
had
>       appeared in 1.9.2.
>       Thanks to Faidon Liambotis and Brandon Black.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process if =
the
>       "ssl_stapling" directive was used; the bug had appeared in =
1.9.2.
>       Thanks to Matthew Baldwin.
>=20
> Changes with nginx 1.9.2                                         16 =
Jun 2015
>=20
>    *) Feature: the "backlog" parameter of the "listen" directives of =
the
>       mail proxy and stream modules.
>=20
>    *) Feature: the "allow" and "deny" directives in the stream module.
>=20
>    *) Feature: the "proxy_bind" directive in the stream module.
>=20
>    *) Feature: the "proxy_protocol" directive in the stream module.
>=20
>    *) Feature: the -T switch.
>=20
>    *) Feature: the REQUEST_SCHEME parameter added to the fastcgi.conf,
>       fastcgi_params, scgi_params, and uwsgi_params standard =
configuration
>       files.
>=20
>    *) Bugfix: the "reuseport" parameter of the "listen" directive of =
the
>       stream module did not work.
>=20
>    *) Bugfix: OCSP stapling might return an expired OCSP response in =
some
>       cases.
>=20
> Changes with nginx 1.9.1                                         26 =
May 2015
>=20
>    *) Change: now SSLv3 protocol is disabled by default.
>=20
>    *) Change: some long deprecated directives are not supported =
anymore.
>=20
>    *) Feature: the "reuseport" parameter of the "listen" directive.
>       Thanks to Yingqi Lu at Intel and Sepherosa Ziehau.
>=20
>    *) Feature: the $upstream_connect_time variable.
>=20
>    *) Bugfix: in the "hash" directive on big-endian platforms.
>=20
>    *) Bugfix: nginx might fail to start on some old Linux variants; =
the bug
>       had appeared in 1.7.11.
>=20
>    *) Bugfix: in IP address parsing.
>       Thanks to Sergey Polovko.
>=20
> Changes with nginx 1.9.0                                         28 =
Apr 2015
>=20
>    *) Change: obsolete aio and rtsig event methods have been removed.
>=20
>    *) Feature: the "zone" directive inside the "upstream" block.
>=20
>    *) Feature: the stream module.
>=20
>    *) Feature: byte ranges support in the ngx_http_memcached_module.
>       Thanks to Martin Mlyn=C3=A1=C5=99.
>=20
>    *) Feature: shared memory can now be used on Windows versions with
>       address space layout randomization.
>       Thanks to Sergey Brester.
>=20
>    *) Feature: the "error_log" directive can now be used on mail and =
server
>       levels in mail proxy.
>=20
>    *) Bugfix: the "proxy_protocol" parameter of the "listen" directive =
did
>       not work if not specified in the first "listen" directive for a
>       listen socket.
>=20
> Changes with nginx 1.7.12                                        07 =
Apr 2015
>=20
>    *) Feature: now the "tcp_nodelay" directive works with backend SSL
>       connections.
>=20
>    *) Feature: now thread pools can be used to read cache file =
headers.
>=20
>    *) Bugfix: in the "proxy_request_buffering" directive.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process =
when
>       using thread pools on Linux.
>=20
>    *) Bugfix: in error handling when using the "ssl_stapling" =
directive.
>       Thanks to Filipe da Silva.
>=20
>    *) Bugfix: in the ngx_http_spdy_module.
>=20
> Changes with nginx 1.7.11                                        24 =
Mar 2015
>=20
>    *) Change: the "sendfile" parameter of the "aio" directive is
>       deprecated; now nginx automatically uses AIO to pre-load data =
for
>       sendfile if both "aio" and "sendfile" directives are used.
>=20
>    *) Feature: experimental thread pools support.
>=20
>    *) Feature: the "proxy_request_buffering", =
"fastcgi_request_buffering",
>       "scgi_request_buffering", and "uwsgi_request_buffering" =
directives.
>=20
>    *) Feature: request body filters experimental API.
>=20
>    *) Feature: client SSL certificates support in mail proxy.
>       Thanks to Sven Peter, Franck Levionnois, and Filipe Da Silva.
>=20
>    *) Feature: startup speedup when using the "hash ... consistent"
>       directive in the upstream block.
>       Thanks to Wai Keen Woon.
>=20
>    *) Feature: debug logging into a cyclic memory buffer.
>=20
>    *) Bugfix: in hash table handling.
>       Thanks to Chris West.
>=20
>    *) Bugfix: in the "proxy_cache_revalidate" directive.
>=20
>    *) Bugfix: SSL connections might hang if deferred accept or the
>       "proxy_protocol" parameter of the "listen" directive were used.
>       Thanks to James Hamlin.
>=20
>    *) Bugfix: the $upstream_response_time variable might contain a =
wrong
>       value if the "image_filter" directive was used.
>=20
>    *) Bugfix: in integer overflow handling.
>       Thanks to R=C3=A9gis Leroy.
>=20
>    *) Bugfix: it was not possible to enable SSLv3 with LibreSSL.
>=20
>    *) Bugfix: the "ignoring stale global SSL error ... called a =
function
>       you should not call" alerts appeared in logs when using =
LibreSSL.
>=20
>    *) Bugfix: certificates specified by the "ssl_client_certificate" =
and
>       "ssl_trusted_certificate" directives were inadvertently used to
>       automatically construct certificate chains.
>=20
> Changes with nginx 1.7.10                                        10 =
Feb 2015
>=20
>    *) Feature: the "use_temp_path" parameter of the =
"proxy_cache_path",
>       "fastcgi_cache_path", "scgi_cache_path", and "uwsgi_cache_path"
>       directives.
>=20
>    *) Feature: the $upstream_header_time variable.
>=20
>    *) Workaround: now on disk overflow nginx tries to write error logs =
once
>       a second only.
>=20
>    *) Bugfix: the "try_files" directive did not ignore normal files =
while
>       testing directories.
>       Thanks to Damien Tournoud.
>=20
>    *) Bugfix: alerts "sendfile() failed" if the "sendfile" directive =
was
>       used on OS X; the bug had appeared in 1.7.8.
>=20
>    *) Bugfix: alerts "sem_post() failed" might appear in logs.
>=20
>    *) Bugfix: nginx could not be built with musl libc.
>       Thanks to James Taylor.
>=20
>    *) Bugfix: nginx could not be built on Tru64 UNIX.
>       Thanks to Goetz T. Fischer.
>=20
> Changes with nginx 1.7.9                                         23 =
Dec 2014
>=20
>    *) Feature: variables support in the "proxy_cache", =
"fastcgi_cache",
>       "scgi_cache", and "uwsgi_cache" directives.
>=20
>    *) Feature: variables support in the "expires" directive.
>=20
>    *) Feature: loading of secret keys from hardware tokens with =
OpenSSL
>       engines.
>       Thanks to Dmitrii Pichulin.
>=20
>    *) Feature: the "autoindex_format" directive.
>=20
>    *) Bugfix: cache revalidation is now only used for responses with =
200
>       and 206 status codes.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: the "TE" client request header line was passed to =
backends
>       while proxying.
>=20
>    *) Bugfix: the "proxy_pass", "fastcgi_pass", "scgi_pass", and
>       "uwsgi_pass" directives might not work correctly inside the "if" =
and
>       "limit_except" blocks.
>=20
>    *) Bugfix: the "proxy_store" directive with the "on" parameter was
>       ignored if the "proxy_store" directive with an explicitly =
specified
>       file path was used on a previous level.
>=20
>    *) Bugfix: nginx could not be built with BoringSSL.
>       Thanks to Lukas Tribus.
>=20
> Changes with nginx 1.7.8                                         02 =
Dec 2014
>=20
>    *) Change: now the "If-Modified-Since", "If-Range", etc. client =
request
>       header lines are passed to a backend while caching if nginx =
knows in
>       advance that the response will not be cached (e.g., when using
>       proxy_cache_min_uses).
>=20
>    *) Change: now after proxy_cache_lock_timeout nginx sends a request =
to a
>       backend with caching disabled; the new directives
>       "proxy_cache_lock_age", "fastcgi_cache_lock_age",
>       "scgi_cache_lock_age", and "uwsgi_cache_lock_age" specify a time
>       after which the lock will be released and another attempt to =
cache a
>       response will be made.
>=20
>    *) Change: the "log_format" directive can now be used only at http
>       level.
>=20
>    *) Feature: the "proxy_ssl_certificate", =
"proxy_ssl_certificate_key",
>       "proxy_ssl_password_file", "uwsgi_ssl_certificate",
>       "uwsgi_ssl_certificate_key", and "uwsgi_ssl_password_file"
>       directives.
>       Thanks to Piotr Sikora.
>=20
>    *) Feature: it is now possible to switch to a named location using
>       "X-Accel-Redirect".
>       Thanks to Toshikuni Fukaya.
>=20
>    *) Feature: now the "tcp_nodelay" directive works with SPDY =
connections.
>=20
>    *) Feature: new directives in vim syntax highliting scripts.
>       Thanks to Peter Wu.
>=20
>    *) Bugfix: nginx ignored the "s-maxage" value in the =
"Cache-Control"
>       backend response header line.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: in the ngx_http_spdy_module.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: in the "ssl_password_file" directive when using OpenSSL
>       0.9.8zc, 1.0.0o, 1.0.1j.
>=20
>    *) Bugfix: alerts "header already sent" appeared in logs if the
>       "post_action" directive was used; the bug had appeared in 1.5.4.
>=20
>    *) Bugfix: alerts "the http output chain is empty" might appear in =
logs
>       if the "postpone_output 0" directive was used with SSI includes.
>=20
>    *) Bugfix: in the "proxy_cache_lock" directive with SSI =
subrequests.
>       Thanks to Yichun Zhang.
>=20
> Changes with nginx 1.7.7                                         28 =
Oct 2014
>=20
>    *) Change: now nginx takes into account the "Vary" header line in a
>       backend response while caching.
>=20
>    *) Feature: the "proxy_force_ranges", "fastcgi_force_ranges",
>       "scgi_force_ranges", and "uwsgi_force_ranges" directives.
>=20
>    *) Feature: the "proxy_limit_rate", "fastcgi_limit_rate",
>       "scgi_limit_rate", and "uwsgi_limit_rate" directives.
>=20
>    *) Feature: the "Vary" parameter of the "proxy_ignore_headers",
>       "fastcgi_ignore_headers", "scgi_ignore_headers", and
>       "uwsgi_ignore_headers" directives.
>=20
>    *) Bugfix: the last part of a response received from a backend with
>       unbufferred proxy might not be sent to a client if "gzip" or =
"gunzip"
>       directives were used.
>=20
>    *) Bugfix: in the "proxy_cache_revalidate" directive.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: in error handling.
>       Thanks to Yichun Zhang and Daniil Bondarev.
>=20
>    *) Bugfix: in the "proxy_next_upstream_tries" and
>       "proxy_next_upstream_timeout" directives.
>       Thanks to Feng Gu.
>=20
>    *) Bugfix: nginx/Windows could not be built with MinGW-w64 gcc.
>       Thanks to Kouhei Sutou.
>=20
> Changes with nginx 1.7.6                                         30 =
Sep 2014
>=20
>    *) Change: the deprecated "limit_zone" directive is not supported
>       anymore.
>=20
>    *) Feature: the "limit_conn_zone" and "limit_req_zone" directives =
now
>       can be used with combinations of multiple variables.
>=20
>    *) Bugfix: request body might be transmitted incorrectly when =
retrying a
>       FastCGI request to the next upstream server.
>=20
>    *) Bugfix: in logging to syslog.
>=20
> Changes with nginx 1.7.5                                         16 =
Sep 2014
>=20
>    *) Security: it was possible to reuse SSL sessions in unrelated =
contexts
>       if a shared SSL session cache or the same TLS session ticket key =
was
>       used for multiple "server" blocks (CVE-2014-3616).
>       Thanks to Antoine Delignat-Lavaud.
>=20
>    *) Change: now the "stub_status" directive does not require a =
parameter.
>=20
>    *) Feature: the "always" parameter of the "add_header" directive.
>=20
>    *) Feature: the "proxy_next_upstream_tries",
>       "proxy_next_upstream_timeout", "fastcgi_next_upstream_tries",
>       "fastcgi_next_upstream_timeout", =
"memcached_next_upstream_tries",
>       "memcached_next_upstream_timeout", "scgi_next_upstream_tries",
>       "scgi_next_upstream_timeout", "uwsgi_next_upstream_tries", and
>       "uwsgi_next_upstream_timeout" directives.
>=20
>    *) Bugfix: in the "if" parameter of the "access_log" directive.
>=20
>    *) Bugfix: in the ngx_http_perl_module.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: the "listen" directive of the mail proxy module did not =
allow
>       to specify more than two parameters.
>=20
>    *) Bugfix: the "sub_filter" directive did not work with a string to
>       replace consisting of a single character.
>=20
>    *) Bugfix: requests might hang if resolver was used and a timeout
>       occurred during a DNS request.
>=20
>    *) Bugfix: in the ngx_http_spdy_module when using with AIO.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process if =
the
>       "set" directive was used to change the "$http_...", =
"$sent_http_...",
>       or "$upstream_http_..." variables.
>=20
>    *) Bugfix: in memory allocation error handling.
>       Thanks to Markus Linnala and Feng Gu.
>=20
> Changes with nginx 1.7.4                                         05 =
Aug 2014
>=20
>    *) Security: pipelined commands were not discarded after STARTTLS
>       command in SMTP proxy (CVE-2014-3556); the bug had appeared in =
1.5.6.
>       Thanks to Chris Boulton.
>=20
>    *) Change: URI escaping now uses uppercase hexadecimal digits.
>       Thanks to Piotr Sikora.
>=20
>    *) Feature: now nginx can be build with BoringSSL and LibreSSL.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: requests might hang if resolver was used and a DNS =
server
>       returned a malformed response; the bug had appeared in 1.5.8.
>=20
>    *) Bugfix: in the ngx_http_spdy_module.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: the $uri variable might contain garbage when returning =
errors
>       with code 400.
>       Thanks to Sergey Bobrov.
>=20
>    *) Bugfix: in error handling in the "proxy_store" directive and the
>       ngx_http_dav_module.
>       Thanks to Feng Gu.
>=20
>    *) Bugfix: a segmentation fault might occur if logging of errors to
>       syslog was used; the bug had appeared in 1.7.1.
>=20
>    *) Bugfix: the $geoip_latitude, $geoip_longitude, $geoip_dma_code, =
and
>       $geoip_area_code variables might not work.
>       Thanks to Yichun Zhang.
>=20
>    *) Bugfix: in memory allocation error handling.
>       Thanks to Tatsuhiko Kubo and Piotr Sikora.
>=20
> Changes with nginx 1.7.3                                         08 =
Jul 2014
>=20
>    *) Feature: weak entity tags are now preserved on response
>       modifications, and strong ones are changed to weak.
>=20
>    *) Feature: cache revalidation now uses If-None-Match header if
>       possible.
>=20
>    *) Feature: the "ssl_password_file" directive.
>=20
>    *) Bugfix: the If-None-Match request header line was ignored if =
there
>       was no Last-Modified header in a response returned from cache.
>=20
>    *) Bugfix: "peer closed connection in SSL handshake" messages were
>       logged at "info" level instead of "error" while connecting to
>       backends.
>=20
>    *) Bugfix: in the ngx_http_dav_module module in nginx/Windows.
>=20
>    *) Bugfix: SPDY connections might be closed prematurely if caching =
was
>       used.
>=20
> Changes with nginx 1.7.2                                         17 =
Jun 2014
>=20
>    *) Feature: the "hash" directive inside the "upstream" block.
>=20
>    *) Feature: defragmentation of free shared memory blocks.
>       Thanks to Wandenberg Peixoto and Yichun Zhang.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process if =
the
>       default value of the "access_log" directive was used; the bug =
had
>       appeared in 1.7.0.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: trailing slash was mistakenly removed from the last =
parameter
>       of the "try_files" directive.
>=20
>    *) Bugfix: nginx could not be built on OS X in some cases.
>=20
>    *) Bugfix: in the ngx_http_spdy_module.
>=20
> Changes with nginx 1.7.1                                         27 =
May 2014
>=20
>    *) Feature: the "$upstream_cookie_..." variables.
>=20
>    *) Feature: the $ssl_client_fingerprint variable.
>=20
>    *) Feature: the "error_log" and "access_log" directives now support
>       logging to syslog.
>=20
>    *) Feature: the mail proxy now logs client port on connect.
>=20
>    *) Bugfix: memory leak if the "ssl_stapling" directive was used.
>       Thanks to Filipe da Silva.
>=20
>    *) Bugfix: the "alias" directive used inside a location given by a
>       regular expression worked incorrectly if the "if" or =
"limit_except"
>       directives were used.
>=20
>    *) Bugfix: the "charset" directive did not set a charset to encoded
>       backend responses.
>=20
>    *) Bugfix: a "proxy_pass" directive without URI part might use =
original
>       request after the $args variable was set.
>       Thanks to Yichun Zhang.
>=20
>    *) Bugfix: in the "none" parameter in the "smtp_auth" directive; =
the bug
>       had appeared in 1.5.6.
>       Thanks to Svyatoslav Nikolsky.
>=20
>    *) Bugfix: if sub_filter and SSI were used together, then responses
>       might be transferred incorrectly.
>=20
>    *) Bugfix: nginx could not be built with the --with-file-aio option =
on
>       Linux/aarch64.
>=20
> Changes with nginx 1.7.0                                         24 =
Apr 2014
>=20
>    *) Feature: backend SSL certificate verification.
>=20
>    *) Feature: support for SNI while working with SSL backends.
>=20
>    *) Feature: the $ssl_server_name variable.
>=20
>    *) Feature: the "if" parameter of the "access_log" directive.
>=20
> Changes with nginx 1.5.13                                        08 =
Apr 2014
>=20
>    *) Change: improved hash table handling; the default values of the
>       "variables_hash_max_size" and "types_hash_bucket_size" were =
changed
>       to 1024 and 64 respectively.
>=20
>    *) Feature: the ngx_http_mp4_module now supports the "end" =
argument.
>=20
>    *) Feature: byte ranges support in the ngx_http_mp4_module and =
while
>       saving responses to cache.
>=20
>    *) Bugfix: alerts "ngx_slab_alloc() failed: no memory" no longer =
logged
>       when using shared memory in the "ssl_session_cache" directive =
and in
>       the ngx_http_limit_req_module.
>=20
>    *) Bugfix: the "underscores_in_headers" directive did not allow
>       underscore as a first character of a header.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: cache manager might hog CPU on exit in nginx/Windows.
>=20
>    *) Bugfix: nginx/Windows terminated abnormally if the
>       "ssl_session_cache" directive was used with the "shared" =
parameter.
>=20
>    *) Bugfix: in the ngx_http_spdy_module.
>=20
> Changes with nginx 1.5.12                                        18 =
Mar 2014
>=20
>    *) Security: a heap memory buffer overflow might occur in a worker
>       process while handling a specially crafted request by
>       ngx_http_spdy_module, potentially resulting in arbitrary code
>       execution (CVE-2014-0133).
>       Thanks to Lucas Molas, researcher at Programa STIC, Fundaci=C3=B3n=
 Dr.
>       Manuel Sadosky, Buenos Aires, Argentina.
>=20
>    *) Feature: the "proxy_protocol" parameters of the "listen" and
>       "real_ip_header" directives, the $proxy_protocol_addr variable.
>=20
>    *) Bugfix: in the "fastcgi_next_upstream" directive.
>       Thanks to Lucas Molas.
>=20
> Changes with nginx 1.5.11                                        04 =
Mar 2014
>=20
>    *) Security: memory corruption might occur in a worker process on =
32-bit
>       platforms while handling a specially crafted request by
>       ngx_http_spdy_module, potentially resulting in arbitrary code
>       execution (CVE-2014-0088); the bug had appeared in 1.5.10.
>       Thanks to Lucas Molas, researcher at Programa STIC, Fundaci=C3=B3n=
 Dr.
>       Manuel Sadosky, Buenos Aires, Argentina.
>=20
>    *) Feature: the $ssl_session_reused variable.
>=20
>    *) Bugfix: the "client_max_body_size" directive might not work when
>       reading a request body using chunked transfer encoding; the bug =
had
>       appeared in 1.3.9.
>       Thanks to Lucas Molas.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process =
when
>       proxying WebSocket connections.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process if =
the
>       ngx_http_spdy_module was used on 32-bit platforms; the bug had
>       appeared in 1.5.10.
>=20
>    *) Bugfix: the $upstream_status variable might contain wrong data =
if the
>       "proxy_cache_use_stale" or "proxy_cache_revalidate" directives =
were
>       used.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process if
>       errors with code 400 were redirected to a named location using =
the
>       "error_page" directive.
>=20
>    *) Bugfix: nginx/Windows could not be built with Visual Studio =
2013.
>=20
> Changes with nginx 1.5.10                                        04 =
Feb 2014
>=20
>    *) Feature: the ngx_http_spdy_module now uses SPDY 3.1 protocol.
>       Thanks to Automattic and MaxCDN for sponsoring this work.
>=20
>    *) Feature: the ngx_http_mp4_module now skips tracks too short for =
a
>       seek requested.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process if =
the
>       $ssl_session_id variable was used in logs; the bug had appeared =
in
>       1.5.9.
>=20
>    *) Bugfix: the $date_local and $date_gmt variables used wrong =
format
>       outside of the ngx_http_ssi_filter_module.
>=20
>    *) Bugfix: client connections might be immediately closed if =
deferred
>       accept was used; the bug had appeared in 1.3.15.
>=20
>    *) Bugfix: alerts "getsockopt(TCP_FASTOPEN) ... failed" appeared in =
logs
>       during binary upgrade on Linux; the bug had appeared in 1.5.8.
>       Thanks to Piotr Sikora.
>=20
> Changes with nginx 1.5.9                                         22 =
Jan 2014
>=20
>    *) Change: now nginx expects escaped URIs in "X-Accel-Redirect" =
headers.
>=20
>    *) Feature: the "ssl_buffer_size" directive.
>=20
>    *) Feature: the "limit_rate" directive can now be used to rate =
limit
>       responses sent in SPDY connections.
>=20
>    *) Feature: the "spdy_chunk_size" directive.
>=20
>    *) Feature: the "ssl_session_tickets" directive.
>       Thanks to Dirkjan Bussink.
>=20
>    *) Bugfix: the $ssl_session_id variable contained full session
>       serialized instead of just a session id.
>       Thanks to Ivan Risti=C4=87.
>=20
>    *) Bugfix: nginx incorrectly handled escaped "?" character in the
>       "include" SSI command.
>=20
>    *) Bugfix: the ngx_http_dav_module did not unescape destination URI =
of
>       the COPY and MOVE methods.
>=20
>    *) Bugfix: resolver did not understand domain names with a trailing =
dot.
>       Thanks to Yichun Zhang.
>=20
>    *) Bugfix: alerts "zero size buf in output" might appear in logs =
while
>       proxying; the bug had appeared in 1.3.9.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process if =
the
>       ngx_http_spdy_module was used.
>=20
>    *) Bugfix: proxied WebSocket connections might hang right after
>       handshake if the select, poll, or /dev/poll methods were used.
>=20
>    *) Bugfix: the "xclient" directive of the mail proxy module =
incorrectly
>       handled IPv6 client addresses.
>=20
> Changes with nginx 1.5.8                                         17 =
Dec 2013
>=20
>    *) Feature: IPv6 support in resolver.
>=20
>    *) Feature: the "listen" directive supports the "fastopen" =
parameter.
>       Thanks to Mathew Rodley.
>=20
>    *) Feature: SSL support in the ngx_http_uwsgi_module.
>       Thanks to Roberto De Ioris.
>=20
>    *) Feature: vim syntax highlighting scripts were added to contrib.
>       Thanks to Evan Miller.
>=20
>    *) Bugfix: a timeout might occur while reading client request body =
in an
>       SSL connection using chunked transfer encoding.
>=20
>    *) Bugfix: the "master_process" directive did not work correctly in
>       nginx/Windows.
>=20
>    *) Bugfix: the "setfib" parameter of the "listen" directive might =
not
>       work.
>=20
>    *) Bugfix: in the ngx_http_spdy_module.
>=20
> Changes with nginx 1.5.7                                         19 =
Nov 2013
>=20
>    *) Security: a character following an unescaped space in a request =
line
>       was handled incorrectly (CVE-2013-4547); the bug had appeared in
>       0.8.41.
>       Thanks to Ivan Fratric of the Google Security Team.
>=20
>    *) Change: a logging level of auth_basic errors about no =
user/password
>       provided has been lowered from "error" to "info".
>=20
>    *) Feature: the "proxy_cache_revalidate", =
"fastcgi_cache_revalidate",
>       "scgi_cache_revalidate", and "uwsgi_cache_revalidate" =
directives.
>=20
>    *) Feature: the "ssl_session_ticket_key" directive.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: the directive "add_header Cache-Control ''" added a
>       "Cache-Control" response header line with an empty value.
>=20
>    *) Bugfix: the "satisfy any" directive might return 403 error =
instead of
>       401 if auth_request and auth_basic directives were used.
>       Thanks to Jan Marc Hoffmann.
>=20
>    *) Bugfix: the "accept_filter" and "deferred" parameters of the =
"listen"
>       directive were ignored for listen sockets created during binary
>       upgrade.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: some data received from a backend with unbufferred proxy
>       might not be sent to a client immediately if "gzip" or "gunzip"
>       directives were used.
>       Thanks to Yichun Zhang.
>=20
>    *) Bugfix: in error handling in ngx_http_gunzip_filter_module.
>=20
>    *) Bugfix: responses might hang if the ngx_http_spdy_module was =
used
>       with the "auth_request" directive.
>=20
>    *) Bugfix: memory leak in nginx/Windows.
>=20
> Changes with nginx 1.5.6                                         01 =
Oct 2013
>=20
>    *) Feature: the "fastcgi_buffering" directive.
>=20
>    *) Feature: the "proxy_ssl_protocols" and "proxy_ssl_ciphers"
>       directives.
>       Thanks to Piotr Sikora.
>=20
>    *) Feature: optimization of SSL handshakes when using long =
certificate
>       chains.
>=20
>    *) Feature: the mail proxy supports SMTP pipelining.
>=20
>    *) Bugfix: in the ngx_http_auth_basic_module when using "$apr1$"
>       password encryption method.
>       Thanks to Markus Linnala.
>=20
>    *) Bugfix: in MacOSX, Cygwin, and nginx/Windows incorrect location =
might
>       be used to process a request if locations were given using =
characters
>       in different cases.
>=20
>    *) Bugfix: automatic redirect with appended trailing slash for =
proxied
>       locations might not work.
>=20
>    *) Bugfix: in the mail proxy server.
>=20
>    *) Bugfix: in the ngx_http_spdy_module.
>=20
> Changes with nginx 1.5.5                                         17 =
Sep 2013
>=20
>    *) Change: now nginx assumes HTTP/1.0 by default if it is not able =
to
>       detect protocol reliably.
>=20
>    *) Feature: the "disable_symlinks" directive now uses O_PATH on =
Linux.
>=20
>    *) Feature: now nginx uses EPOLLRDHUP events to detect premature
>       connection close by clients if the "epoll" method is used.
>=20
>    *) Bugfix: in the "valid_referers" directive if the "server_names"
>       parameter was used.
>=20
>    *) Bugfix: the $request_time variable did not work in =
nginx/Windows.
>=20
>    *) Bugfix: in the "image_filter" directive.
>       Thanks to Lanshun Zhou.
>=20
>    *) Bugfix: OpenSSL 1.0.1f compatibility.
>       Thanks to Piotr Sikora.
>=20
> Changes with nginx 1.5.4                                         27 =
Aug 2013
>=20
>    *) Change: the "js" extension MIME type has been changed to
>       "application/javascript"; default value of the "charset_types"
>       directive was changed accordingly.
>=20
>    *) Change: now the "image_filter" directive with the "size" =
parameter
>       returns responses with the "application/json" MIME type.
>=20
>    *) Feature: the ngx_http_auth_request_module.
>=20
>    *) Bugfix: a segmentation fault might occur on start or during
>       reconfiguration if the "try_files" directive was used with an =
empty
>       parameter.
>=20
>    *) Bugfix: memory leak if relative paths were specified using =
variables
>       in the "root" or "auth_basic_user_file" directives.
>=20
>    *) Bugfix: the "valid_referers" directive incorrectly executed =
regular
>       expressions if a "Referer" header started with "https://".
>       Thanks to Liangbin Li.
>=20
>    *) Bugfix: responses might hang if subrequests were used and an SSL
>       handshake error happened during subrequest processing.
>       Thanks to Aviram Cohen.
>=20
>    *) Bugfix: in the ngx_http_autoindex_module.
>=20
>    *) Bugfix: in the ngx_http_spdy_module.
>=20
> Changes with nginx 1.5.3                                         30 =
Jul 2013
>=20
>    *) Change in internal API: now u->length defaults to -1 if working =
with
>       backends in unbuffered mode.
>=20
>    *) Change: now after receiving an incomplete response from a =
backend
>       server nginx tries to send an available part of the response to =
a
>       client, and then closes client connection.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process if =
the
>       ngx_http_spdy_module was used with the =
"client_body_in_file_only"
>       directive.
>=20
>    *) Bugfix: the "so_keepalive" parameter of the "listen" directive =
might
>       be handled incorrectly on DragonFlyBSD.
>       Thanks to Sepherosa Ziehau.
>=20
>    *) Bugfix: in the ngx_http_xslt_filter_module.
>=20
>    *) Bugfix: in the ngx_http_sub_filter_module.
>=20
> Changes with nginx 1.5.2                                         02 =
Jul 2013
>=20
>    *) Feature: now several "error_log" directives can be used.
>=20
>    *) Bugfix: the $r->header_in() embedded perl method did not return =
value
>       of the "Cookie" and "X-Forwarded-For" request header lines; the =
bug
>       had appeared in 1.3.14.
>=20
>    *) Bugfix: in the ngx_http_spdy_module.
>       Thanks to Jim Radford.
>=20
>    *) Bugfix: nginx could not be built on Linux with x32 ABI.
>       Thanks to Serguei Ivantsov.
>=20
> Changes with nginx 1.5.1                                         04 =
Jun 2013
>=20
>    *) Feature: the "ssi_last_modified", "sub_filter_last_modified", =
and
>       "xslt_last_modified" directives.
>       Thanks to Alexey Kolpakov.
>=20
>    *) Feature: the "http_403" parameter of the "proxy_next_upstream",
>       "fastcgi_next_upstream", "scgi_next_upstream", and
>       "uwsgi_next_upstream" directives.
>=20
>    *) Feature: the "allow" and "deny" directives now support unix =
domain
>       sockets.
>=20
>    *) Bugfix: nginx could not be built with the ngx_mail_ssl_module, =
but
>       without ngx_http_ssl_module; the bug had appeared in 1.3.14.
>=20
>    *) Bugfix: in the "proxy_set_body" directive.
>       Thanks to Lanshun Zhou.
>=20
>    *) Bugfix: in the "lingering_time" directive.
>       Thanks to Lanshun Zhou.
>=20
>    *) Bugfix: the "fail_timeout" parameter of the "server" directive =
in the
>       "upstream" context might not work if "max_fails" parameter was =
used;
>       the bug had appeared in 1.3.0.
>=20
>    *) Bugfix: a segmentation fault might occur in a worker process if =
the
>       "ssl_stapling" directive was used.
>       Thanks to Piotr Sikora.
>=20
>    *) Bugfix: in the mail proxy server.
>       Thanks to Filipe Da Silva.
>=20
>    *) Bugfix: nginx/Windows might stop accepting connections if =
several
>       worker processes were used.
>=20
> Changes with nginx 1.5.0                                         07 =
May 2013
>=20
>    *) Security: a stack-based buffer overflow might occur in a worker
>       process while handling a specially crafted request, potentially
>       resulting in arbitrary code execution (CVE-2013-2028); the bug =
had
>       appeared in 1.3.9.
>       Thanks to Greg MacManus, iSIGHT Partners Labs.
>=20


This is good info. Although a link to diff in cgit or web view of =
whatever SCM nginx uses would have done too.

> Signed-off-by: Jens Rehsack <sno@netbsd.org>
> ---
> .../recipes-httpd/nginx/files/nginx-cross.patch    |  17 +--
> meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb  | 131 =
---------------------
> meta-webserver/recipes-httpd/nginx/nginx_1.9.5.bb  | 131 =
+++++++++++++++++++++
> 3 files changed, 140 insertions(+), 139 deletions(-)
> delete mode 100644 meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb
> create mode 100644 meta-webserver/recipes-httpd/nginx/nginx_1.9.5.bb
>=20
> diff --git =
a/meta-webserver/recipes-httpd/nginx/files/nginx-cross.patch =
b/meta-webserver/recipes-httpd/nginx/files/nginx-cross.patch
> index 5f899a1..46792ba 100644
> --- a/meta-webserver/recipes-httpd/nginx/files/nginx-cross.patch
> +++ b/meta-webserver/recipes-httpd/nginx/files/nginx-cross.patch
> @@ -122,7 +122,7 @@ diff -uraN nginx-1.0.11.orig/auto/options =
nginx-1.0.11/auto/options
> diff -uraN nginx-1.0.11.orig/auto/types/sizeof =
nginx-1.0.11/auto/types/sizeof
> --- nginx-1.0.11.orig/auto/types/sizeof	2006-06-28 =
11:00:26.000000000 -0500
> +++ nginx-1.0.11/auto/types/sizeof	2011-12-27 13:56:42.323370040 =
-0600
> -@@ -11,9 +11,12 @@
> +@@ -12,9 +12,12 @@
>=20
>  END
>=20
> @@ -137,14 +137,14 @@ diff -uraN nginx-1.0.11.orig/auto/types/sizeof =
nginx-1.0.11/auto/types/sizeof
>=20
>  #include <sys/types.h>
>  #include <sys/time.h>
> -@@ -31,19 +34,20 @@
> +@@ -33,20 +36,20 @@
>  END
>=20
>=20
> -ngx_test=3D"$CC $CC_TEST_FLAGS $CC_AUX_FLAGS \
> -          -o $NGX_AUTOTEST $NGX_AUTOTEST.c $NGX_LD_OPT =
$ngx_feature_libs"
> +    ngx_test=3D"$CC $CC_TEST_FLAGS $CC_AUX_FLAGS \
> -+              -o $NGX_AUTOTEST $NGX_AUTOTEST.c $NGX_LD_OPT =
$ngx_feature_libs"
> ++	      -o $NGX_AUTOTEST $NGX_AUTOTEST.c $NGX_LD_OPT =
$ngx_feature_libs"
>=20
> -eval "$ngx_test >> $NGX_AUTOCONF_ERR 2>&1"
> +    eval "$ngx_test >> $NGX_AUTOCONF_ERR 2>&1"
> @@ -155,17 +155,18 @@ diff -uraN nginx-1.0.11.orig/auto/types/sizeof =
nginx-1.0.11/auto/types/sizeof
> -    echo " $ngx_size bytes"
> -fi
> +    if [ -x $NGX_AUTOTEST ]; then
> -+        ngx_size=3D`$NGX_AUTOTEST`
> -+        echo " $ngx_size bytes"
> ++	ngx_size=3D`$NGX_AUTOTEST`
> ++	echo " $ngx_size bytes"
> +    fi
>=20
>=20
> --rm -f $NGX_AUTOTEST
> -+    rm -f $NGX_AUTOTEST
> +-rm -rf $NGX_AUTOTEST*
> +-
> ++    rm -rf $NGX_AUTOTEST*
> +fi
>=20
> -
>  case $ngx_size in
> +     4)
> diff -uraN nginx-1.0.11.orig/auto/unix nginx-1.0.11/auto/unix
> --- nginx-1.0.11.orig/auto/unix	2011-12-14 07:34:16.000000000 =
-0600
> +++ nginx-1.0.11/auto/unix	2011-12-27 13:56:42.327370060 -0600
> diff --git a/meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb =
b/meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb
> deleted file mode 100644
> index 27e4749..0000000
> --- a/meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb
> +++ /dev/null


please user git format-patch -M to let git work harder on detecting =
renames, its way easier to review the changes that way
this patch belongs to openembedded-devel list so please resend it there =
with prefixing the layer in meta-openembedded repo [meta-webserver] =
where the patch is applied.

> @@ -1,131 +0,0 @@
> -SUMMARY =3D "HTTP and reverse proxy server"
> -
> -DESCRIPTION =3D "Nginx is a web server and a reverse proxy server for =
\
> -HTTP, SMTP, POP3 and IMAP protocols, with a strong focus on high  \
> -concurrency, performance and low memory usage."
> -
> -HOMEPAGE =3D "http://nginx.org/"
> -LICENSE =3D "BSD-2-Clause"
> -LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D917bfdf005ffb6fd025550414ff05a9f"
> -SECTION =3D "net"
> -
> -DEPENDS =3D "libpcre gzip openssl"
> -
> -SRC_URI =3D " \
> -	http://nginx.org/download/nginx-${PV}.tar.gz \
> -	file://nginx-cross.patch \
> -	file://nginx.conf \
> -	file://nginx.init \
> -	file://nginx-volatile.conf \
> -	file://nginx.service \
> -"
> -SRC_URI[md5sum] =3D "5dfaba1cbeae9087f3949860a02caa9f"
> -SRC_URI[sha256sum] =3D =
"7c989a58e5408c9593da0bebcd0e4ffc3d892d1316ba5042ddb0be5b0b4102b9"
> -
> -inherit update-rc.d useradd
> -
> -CFLAGS_append =3D " -fPIE -pie"
> -CXXFLAGS_append =3D " -fPIE -pie"
> -
> -do_configure () {
> -	if [ "${SITEINFO_BITS}" =3D "64" ]; then
> -		PTRSIZE=3D8
> -	else
> -		PTRSIZE=3D4
> -	fi
> -
> -	echo $CFLAGS
> -	echo $LDFLAGS
> -
> -	./configure \
> -	--crossbuild=3DLinux:${TUNE_ARCH} \
> -	--with-endian=3D${@base_conditional('SITEINFO_ENDIANNESS', 'le', =
'little', 'big', d)} \
> -	--with-int=3D4 \
> -	--with-long=3D${PTRSIZE} \
> -	--with-long-long=3D8 \
> -	--with-ptr-size=3D${PTRSIZE} \
> -	--with-sig-atomic-t=3D${PTRSIZE} \
> -	--with-size-t=3D${PTRSIZE} \
> -	--with-off-t=3D${PTRSIZE} \
> -	--with-time-t=3D${PTRSIZE} \
> -	--with-sys-nerr=3D132 \
> -	--conf-path=3D${sysconfdir}/nginx/nginx.conf \
> -	--http-log-path=3D${localstatedir}/log/nginx/access.log \
> -	--error-log-path=3D${localstatedir}/log/nginx/error.log \
> -	--pid-path=3D/run/nginx/nginx.pid \
> -	--prefix=3D${prefix} \
> -	--with-http_ssl_module \
> -	--with-http_gzip_static_module
> -}
> -
> -do_install () {
> -	oe_runmake 'DESTDIR=3D${D}' install
> -	rm -fr ${D}${localstatedir}/run ${D}/run
> -	if ${@base_contains('DISTRO_FEATURES', 'systemd', 'true', =
'false', d)}; then
> -		install -d ${D}${sysconfdir}/tmpfiles.d
> -		echo "d /run/${BPN} - - - -" \
> -		     > ${D}${sysconfdir}/tmpfiles.d/${BPN}.conf
> -	fi
> -	install -d ${D}${sysconfdir}/${BPN}
> -	ln -snf ${localstatedir}/run/${BPN} ${D}${sysconfdir}/${BPN}/run
> -	install -d ${D}${localstatedir}/www/localhost
> -	mv ${D}/usr/html ${D}${localstatedir}/www/localhost/
> -	chown www:www-data -R ${D}${localstatedir}
> -
> -	install -d ${D}${sysconfdir}/init.d
> -	install -m 0755 ${WORKDIR}/nginx.init =
${D}${sysconfdir}/init.d/nginx
> -	sed -i 's,/usr/sbin/,${sbindir}/,g' =
${D}${sysconfdir}/init.d/nginx
> -	sed -i 's,/etc/,${sysconfdir}/,g'  =
${D}${sysconfdir}/init.d/nginx
> -
> -	install -d ${D}${sysconfdir}/nginx
> -	install -m 0644 ${WORKDIR}/nginx.conf =
${D}${sysconfdir}/nginx/nginx.conf
> -	sed -i 's,/var/,${localstatedir}/,g' =
${D}${sysconfdir}/nginx/nginx.conf
> -	install -d ${D}${sysconfdir}/nginx/sites-enabled
> -
> -	install -d ${D}${sysconfdir}/default/volatiles
> -	install -m 0644 ${WORKDIR}/nginx-volatile.conf =
${D}${sysconfdir}/default/volatiles/99_nginx
> -	sed -i 's,/var/,${localstatedir}/,g' =
${D}${sysconfdir}/default/volatiles/99_nginx
> -
> -        if =
${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
> -            install -d ${D}${systemd_unitdir}/system
> -            install -m 0644 ${WORKDIR}/nginx.service =
${D}${systemd_unitdir}/system/
> -            sed -i -e 's,@SYSCONFDIR@,${sysconfdir},g' \
> -                    -e 's,@LOCALSTATEDIR@,${localstatedir},g' \
> -                    ${D}${systemd_unitdir}/system/nginx.service
> -        fi
> -}
> -
> -pkg_postinst_${PN} () {
> -	if [ -z "$D" ]; then
> -		if type systemd-tmpfiles >/dev/null; then
> -			systemd-tmpfiles --create
> -		elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; =
then
> -			${sysconfdir}/init.d/populate-volatile.sh update
> -		fi
> -	fi
> -}
> -
> -FILES_${PN} +=3D "${localstatedir}/ \
> -                ${systemd_unitdir}/system/nginx.service \
> -                "
> -
> -CONFFILES_${PN} =3D "${sysconfdir}/nginx/nginx.conf \
> -		${sysconfdir}/nginx/fastcgi.conf\
> -		${sysconfdir}/nginx/fastcgi_params \
> -		${sysconfdir}/nginx/koi-utf \
> -		${sysconfdir}/nginx/koi-win \
> -		${sysconfdir}/nginx/mime.types \
> -		${sysconfdir}/nginx/scgi_params \
> -		${sysconfdir}/nginx/uwsgi_params \
> -		${sysconfdir}/nginx/win-utf \
> -"
> -
> -INITSCRIPT_NAME =3D "nginx"
> -INITSCRIPT_PARAMS =3D "defaults 92 20"
> -
> -USERADD_PACKAGES =3D "${PN}"
> -USERADD_PARAM_${PN} =3D " \
> -    --system --no-create-home \
> -    --home ${localstatedir}/www/localhost \
> -    --groups www-data \
> -    --user-group www"
> diff --git a/meta-webserver/recipes-httpd/nginx/nginx_1.9.5.bb =
b/meta-webserver/recipes-httpd/nginx/nginx_1.9.5.bb
> new file mode 100644
> index 0000000..a251523
> --- /dev/null
> +++ b/meta-webserver/recipes-httpd/nginx/nginx_1.9.5.bb
> @@ -0,0 +1,131 @@
> +SUMMARY =3D "HTTP and reverse proxy server"
> +
> +DESCRIPTION =3D "Nginx is a web server and a reverse proxy server for =
\
> +HTTP, SMTP, POP3 and IMAP protocols, with a strong focus on high  \
> +concurrency, performance and low memory usage."
> +
> +HOMEPAGE =3D "http://nginx.org/"
> +LICENSE =3D "BSD-2-Clause"
> +LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D3845852aedfa8d6d7765f55d06cc3ebd"
> +SECTION =3D "net"
> +
> +DEPENDS =3D "libpcre gzip openssl"
> +
> +SRC_URI =3D " \
> +	http://nginx.org/download/nginx-${PV}.tar.gz \
> +	file://nginx-cross.patch \
> +	file://nginx.conf \
> +	file://nginx.init \
> +	file://nginx-volatile.conf \
> +	file://nginx.service \
> +"
> +SRC_URI[md5sum] =3D "2562320f1535e3e31d165e337ae94f21"
> +SRC_URI[sha256sum] =3D =
"48e2787a6b245277e37cb7c5a31b1549a0bbacf288aa4731baacf9eaacdb481b"
> +
> +inherit update-rc.d useradd
> +
> +CFLAGS_append =3D " -fPIE -pie"
> +CXXFLAGS_append =3D " -fPIE -pie"
> +
> +do_configure () {
> +	if [ "${SITEINFO_BITS}" =3D "64" ]; then
> +		PTRSIZE=3D8
> +	else
> +		PTRSIZE=3D4
> +	fi
> +
> +	echo $CFLAGS
> +	echo $LDFLAGS
> +
> +	./configure \
> +	--crossbuild=3DLinux:${TUNE_ARCH} \
> +	--with-endian=3D${@base_conditional('SITEINFO_ENDIANNESS', 'le', =
'little', 'big', d)} \
> +	--with-int=3D4 \
> +	--with-long=3D${PTRSIZE} \
> +	--with-long-long=3D8 \
> +	--with-ptr-size=3D${PTRSIZE} \
> +	--with-sig-atomic-t=3D${PTRSIZE} \
> +	--with-size-t=3D${PTRSIZE} \
> +	--with-off-t=3D${PTRSIZE} \
> +	--with-time-t=3D${PTRSIZE} \
> +	--with-sys-nerr=3D132 \
> +	--conf-path=3D${sysconfdir}/nginx/nginx.conf \
> +	--http-log-path=3D${localstatedir}/log/nginx/access.log \
> +	--error-log-path=3D${localstatedir}/log/nginx/error.log \
> +	--pid-path=3D/run/nginx/nginx.pid \
> +	--prefix=3D${prefix} \
> +	--with-http_ssl_module \
> +	--with-http_gzip_static_module
> +}
> +
> +do_install () {
> +	oe_runmake 'DESTDIR=3D${D}' install
> +	rm -fr ${D}${localstatedir}/run ${D}/run
> +	if ${@base_contains('DISTRO_FEATURES', 'systemd', 'true', =
'false', d)}; then
> +		install -d ${D}${sysconfdir}/tmpfiles.d
> +		echo "d /run/${BPN} - - - -" \
> +		     > ${D}${sysconfdir}/tmpfiles.d/${BPN}.conf
> +	fi
> +	install -d ${D}${sysconfdir}/${BPN}
> +	ln -snf ${localstatedir}/run/${BPN} ${D}${sysconfdir}/${BPN}/run
> +	install -d ${D}${localstatedir}/www/localhost
> +	mv ${D}/usr/html ${D}${localstatedir}/www/localhost/
> +	chown www:www-data -R ${D}${localstatedir}
> +
> +	install -d ${D}${sysconfdir}/init.d
> +	install -m 0755 ${WORKDIR}/nginx.init =
${D}${sysconfdir}/init.d/nginx
> +	sed -i 's,/usr/sbin/,${sbindir}/,g' =
${D}${sysconfdir}/init.d/nginx
> +	sed -i 's,/etc/,${sysconfdir}/,g'  =
${D}${sysconfdir}/init.d/nginx
> +
> +	install -d ${D}${sysconfdir}/nginx
> +	install -m 0644 ${WORKDIR}/nginx.conf =
${D}${sysconfdir}/nginx/nginx.conf
> +	sed -i 's,/var/,${localstatedir}/,g' =
${D}${sysconfdir}/nginx/nginx.conf
> +	install -d ${D}${sysconfdir}/nginx/sites-enabled
> +
> +	install -d ${D}${sysconfdir}/default/volatiles
> +	install -m 0644 ${WORKDIR}/nginx-volatile.conf =
${D}${sysconfdir}/default/volatiles/99_nginx
> +	sed -i 's,/var/,${localstatedir}/,g' =
${D}${sysconfdir}/default/volatiles/99_nginx
> +
> +        if =
${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
> +            install -d ${D}${systemd_unitdir}/system
> +            install -m 0644 ${WORKDIR}/nginx.service =
${D}${systemd_unitdir}/system/
> +            sed -i -e 's,@SYSCONFDIR@,${sysconfdir},g' \
> +                    -e 's,@LOCALSTATEDIR@,${localstatedir},g' \
> +                    ${D}${systemd_unitdir}/system/nginx.service
> +        fi
> +}
> +
> +pkg_postinst_${PN} () {
> +	if [ -z "$D" ]; then
> +		if type systemd-tmpfiles >/dev/null; then
> +			systemd-tmpfiles --create
> +		elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; =
then
> +			${sysconfdir}/init.d/populate-volatile.sh update
> +		fi
> +	fi
> +}
> +
> +FILES_${PN} +=3D "${localstatedir}/ \
> +                ${systemd_unitdir}/system/nginx.service \
> +                "
> +
> +CONFFILES_${PN} =3D "${sysconfdir}/nginx/nginx.conf \
> +		${sysconfdir}/nginx/fastcgi.conf\
> +		${sysconfdir}/nginx/fastcgi_params \
> +		${sysconfdir}/nginx/koi-utf \
> +		${sysconfdir}/nginx/koi-win \
> +		${sysconfdir}/nginx/mime.types \
> +		${sysconfdir}/nginx/scgi_params \
> +		${sysconfdir}/nginx/uwsgi_params \
> +		${sysconfdir}/nginx/win-utf \
> +"
> +
> +INITSCRIPT_NAME =3D "nginx"
> +INITSCRIPT_PARAMS =3D "defaults 92 20"
> +
> +USERADD_PACKAGES =3D "${PN}"
> +USERADD_PARAM_${PN} =3D " \
> +    --system --no-create-home \
> +    --home ${localstatedir}/www/localhost \
> +    --groups www-data \
> +    --user-group www"
> --
> 1.9.1
>=20
>=20
> --
> Jens Rehsack - rehsack@gmail.com
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A643947C-5A9F-45C3-8F88-221CA05C8ED2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYN3RoACgkQuwUzVZGdMxTgmQCeLClKkpxHq0zIaY3AB4wah017
mQUAnRa3VC9rlCnIccqatOY8gfRp8ilj
=a+0E
-----END PGP SIGNATURE-----

--Apple-Mail=_A643947C-5A9F-45C3-8F88-221CA05C8ED2--

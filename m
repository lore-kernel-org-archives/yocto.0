Received: from mail.h3ndrk.de (mail.h3ndrk.de [188.68.41.99])
 by mx.groups.io with SMTP id smtpd.web10.9985.1623254315848193101
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Jun 2021 08:58:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: h3ndrk.de, ip: 188.68.41.99, mailfrom: yocto@h3ndrk.de)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E7B22A0D85
	for <yocto@lists.yoctoproject.org>; Wed,  9 Jun 2021 17:58:30 +0200 (CEST)
To: yocto@lists.yoctoproject.org
From: yocto@h3ndrk.de
Subject: Extensible SDK of core-image-minimal fails to install
Message-ID: <3f6c7b88-f6b8-f389-f23a-cd33cef7fe95@h3ndrk.de>
Date: Wed, 9 Jun 2021 17:58:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

Hello World,

I'm trying to install an extensible SDK of `core-image-minimal` on a
system different from the build system (build system is Debian 10,
install system is e.g. Ubuntu 20.04). When doing this, the following
error occurs:

```
ERROR: Task
(virtual:native:/home/test/poky_sdk/layers/poky/meta/recipes-devtools
/pseudo/pseudo_git.bb:do_fetch) failed with exit code 'setscene whitelist=
'
```

The full log file `preparing_build_system.log` is available at:
https://pastebin.com/m9KmshY0

It seems `recipes-devtools/pseudo/pseudo_git.bb` does depend on the
build environment and therefore yields different hashes which results in
broken sstate-cache. Does someone know what exactly went wrong and how
to fix it?

Steps to reproduce:

Use the following `kas-project.yml`:

```yml
header:
=C2=A0 version: 10
machine: qemux86-64
distro: poky
local_conf_header:
=C2=A0 standard: |
=C2=A0=C2=A0=C2=A0 CONF_VERSION =3D "1"
=C2=A0=C2=A0=C2=A0 PACKAGE_CLASSES =3D "package_rpm"
repos:
=C2=A0 poky:
=C2=A0=C2=A0=C2=A0 url: "https://git.yoctoproject.org/git/poky"
=C2=A0=C2=A0=C2=A0 refspec: dunfell
=C2=A0=C2=A0=C2=A0 layers:
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 meta:
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 meta-poky:
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 meta-yocto-bsp:
```

Then, run a kas container (https://github.com/siemens/kas, e.g. use
`kas-container` script): `./kas-container shell kas-project.yml` This
will start a Debian 10 container with kas installed.

Build the extensible SDK with `bitbake -c populate_sdk_ext
core-image-minimal`.

After finishing, install the extensible SDK on a different machine (for
testing purposes e.g. in a Docker container for example `ubuntu:20.04`).
It will result in the error mentioned above.

How do I fix that?

Thanks in advance!

Hendrik


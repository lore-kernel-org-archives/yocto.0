Received: from mail.h3ndrk.de (mail.h3ndrk.de [188.68.41.99])
 by mx.groups.io with SMTP id smtpd.web11.2912.1623443409721396559
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 13:30:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: h3ndrk.de, ip: 188.68.41.99, mailfrom: yocto@h3ndrk.de)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id AFE48A0E9D
	for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 22:30:05 +0200 (CEST)
Subject: Re: [yocto] Extensible SDK of core-image-minimal fails to install
To: yocto@lists.yoctoproject.org
References: <1686F53371AAAEA1.32444@lists.yoctoproject.org>
From: "Hendrik" <yocto@h3ndrk.de>
Message-ID: <7d3b564b-d17d-f926-0037-e19ed3e73321@h3ndrk.de>
Date: Fri, 11 Jun 2021 22:30:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1686F53371AAAEA1.32444@lists.yoctoproject.org>
X-Last-TLS-Session-Version: TLSv1.3
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

I was able to reproduce the error even with plain poky (without kas):

```bash
git clone -b dunfell https://git.yoctoproject.org/git/poky
cd poky
source oe-init-build-env
bitbake -c populate_sdk_ext core-image-minimal
```

After successful build, copy the `build/tmp/deploy/sdk/poky....sh` to
another machine (with different OS) and run it there.

I tried several different installation machines and they fail
consistently to install the extensible SDK if they run a different OS
than the build machine (e.g. Debian 10 vs. Ubuntu 18.04 vs. 20.04). See
the exakt error and complete log output in my previous message.

What is happening here? Did I use the extensible SDK wrongly? Is it
expected to be incompatible?

Thanks in advance!

Hendrik

On 09.06.21 17:58, Hendrik wrote:
> Hello World,
>
> I'm trying to install an extensible SDK of `core-image-minimal` on a
> system different from the build system (build system is Debian 10,
> install system is e.g. Ubuntu 20.04). When doing this, the following
> error occurs:
>
> ```
> ERROR: Task
> (virtual:native:/home/test/poky_sdk/layers/poky/meta/recipes-devtools
> /pseudo/pseudo_git.bb:do_fetch) failed with exit code 'setscene whiteli=
st'
> ```
>
> The full log file `preparing_build_system.log` is available at:
> https://pastebin.com/m9KmshY0
>
> It seems `recipes-devtools/pseudo/pseudo_git.bb` does depend on the
> build environment and therefore yields different hashes which results i=
n
> broken sstate-cache. Does someone know what exactly went wrong and how
> to fix it?
>
> Steps to reproduce:
>
> Use the following `kas-project.yml`:
>
> ```yml
> header:
> =C2=A0 version: 10
> machine: qemux86-64
> distro: poky
> local_conf_header:
> =C2=A0 standard: |
> =C2=A0=C2=A0=C2=A0 CONF_VERSION =3D "1"
> =C2=A0=C2=A0=C2=A0 PACKAGE_CLASSES =3D "package_rpm"
> repos:
> =C2=A0 poky:
> =C2=A0=C2=A0=C2=A0 url: "https://git.yoctoproject.org/git/poky"
> =C2=A0=C2=A0=C2=A0 refspec: dunfell
> =C2=A0=C2=A0=C2=A0 layers:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 meta:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 meta-poky:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 meta-yocto-bsp:
> ```
>
> Then, run a kas container (https://github.com/siemens/kas, e.g. use
> `kas-container` script): `./kas-container shell kas-project.yml` This
> will start a Debian 10 container with kas installed.
>
> Build the extensible SDK with `bitbake -c populate_sdk_ext
> core-image-minimal`.
>
> After finishing, install the extensible SDK on a different machine (for
> testing purposes e.g. in a Docker container for example `ubuntu:20.04`)=
.
> It will result in the error mentioned above.
>
> How do I fix that?
>
> Thanks in advance!
>
> Hendrik

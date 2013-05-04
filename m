Return-Path: <raj.khem@gmail.com>
Received: from mail-da0-f41.google.com (mail-da0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BACBDE00304
	for <yocto@yoctoproject.org>; Sat,  4 May 2013 14:56:03 -0700 (PDT)
Received: by mail-da0-f41.google.com with SMTP id y19so1305504dan.14
	for <yocto@yoctoproject.org>; Sat, 04 May 2013 14:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=UfsIl133el+r80uRcXylUCmhC8044+JnJZupTnEbwVA=;
	b=p9UnX8ZaVmnfkcrbY1lee3OzriSZrHDCC53Wf++b9Sv5Qs9aG/5+ztz+mrDuKdegL2
	rxj+DHuqWpo41a7GiwsFKuL7qXQ77W0T+6Sk+93sgzBz6sjKl7gWOUiSie35YJAhQDZQ
	A67uSerwd4U7uingbpvYS8DlMx1m+xIFhRhMnWEMDOCzxVzDAyF/M5nM8aEaWAZpMS8n
	eqxhXbS16aZIC8pgVKuv0O0569AoHvj0BiUETauWt0sPC+C6GEKurrumKan4UgL2sgqi
	JZ1Knm+56vJZblbpGijUwYStwX+oGz5eO5f87Rg9iM23oEIp6YuPg73R3M7rM4/VK0Uu
	4rEQ==
X-Received: by 10.66.2.234 with SMTP id 10mr19963943pax.180.1367704563512;
	Sat, 04 May 2013 14:56:03 -0700 (PDT)
Received: from sa-nc-common-173.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id tx9sm18648303pab.5.2013.05.04.14.56.01
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 04 May 2013 14:56:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1367591703-9582-1-git-send-email-paul@paulbarker.me.uk>
Date: Sat, 4 May 2013 14:56:03 -0700
Message-Id: <FB3FEDFD-CBD2-4C71-A2A3-75A7DA3FC4AA@gmail.com>
References: <1367591703-9582-1-git-send-email-paul@paulbarker.me.uk>
To: Paul Barker <paul@paulbarker.me.uk>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-gpio: renamed from RPi-GPIO
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
X-List-Received-Date: Sat, 04 May 2013 21:56:03 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On May 3, 2013, at 7:35 AM, Paul Barker <paul@paulbarker.me.uk> wrote:

> Package names shouldn't contain capital letters.
>=20
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
> .../python/RPi-GPIO/don-t-install-setuptools.patch  | 16 =
----------------
> recipes-devtools/python/RPi-GPIO_0.2.0.bb           | 21 =
---------------------
> .../python/rpi-gpio/don-t-install-setuptools.patch  | 16 =
++++++++++++++++
> recipes-devtools/python/rpi-gpio_0.2.0.bb           | 21 =
+++++++++++++++++++++
> 4 files changed, 37 insertions(+), 37 deletions(-)
> delete mode 100644 =
recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
> delete mode 100644 recipes-devtools/python/RPi-GPIO_0.2.0.bb
> create mode 100644 =
recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
> create mode 100644 recipes-devtools/python/rpi-gpio_0.2.0.bb


usually its better to use git format-patch -M for renames ..

>=20
> diff --git =
a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch =
b/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
> deleted file mode 100644
> index bc71443..0000000
> --- a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -We already have setuptools python module so we will use that and not =
the
> -one provided in this package.
> -
> -Upstream-Status: Inappropriate [embedded specific]
> -Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> -
> -Index: RPi.GPIO-0.2.0/setup.py
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> ---- RPi.GPIO-0.2.0.orig/setup.py	2012-05-24 13:17:31.000000000 =
+0300
> -+++ RPi.GPIO-0.2.0/setup.py	2012-08-22 00:56:59.049001018 +0300
> -@@ -1,6 +1,4 @@
> - #!/usr/bin/env python
> --import distribute_setup
> --distribute_setup.use_setuptools()
> - from setuptools import setup, find_packages
> - import platform
> diff --git a/recipes-devtools/python/RPi-GPIO_0.2.0.bb =
b/recipes-devtools/python/RPi-GPIO_0.2.0.bb
> deleted file mode 100644
> index 73122cd..0000000
> --- a/recipes-devtools/python/RPi-GPIO_0.2.0.bb
> +++ /dev/null
> @@ -1,21 +0,0 @@
> -DESCRIPTION =3D "A module to control Raspberry Pi GPIO channels"
> -HOMEPAGE =3D "http://code.google.com/p/raspberry-gpio-python/"
> -SECTION =3D "devel/python"
> -LICENSE =3D "MIT"
> -LIC_FILES_CHKSUM =3D =
"file://LICENCE.txt;md5=3Dee5754ae9d5f8061d6d4ccd9c9fe0061"
> -
> -SRCNAME =3D "RPi.GPIO"
> -PR =3D "r0"
> -
> -SRC_URI =3D "\
> -          =
http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz =
\
> -          file://don-t-install-setuptools.patch \
> -          "
> -S =3D "${WORKDIR}/${SRCNAME}-${PV}"
> -
> -inherit setuptools
> -
> -COMPATIBLE_MACHINE =3D "raspberrypi"
> -
> -SRC_URI[md5sum] =3D "0fc4bfa6aabc856b0b75252a40ac75cc"
> -SRC_URI[sha256sum] =3D =
"fcfd97dc9687dde76b13b9d12c122e71b13e2ba09a62913d7b8d9ddbb3e8cabf"
> diff --git =
a/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch =
b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
> new file mode 100644
> index 0000000..bc71443
> --- /dev/null
> +++ b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
> @@ -0,0 +1,16 @@
> +We already have setuptools python module so we will use that and not =
the
> +one provided in this package.
> +
> +Upstream-Status: Inappropriate [embedded specific]
> +Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> +
> +Index: RPi.GPIO-0.2.0/setup.py
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- RPi.GPIO-0.2.0.orig/setup.py	2012-05-24 13:17:31.000000000 =
+0300
> ++++ RPi.GPIO-0.2.0/setup.py	2012-08-22 00:56:59.049001018 +0300
> +@@ -1,6 +1,4 @@
> + #!/usr/bin/env python
> +-import distribute_setup
> +-distribute_setup.use_setuptools()
> + from setuptools import setup, find_packages
> + import platform
> diff --git a/recipes-devtools/python/rpi-gpio_0.2.0.bb =
b/recipes-devtools/python/rpi-gpio_0.2.0.bb
> new file mode 100644
> index 0000000..73122cd
> --- /dev/null
> +++ b/recipes-devtools/python/rpi-gpio_0.2.0.bb
> @@ -0,0 +1,21 @@
> +DESCRIPTION =3D "A module to control Raspberry Pi GPIO channels"
> +HOMEPAGE =3D "http://code.google.com/p/raspberry-gpio-python/"
> +SECTION =3D "devel/python"
> +LICENSE =3D "MIT"
> +LIC_FILES_CHKSUM =3D =
"file://LICENCE.txt;md5=3Dee5754ae9d5f8061d6d4ccd9c9fe0061"
> +
> +SRCNAME =3D "RPi.GPIO"
> +PR =3D "r0"
> +
> +SRC_URI =3D "\
> +          =
http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz =
\
> +          file://don-t-install-setuptools.patch \
> +          "
> +S =3D "${WORKDIR}/${SRCNAME}-${PV}"
> +
> +inherit setuptools
> +
> +COMPATIBLE_MACHINE =3D "raspberrypi"
> +
> +SRC_URI[md5sum] =3D "0fc4bfa6aabc856b0b75252a40ac75cc"
> +SRC_URI[sha256sum] =3D =
"fcfd97dc9687dde76b13b9d12c122e71b13e2ba09a62913d7b8d9ddbb3e8cabf"
> --=20
> 1.8.2.2
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



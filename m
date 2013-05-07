Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AD6CE013D0
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 04:45:08 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id hr11so366570vcb.40
	for <yocto@yoctoproject.org>; Tue, 07 May 2013 04:45:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:x-originating-ip:in-reply-to:references
	:date:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=e/NUg40QEJgtWOih36lEYvyFyXMO709rHDTEQme2isc=;
	b=mkpZTDIpLZBsnpx1KX3OoAJ5bnTOxgM3BYXYsqRR016lbPqhvlswSpTbj0Ct0TsSDw
	UFLfGV3reClM88jYFMaz0FzxLGKDxlO3nkVqMT09h27UrSOqs3IChlmAiu/EL9qJ1zBY
	IrD7hNVhcRPe6OxvBTPYOstm1DvmqkzklwpxhjL7ILAdFJ+r9BmtL/iyJE3iBUKGT1wT
	MniioerL1RFPlPuhSUIzukN8M0MsRxTe9CAggKok8TVJwWqfpqF2lzwmxBYydq/pICuy
	uwYVBji0iMYefvyqEeR4H0FR+nYXGeGG+VqSvikOL/sIZFv29g6waJCBQBQl7jY++rD4
	kIqA==
MIME-Version: 1.0
X-Received: by 10.52.100.193 with SMTP id fa1mr766906vdb.46.1367927107148;
	Tue, 07 May 2013 04:45:07 -0700 (PDT)
Received: by 10.58.49.5 with HTTP; Tue, 7 May 2013 04:45:07 -0700 (PDT)
X-Originating-IP: [5.13.219.23]
Received: by 10.58.49.5 with HTTP; Tue, 7 May 2013 04:45:07 -0700 (PDT)
In-Reply-To: <1367591703-9582-1-git-send-email-paul@paulbarker.me.uk>
References: <1367591703-9582-1-git-send-email-paul@paulbarker.me.uk>
Date: Tue, 7 May 2013 13:45:07 +0200
Message-ID: <CAK18fxE3h2mH6N3y4+jsjCDQci4X1bvtQXd8=PvOGL1XoB+0qw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQmRo1uGPWpKhKe8YXOu9zKkz0/KZxOk2mJTWoJMO/mXZCxYOSfsbuwBD6DoyzOCWvfUW3KJ
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 07 May 2013 11:45:08 -0000
Content-Type: multipart/alternative; boundary=047d7b6733e44cf50204dc1f5978

--047d7b6733e44cf50204dc1f5978
Content-Type: text/plain; charset=ISO-8859-1

Could you please resend it with - M?
On May 3, 2013 5:58 PM, "Paul Barker" <paul@paulbarker.me.uk> wrote:

> Package names shouldn't contain capital letters.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  .../python/RPi-GPIO/don-t-install-setuptools.patch  | 16 ----------------
>  recipes-devtools/python/RPi-GPIO_0.2.0.bb           | 21
> ---------------------
>  .../python/rpi-gpio/don-t-install-setuptools.patch  | 16 ++++++++++++++++
>  recipes-devtools/python/rpi-gpio_0.2.0.bb           | 21
> +++++++++++++++++++++
>  4 files changed, 37 insertions(+), 37 deletions(-)
>  delete mode 100644
> recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
>  delete mode 100644 recipes-devtools/python/RPi-GPIO_0.2.0.bb
>  create mode 100644
> recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
>  create mode 100644 recipes-devtools/python/rpi-gpio_0.2.0.bb
>
> diff --git
> a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
> b/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
> deleted file mode 100644
> index bc71443..0000000
> --- a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -We already have setuptools python module so we will use that and not the
> -one provided in this package.
> -
> -Upstream-Status: Inappropriate [embedded specific]
> -Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> -
> -Index: RPi.GPIO-0.2.0/setup.py
> -===================================================================
> ---- RPi.GPIO-0.2.0.orig/setup.py       2012-05-24 13:17:31.000000000 +0300
> -+++ RPi.GPIO-0.2.0/setup.py    2012-08-22 00:56:59.049001018 +0300
> -@@ -1,6 +1,4 @@
> - #!/usr/bin/env python
> --import distribute_setup
> --distribute_setup.use_setuptools()
> - from setuptools import setup, find_packages
> - import platform
> diff --git a/recipes-devtools/python/RPi-GPIO_0.2.0.bbb/recipes-devtools/python/
> RPi-GPIO_0.2.0.bb
> deleted file mode 100644
> index 73122cd..0000000
> --- a/recipes-devtools/python/RPi-GPIO_0.2.0.bb
> +++ /dev/null
> @@ -1,21 +0,0 @@
> -DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
> -HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
> -SECTION = "devel/python"
> -LICENSE = "MIT"
> -LIC_FILES_CHKSUM =
> "file://LICENCE.txt;md5=ee5754ae9d5f8061d6d4ccd9c9fe0061"
> -
> -SRCNAME = "RPi.GPIO"
> -PR = "r0"
> -
> -SRC_URI = "\
> -
> http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz\
> -          file://don-t-install-setuptools.patch \
> -          "
> -S = "${WORKDIR}/${SRCNAME}-${PV}"
> -
> -inherit setuptools
> -
> -COMPATIBLE_MACHINE = "raspberrypi"
> -
> -SRC_URI[md5sum] = "0fc4bfa6aabc856b0b75252a40ac75cc"
> -SRC_URI[sha256sum] =
> "fcfd97dc9687dde76b13b9d12c122e71b13e2ba09a62913d7b8d9ddbb3e8cabf"
> diff --git
> a/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
> b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
> new file mode 100644
> index 0000000..bc71443
> --- /dev/null
> +++ b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
> @@ -0,0 +1,16 @@
> +We already have setuptools python module so we will use that and not the
> +one provided in this package.
> +
> +Upstream-Status: Inappropriate [embedded specific]
> +Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> +
> +Index: RPi.GPIO-0.2.0/setup.py
> +===================================================================
> +--- RPi.GPIO-0.2.0.orig/setup.py       2012-05-24 13:17:31.000000000 +0300
> ++++ RPi.GPIO-0.2.0/setup.py    2012-08-22 00:56:59.049001018 +0300
> +@@ -1,6 +1,4 @@
> + #!/usr/bin/env python
> +-import distribute_setup
> +-distribute_setup.use_setuptools()
> + from setuptools import setup, find_packages
> + import platform
> diff --git a/recipes-devtools/python/rpi-gpio_0.2.0.bbb/recipes-devtools/python/
> rpi-gpio_0.2.0.bb
> new file mode 100644
> index 0000000..73122cd
> --- /dev/null
> +++ b/recipes-devtools/python/rpi-gpio_0.2.0.bb
> @@ -0,0 +1,21 @@
> +DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
> +HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
> +SECTION = "devel/python"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM =
> "file://LICENCE.txt;md5=ee5754ae9d5f8061d6d4ccd9c9fe0061"
> +
> +SRCNAME = "RPi.GPIO"
> +PR = "r0"
> +
> +SRC_URI = "\
> +
> http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz\
> +          file://don-t-install-setuptools.patch \
> +          "
> +S = "${WORKDIR}/${SRCNAME}-${PV}"
> +
> +inherit setuptools
> +
> +COMPATIBLE_MACHINE = "raspberrypi"
> +
> +SRC_URI[md5sum] = "0fc4bfa6aabc856b0b75252a40ac75cc"
> +SRC_URI[sha256sum] =
> "fcfd97dc9687dde76b13b9d12c122e71b13e2ba09a62913d7b8d9ddbb3e8cabf"
> --
> 1.8.2.2
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b6733e44cf50204dc1f5978
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Could you please resend it with - M? </p>
<div class=3D"gmail_quote">On May 3, 2013 5:58 PM, &quot;Paul Barker&quot; =
&lt;<a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; =
wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Package names shouldn&#39;t contain capital letters.<br>
<br>
Signed-off-by: Paul Barker &lt;<a href=3D"mailto:paul@paulbarker.me.uk">pau=
l@paulbarker.me.uk</a>&gt;<br>
---<br>
=A0.../python/RPi-GPIO/don-t-install-setuptools.patch =A0| 16 -------------=
---<br>
=A0recipes-devtools/python/<a href=3D"http://RPi-GPIO_0.2.0.bb" target=3D"_=
blank">RPi-GPIO_0.2.0.bb</a> =A0 =A0 =A0 =A0 =A0 | 21 ---------------------=
<br>
=A0.../python/rpi-gpio/don-t-install-setuptools.patch =A0| 16 +++++++++++++=
+++<br>
=A0recipes-devtools/python/<a href=3D"http://rpi-gpio_0.2.0.bb" target=3D"_=
blank">rpi-gpio_0.2.0.bb</a> =A0 =A0 =A0 =A0 =A0 | 21 +++++++++++++++++++++=
<br>
=A04 files changed, 37 insertions(+), 37 deletions(-)<br>
=A0delete mode 100644 recipes-devtools/python/RPi-GPIO/don-t-install-setupt=
ools.patch<br>
=A0delete mode 100644 recipes-devtools/python/<a href=3D"http://RPi-GPIO_0.=
2.0.bb" target=3D"_blank">RPi-GPIO_0.2.0.bb</a><br>
=A0create mode 100644 recipes-devtools/python/rpi-gpio/don-t-install-setupt=
ools.patch<br>
=A0create mode 100644 recipes-devtools/python/<a href=3D"http://rpi-gpio_0.=
2.0.bb" target=3D"_blank">rpi-gpio_0.2.0.bb</a><br>
<br>
diff --git a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patc=
h b/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch<br>
deleted file mode 100644<br>
index bc71443..0000000<br>
--- a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch<br>
+++ /dev/null<br>
@@ -1,16 +0,0 @@<br>
-We already have setuptools python module so we will use that and not the<b=
r>
-one provided in this package.<br>
-<br>
-Upstream-Status: Inappropriate [embedded specific]<br>
-Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">and=
rei@gherzan.ro</a>&gt;<br>
-<br>
-Index: RPi.GPIO-0.2.0/setup.py<br>
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
---- RPi.GPIO-0.2.0.orig/setup.py =A0 =A0 =A0 2012-05-24 13:17:31.000000000=
 +0300<br>
-+++ RPi.GPIO-0.2.0/setup.py =A0 =A02012-08-22 00:56:59.049001018 +0300<br>
-@@ -1,6 +1,4 @@<br>
- #!/usr/bin/env python<br>
--import distribute_setup<br>
--distribute_setup.use_setuptools()<br>
- from setuptools import setup, find_packages<br>
- import platform<br>
diff --git a/recipes-devtools/python/<a href=3D"http://RPi-GPIO_0.2.0.bb" t=
arget=3D"_blank">RPi-GPIO_0.2.0.bb</a> b/recipes-devtools/python/<a href=3D=
"http://RPi-GPIO_0.2.0.bb" target=3D"_blank">RPi-GPIO_0.2.0.bb</a><br>
deleted file mode 100644<br>
index 73122cd..0000000<br>
--- a/recipes-devtools/python/<a href=3D"http://RPi-GPIO_0.2.0.bb" target=
=3D"_blank">RPi-GPIO_0.2.0.bb</a><br>
+++ /dev/null<br>
@@ -1,21 +0,0 @@<br>
-DESCRIPTION =3D &quot;A module to control Raspberry Pi GPIO channels&quot;=
<br>
-HOMEPAGE =3D &quot;<a href=3D"http://code.google.com/p/raspberry-gpio-pyth=
on/" target=3D"_blank">http://code.google.com/p/raspberry-gpio-python/</a>&=
quot;<br>
-SECTION =3D &quot;devel/python&quot;<br>
-LICENSE =3D &quot;MIT&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;file://LICENCE.txt;md5=3Dee5754ae9d5f8061d6d4cc=
d9c9fe0061&quot;<br>
-<br>
-SRCNAME =3D &quot;RPi.GPIO&quot;<br>
-PR =3D &quot;r0&quot;<br>
-<br>
-SRC_URI =3D &quot;\<br>
- =A0 =A0 =A0 =A0 =A0<a href=3D"http://pypi.python.org/packages/source/R/RP=
i.GPIO/${SRCNAME}-${PV}.tar.gz" target=3D"_blank">http://pypi.python.org/pa=
ckages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz</a> \<br>
- =A0 =A0 =A0 =A0 =A0file://don-t-install-setuptools.patch \<br>
- =A0 =A0 =A0 =A0 =A0&quot;<br>
-S =3D &quot;${WORKDIR}/${SRCNAME}-${PV}&quot;<br>
-<br>
-inherit setuptools<br>
-<br>
-COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
-<br>
-SRC_URI[md5sum] =3D &quot;0fc4bfa6aabc856b0b75252a40ac75cc&quot;<br>
-SRC_URI[sha256sum] =3D &quot;fcfd97dc9687dde76b13b9d12c122e71b13e2ba09a629=
13d7b8d9ddbb3e8cabf&quot;<br>
diff --git a/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patc=
h b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch<br>
new file mode 100644<br>
index 0000000..bc71443<br>
--- /dev/null<br>
+++ b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch<br>
@@ -0,0 +1,16 @@<br>
+We already have setuptools python module so we will use that and not the<b=
r>
+one provided in this package.<br>
+<br>
+Upstream-Status: Inappropriate [embedded specific]<br>
+Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">and=
rei@gherzan.ro</a>&gt;<br>
+<br>
+Index: RPi.GPIO-0.2.0/setup.py<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+--- RPi.GPIO-0.2.0.orig/setup.py =A0 =A0 =A0 2012-05-24 13:17:31.000000000=
 +0300<br>
++++ RPi.GPIO-0.2.0/setup.py =A0 =A02012-08-22 00:56:59.049001018 +0300<br>
+@@ -1,6 +1,4 @@<br>
+ #!/usr/bin/env python<br>
+-import distribute_setup<br>
+-distribute_setup.use_setuptools()<br>
+ from setuptools import setup, find_packages<br>
+ import platform<br>
diff --git a/recipes-devtools/python/<a href=3D"http://rpi-gpio_0.2.0.bb" t=
arget=3D"_blank">rpi-gpio_0.2.0.bb</a> b/recipes-devtools/python/<a href=3D=
"http://rpi-gpio_0.2.0.bb" target=3D"_blank">rpi-gpio_0.2.0.bb</a><br>
new file mode 100644<br>
index 0000000..73122cd<br>
--- /dev/null<br>
+++ b/recipes-devtools/python/<a href=3D"http://rpi-gpio_0.2.0.bb" target=
=3D"_blank">rpi-gpio_0.2.0.bb</a><br>
@@ -0,0 +1,21 @@<br>
+DESCRIPTION =3D &quot;A module to control Raspberry Pi GPIO channels&quot;=
<br>
+HOMEPAGE =3D &quot;<a href=3D"http://code.google.com/p/raspberry-gpio-pyth=
on/" target=3D"_blank">http://code.google.com/p/raspberry-gpio-python/</a>&=
quot;<br>
+SECTION =3D &quot;devel/python&quot;<br>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://LICENCE.txt;md5=3Dee5754ae9d5f8061d6d4cc=
d9c9fe0061&quot;<br>
+<br>
+SRCNAME =3D &quot;RPi.GPIO&quot;<br>
+PR =3D &quot;r0&quot;<br>
+<br>
+SRC_URI =3D &quot;\<br>
+ =A0 =A0 =A0 =A0 =A0<a href=3D"http://pypi.python.org/packages/source/R/RP=
i.GPIO/${SRCNAME}-${PV}.tar.gz" target=3D"_blank">http://pypi.python.org/pa=
ckages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz</a> \<br>
+ =A0 =A0 =A0 =A0 =A0file://don-t-install-setuptools.patch \<br>
+ =A0 =A0 =A0 =A0 =A0&quot;<br>
+S =3D &quot;${WORKDIR}/${SRCNAME}-${PV}&quot;<br>
+<br>
+inherit setuptools<br>
+<br>
+COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
+<br>
+SRC_URI[md5sum] =3D &quot;0fc4bfa6aabc856b0b75252a40ac75cc&quot;<br>
+SRC_URI[sha256sum] =3D &quot;fcfd97dc9687dde76b13b9d12c122e71b13e2ba09a629=
13d7b8d9ddbb3e8cabf&quot;<br>
--<br>
1.8.2.2<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--047d7b6733e44cf50204dc1f5978--

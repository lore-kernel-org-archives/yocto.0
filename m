Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43FACE00945; Mon,  9 Feb 2015 13:58:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-02.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C968FE00596
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 13:58:22 -0800 (PST)
X-Halon-ID: c0ec10ce-b0a6-11e4-891e-005056917f90
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Mon,  9 Feb 2015 22:58:17 +0100 (CET)
MIME-Version: 1.0
Date: Mon, 09 Feb 2015 22:58:17 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Andrei <andrei@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1423396716-22626-1-git-send-email-andrei@gherzan.ro>
References: <1423396716-22626-1-git-send-email-andrei@gherzan.ro>
Message-ID: <ff2e238099bb8166864296f3a79eb5c0@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi: Refactor kernel recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Feb 2015 21:58:32 -0000
Content-Type: multipart/alternative;
	boundary="=_509dd5e5e4238989d54cc567694fff09"

--=_509dd5e5e4238989d54cc567694fff09
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

Petter Mabäcker

Technux
<petter@technux.se>
www.technux.se

2015-02-08 12:58 skrev Andrei
Gherzan: 

> We use this to simplify the update process. Updating a
kernel version will not
> require renaming the recipe but only tweaking
LINUX_VERSION.
> 
> Update kernel version:
> - bump SRCREV
> - bump
LINUX_VERSION if needed
> 
> [Support #26]
> 
> Change-Id:
I7565ddd1f03cc34c34aa5da92664a0057b415c9a
> Signed-off-by: Andrei
Gherzan <andrei@gherzan.ro>
> ---
>
recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
>
recipes-kernel/linux/linux-raspberrypi_3.10.38.bb | 6 ------
>
recipes-kernel/linux/linux-raspberrypi_3.10.bb | 8 ++++++++
>
recipes-kernel/linux/linux-raspberrypi_3.12.36.bb | 6 ------
>
recipes-kernel/linux/linux-raspberrypi_3.12.bb | 8 ++++++++
>
recipes-kernel/linux/linux-raspberrypi_3.16.5.bb | 6 ------
>
recipes-kernel/linux/linux-raspberrypi_3.16.bb | 8 ++++++++
>
recipes-kernel/linux/linux-raspberrypi_3.18.5.bb | 5 -----
>
recipes-kernel/linux/linux-raspberrypi_3.18.bb | 8 ++++++++
>
recipes-kernel/linux/linux-raspberrypi_3.6.11.bb | 6 ------
>
recipes-kernel/linux/linux-raspberrypi_3.6.bb | 8 ++++++++
>
recipes-kernel/linux/linux-raspberrypi_3.8.13.bb | 6 ------
>
recipes-kernel/linux/linux-raspberrypi_3.8.bb | 8 ++++++++
> 13 files
changed, 49 insertions(+), 36 deletions(-)
> delete mode 100644
recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
> create mode 100644
recipes-kernel/linux/linux-raspberrypi_3.10.bb
> delete mode 100644
recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
> create mode 100644
recipes-kernel/linux/linux-raspberrypi_3.12.bb
> delete mode 100644
recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
> create mode 100644
recipes-kernel/linux/linux-raspberrypi_3.16.bb
> delete mode 100644
recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
> create mode 100644
recipes-kernel/linux/linux-raspberrypi_3.18.bb
> delete mode 100644
recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> create mode 100644
recipes-kernel/linux/linux-raspberrypi_3.6.bb
> delete mode 100644
recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> create mode 100644
recipes-kernel/linux/linux-raspberrypi_3.8.bb
> 
> diff --git
a/recipes-kernel/linux/linux-raspberrypi.inc
b/recipes-kernel/linux/linux-raspberrypi.inc
> index ff0c5ce..c00128d
100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++
b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -11,7 +11,7 @@ SRC_URI
+= " 
> 
> COMPATIBLE_MACHINE = "raspberrypi"
> 
> -PV_append =
"+git${SRCREV}"
> +PV = "${LINUX_VERSION}+git${SRCREV}"
> 
> # NOTE: For
now we pull in the default config from the RPi kernel GIT tree.
>
KERNEL_DEFCONFIG = "bcmrpi_defconfig"
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
b/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
> deleted file mode
100644
> index a0c5012..0000000
> ---
a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
> +++ /dev/null
> @@
-1,6 +0,0 @@
> -SRCREV = "1b49b450222df26e4abf7abb6d9302f72b2ed386"
>
-SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y

> - file://sl030raspberrypii2ckernel.patch [1] 
> - "
> -
> -require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.10.bb
b/recipes-kernel/linux/linux-raspberrypi_3.10.bb
> new file mode
100644
> index 0000000..e5d5bf2
> --- /dev/null
> +++
b/recipes-kernel/linux/linux-raspberrypi_3.10.bb
> @@ -0,0 +1,8 @@
>
+LINUX_VERSION ?= "3.10.38"
> +
> +SRCREV =
"1b49b450222df26e4abf7abb6d9302f72b2ed386"
> +SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y

> + file://sl030raspberrypii2ckernel.patch [1] 
> + "
> +
> +require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
b/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
> deleted file mode
100644
> index e9e9ad7..0000000
> ---
a/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
> +++ /dev/null
> @@
-1,6 +0,0 @@
> -SRCREV = "90fa5df724d147564149c7b79cb1ffc571a345ec"
>
-SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y

> - file://sl030raspberrypii2ckernel.patch [1] 
> - "
> -
> -require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.12.bb
b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
> new file mode
100644
> index 0000000..08be83e
> --- /dev/null
> +++
b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
> @@ -0,0 +1,8 @@
>
+LINUX_VERSION ?= "3.12.26"
> 
> A small typo here. It should be
"3.12.36".
> 
> BR,
> 
> Petter
> 
> +
> +SRCREV =
"90fa5df724d147564149c7b79cb1ffc571a345ec"
> +SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y

> + file://sl030raspberrypii2ckernel.patch [1] 
> + "
> +
> +require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
b/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
> deleted file mode
100644
> index 97947c2..0000000
> ---
a/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
> +++ /dev/null
> @@
-1,6 +0,0 @@
> -SRCREV = "377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
>
-SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.16.y

> - file://sl030raspberrypii2ckernel.patch [1] 
> - "
> -
> -require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.16.bb
b/recipes-kernel/linux/linux-raspberrypi_3.16.bb
> new file mode
100644
> index 0000000..ccc414f
> --- /dev/null
> +++
b/recipes-kernel/linux/linux-raspberrypi_3.16.bb
> @@ -0,0 +1,8 @@
>
+LINUX_VERSION ?= "3.16.5"
> +
> +SRCREV =
"377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
> +SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.16.y

> + file://sl030raspberrypii2ckernel.patch [1] 
> + "
> +
> +require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
b/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
> deleted file mode
100644
> index 663522e..0000000
> ---
a/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
> +++ /dev/null
> @@
-1,5 +0,0 @@
> -SRCREV = "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
>
-SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y

> - file://sl030raspberrypii2ckernel.patch [1] 
> - "
> -require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> new file mode
100644
> index 0000000..921e702
> --- /dev/null
> +++
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> @@ -0,0 +1,8 @@
>
+LINUX_VERSION ?= "3.18.5"
> +
> +SRCREV =
"a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
> +SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y

> + file://sl030raspberrypii2ckernel.patch [1] 
> + "
> +
> +require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> deleted file mode
100644
> index a154bcf..0000000
> ---
a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> +++ /dev/null
> @@
-1,6 +0,0 @@
> -SRCREV = "2a8d45ec0883e3cbdce920855b3461ac77308a5f"
>
-SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y 
>
- file://sl030raspberrypii2ckernel.patch [1] 
> - "
> -
> -require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.6.bb
b/recipes-kernel/linux/linux-raspberrypi_3.6.bb
> new file mode 100644
>
index 0000000..fc9ac89
> --- /dev/null
> +++
b/recipes-kernel/linux/linux-raspberrypi_3.6.bb
> @@ -0,0 +1,8 @@
>
+LINUX_VERSION ?= "3.6.11"
> +
> +SRCREV =
"2a8d45ec0883e3cbdce920855b3461ac77308a5f"
> +SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y 
>
+ file://sl030raspberrypii2ckernel.patch [1] 
> + "
> +
> +require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> deleted file mode
100644
> index dc8cf0a..0000000
> ---
a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> +++ /dev/null
> @@
-1,6 +0,0 @@
> -SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
>
-SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y 
>
- file://sl030raspberrypii2ckernel.patch [1] 
> - "
> -
> -require
linux-raspberrypi.inc
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.8.bb
b/recipes-kernel/linux/linux-raspberrypi_3.8.bb
> new file mode 100644
>
index 0000000..ae0dc99
> --- /dev/null
> +++
b/recipes-kernel/linux/linux-raspberrypi_3.8.bb
> @@ -0,0 +1,8 @@
>
+LINUX_VERSION ?= "3.8.13"
> +
> +SRCREV =
"d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
> +SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y 
>
+ file://sl030raspberrypii2ckernel.patch [1] 
> + "
> +
> +require
linux-raspberrypi.inc
> -- 
> 2.1.0
 

Links:
------
[1]
file://sl030raspberrypii2ckernel.patch

--=_509dd5e5e4238989d54cc567694fff09
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
<p>2015-02-08 12:58 skrev Andrei Gherzan:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>We use this to simplify the update process. Updating a kernel version =
will not
require renaming the recipe but only tweaking LINUX_VERSION.

Update kernel version:
        - bump SRCREV
        - bump LINUX_VERSION if needed

[Support #26]

Change-Id: I7565ddd1f03cc34c34aa5da92664a0057b415c9a
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;
---
 recipes-kernel/linux/linux-raspberrypi.inc        | 2 +-
 recipes-kernel/linux/linux-raspberrypi_3.10.38.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.10.bb    | 8 ++++++++
 recipes-kernel/linux/linux-raspberrypi_3.12.36.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.12.bb    | 8 ++++++++
 recipes-kernel/linux/linux-raspberrypi_3.16.5.bb  | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.16.bb    | 8 ++++++++
 recipes-kernel/linux/linux-raspberrypi_3.18.5.bb  | 5 -----
 recipes-kernel/linux/linux-raspberrypi_3.18.bb    | 8 ++++++++
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb  | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.6.bb     | 8 ++++++++
 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb  | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.8.bb     | 8 ++++++++
 13 files changed, 49 insertions(+), 36 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/li=
nux/linux-raspberrypi.inc
index ff0c5ce..c00128d 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -11,7 +11,7 @@ SRC_URI +=3D " \
=20
 COMPATIBLE_MACHINE =3D "raspberrypi"
=20
-PV_append =3D "+git${SRCREV}"
+PV =3D "${LINUX_VERSION}+git${SRCREV}"
=20
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree=
=2E
 KERNEL_DEFCONFIG =3D "bcmrpi_defconfig"
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb b/recipes-ke=
rnel/linux/linux-raspberrypi_3.10.38.bb
deleted file mode 100644
index a0c5012..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV =3D "1b49b450222df26e4abf7abb6d9302f72b2ed386"
-SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.10.y \
-           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.bb b/recipes-kerne=
l/linux/linux-raspberrypi_3.10.bb
new file mode 100644
index 0000000..e5d5bf2
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.10.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?=3D "3.10.38"
+
+SRCREV =3D "1b49b450222df26e4abf7abb6d9302f72b2ed386"
+SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.10.y \
+           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb b/recipes-ke=
rnel/linux/linux-raspberrypi_3.12.36.bb
deleted file mode 100644
index e9e9ad7..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV =3D "90fa5df724d147564149c7b79cb1ffc571a345ec"
-SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.12.y \
-           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.bb b/recipes-kerne=
l/linux/linux-raspberrypi_3.12.bb
new file mode 100644
index 0000000..08be83e
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?=3D "3.12.26"<br /><br />A small typo here. It should be "3=
=2E12.36".<br /><br />BR,</pre>
<pre>Petter<br />
+
+SRCREV =3D "90fa5df724d147564149c7b79cb1ffc571a345ec"
+SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.12.y \
+           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb b/recipes-ker=
nel/linux/linux-raspberrypi_3.16.5.bb
deleted file mode 100644
index 97947c2..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV =3D "377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
-SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.16.y \
-           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.16.bb b/recipes-kerne=
l/linux/linux-raspberrypi_3.16.bb
new file mode 100644
index 0000000..ccc414f
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.16.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?=3D "3.16.5"
+
+SRCREV =3D "377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
+SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.16.y \
+           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb b/recipes-ker=
nel/linux/linux-raspberrypi_3.18.5.bb
deleted file mode 100644
index 663522e..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
+++ /dev/null
@@ -1,5 +0,0 @@
-SRCREV =3D "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
-SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.18.y \
-           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
-          "
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kerne=
l/linux/linux-raspberrypi_3.18.bb
new file mode 100644
index 0000000..921e702
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?=3D "3.18.5"
+
+SRCREV =3D "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
+SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.18.y \
+           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-ker=
nel/linux/linux-raspberrypi_3.6.11.bb
deleted file mode 100644
index a154bcf..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV =3D "2a8d45ec0883e3cbdce920855b3461ac77308a5f"
-SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.6.y \
-           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.bb b/recipes-kernel=
/linux/linux-raspberrypi_3.6.bb
new file mode 100644
index 0000000..fc9ac89
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.6.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?=3D "3.6.11"
+
+SRCREV =3D "2a8d45ec0883e3cbdce920855b3461ac77308a5f"
+SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.6.y \
+           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb b/recipes-ker=
nel/linux/linux-raspberrypi_3.8.13.bb
deleted file mode 100644
index dc8cf0a..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV =3D "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
-SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.8.y \
-           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.bb b/recipes-kernel=
/linux/linux-raspberrypi_3.8.bb
new file mode 100644
index 0000000..ae0dc99
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.8.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?=3D "3.8.13"
+
+SRCREV =3D "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
+SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.8.y \
+           <a href=3D"file://sl030raspberrypii2ckernel.patch">file://sl030=
raspberrypii2ckernel.patch</a> \
+          "
+
+require linux-raspberrypi.inc
<span class=3D"sig">--=20
2.1.0
</span></pre>
</blockquote>
</body></html>

--=_509dd5e5e4238989d54cc567694fff09--

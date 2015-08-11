Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE664E00947; Tue, 11 Aug 2015 11:55:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-05.atm.binero.net (vsp-authed02.binero.net
	[195.74.38.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1709EE00758
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 11:54:53 -0700 (PDT)
X-Halon-ID: 7d48bcca-405a-11e5-8db1-005056916f53
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 11 Aug 2015 20:55:09 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 11 Aug 2015 20:54:51 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>, Alex J Lennon <ajlennon@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
Message-ID: <bffae54a0f874d525599dfe7ffdb64b0@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: support configuration fragments
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
X-List-Received-Date: Tue, 11 Aug 2015 18:55:00 -0000
Content-Type: multipart/alternative;
	boundary="=_1e263bd7a76b468b7393893d140ee65a"

--=_1e263bd7a76b468b7393893d140ee65a
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-08-11 19:04 skrev Alex J Lennon: 

> - remove placeholder
defconfig and custom copying logic
> - use KBUILD_DEFCONFIG for default
in-tree configurations instead
> - do not replace all Yocto configured
settings in do_configure_prepen
> 
> see:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7474 [1]
> 
>
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---
>
recipes-kernel/linux/linux-raspberrypi.inc | 15 ++++-----------
>
recipes-kernel/linux/linux-raspberrypi/defconfig | 1 -
>
recipes-kernel/linux/linux.inc | 6 +++---
> 3 files changed, 7
insertions(+), 15 deletions(-)
> delete mode 100644
recipes-kernel/linux/linux-raspberrypi/defconfig
> 
> diff --git
a/recipes-kernel/linux/linux-raspberrypi.inc
b/recipes-kernel/linux/linux-raspberrypi.inc
> index 7e36408..e38d905
100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++
b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -6,17 +6,14 @@ SECTION
= "kernel"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
"file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> 
> -SRC_URI += "

> - file://defconfig 
> - "
> -
> COMPATIBLE_MACHINE = "raspberrypi"
>

> PV = "${LINUX_VERSION}+git${SRCREV}"
> 
> -# NOTE: For now we pull in
the default config from the RPi kernel GIT tree.
>
-KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
>
-KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
> +KMACHINE ?=
"${MACHINE}"
> +KCONFIG_MODE = "--alldefconfig"
>
+KBUILD_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
>
+KBUILD_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
> 
> # CMDLINE for
raspberrypi
> CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200
kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
> @@
-38,10 +35,6 @@ python __anonymous () {
> d.setVar("DEPENDS", depends)
>
}
> 
> -do_kernel_configme_prepend() {
> - install -m 0644
${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig ||
die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG}
available."
> -}
> -
> do_install_prepend() {
> install -d
${D}/lib/firmware
> }
> diff --git
a/recipes-kernel/linux/linux-raspberrypi/defconfig
b/recipes-kernel/linux/linux-raspberrypi/defconfig
> deleted file mode
100644
> index ecbf32c..0000000
> ---
a/recipes-kernel/linux/linux-raspberrypi/defconfig
> +++ /dev/null
> @@
-1 +0,0 @@
> -# Dummy file to get through do_kernel_configme.
> diff
--git a/recipes-kernel/linux/linux.inc
b/recipes-kernel/linux/linux.inc
> index fae78b7..103512b 100644
> ---
a/recipes-kernel/linux/linux.inc
> +++
b/recipes-kernel/linux/linux.inc
> @@ -33,8 +33,7 @@
kernel_configure_variable() {
> }
> 
> do_configure_prepend() {
> - #
Clean .config
> - echo "" > ${B}/.config
> + mv -f ${B}/.config
${B}/.config.patched
> CONF_SED_SCRIPT=""
> 
> # oabi / eabi support
>
@@ -109,7 +108,8 @@ do_configure_prepend() {
> 
> # Keep this the last
line
> # Remove all modified configs and add the rest to .config
> - sed
-e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
> +
sed -e "${CONF_SED_SCRIPT}" < '${B}/.config.patched' >> '${B}/.config'
>
+ rm -f ${B}/.config.patched
> 
> yes '' | oe_runmake oldconfig
> }
> --

> 1.9.1

Nice, some small comments only. Please write a short summary
of the feature (kernel-yocto: allow in-tree defconfig) but keep the
bugzilla as a reference for further info. Always good to have some
background found directly in the commit msg itself. Have you tested it
using both poky:master and poky:fido? 

BR, Petter 

Petter
Mabäcker

Technux <petter@technux.se>
www.technux.se



Links:
------
[1]
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7474

--=_1e263bd7a76b468b7393893d140ee65a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-08-11 19:04 skrev Alex J Lennon:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>- remove placeholder defconfig and custom copying logic
- use KBUILD_DEFCONFIG for default in-tree configurations instead
- do not replace all Yocto configured settings in do_configure_prepen

see: <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7474">h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7474</a>

Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices=
=2Eco.uk">ajlennon@dynamicdevices.co.uk</a>&gt;
---
 recipes-kernel/linux/linux-raspberrypi.inc       | 15 ++++-----------
 recipes-kernel/linux/linux-raspberrypi/defconfig |  1 -
 recipes-kernel/linux/linux.inc                   |  6 +++---
 3 files changed, 7 insertions(+), 15 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi/defconfig

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/li=
nux/linux-raspberrypi.inc
index 7e36408..e38d905 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -6,17 +6,14 @@ SECTION =3D "kernel"
 LICENSE =3D "GPLv2"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd=
7"
=20
-SRC_URI +=3D " \
-        file://defconfig \
-        "
-
 COMPATIBLE_MACHINE =3D "raspberrypi"
=20
 PV =3D "${LINUX_VERSION}+git${SRCREV}"
=20
-# NOTE: For now we pull in the default config from the RPi kernel GIT tree=
=2E
-KERNEL_DEFCONFIG_raspberrypi ?=3D "bcmrpi_defconfig"
-KERNEL_DEFCONFIG_raspberrypi2 ?=3D "bcm2709_defconfig"
+KMACHINE ?=3D "${MACHINE}"
+KCONFIG_MODE =3D "--alldefconfig"
+KBUILD_DEFCONFIG_raspberrypi ?=3D "bcmrpi_defconfig"
+KBUILD_DEFCONFIG_raspberrypi2 ?=3D "bcm2709_defconfig"
=20
 # CMDLINE for raspberrypi
 CMDLINE =3D "dwc_otg.lpm_enable=3D0 console=3DttyAMA0,115200 kgdboc=3DttyA=
MA0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait"
@@ -38,10 +35,6 @@ python __anonymous () {
             d.setVar("DEPENDS", depends)
 }
=20
-do_kernel_configme_prepend() {
-    install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDI=
R}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEF=
CONFIG} available."
-}
-
 do_install_prepend() {
     install -d ${D}/lib/firmware
 }
diff --git a/recipes-kernel/linux/linux-raspberrypi/defconfig b/recipes-ker=
nel/linux/linux-raspberrypi/defconfig
deleted file mode 100644
index ecbf32c..0000000
--- a/recipes-kernel/linux/linux-raspberrypi/defconfig
+++ /dev/null
@@ -1 +0,0 @@
-# Dummy file to get through do_kernel_configme.
diff --git a/recipes-kernel/linux/linux.inc b/recipes-kernel/linux/linux.in=
c
index fae78b7..103512b 100644
--- a/recipes-kernel/linux/linux.inc
+++ b/recipes-kernel/linux/linux.inc
@@ -33,8 +33,7 @@ kernel_configure_variable() {
 }
=20
 do_configure_prepend() {
-    # Clean .config
-    echo "" &gt; ${B}/.config
+    mv -f ${B}/.config ${B}/.config.patched
     CONF_SED_SCRIPT=3D""
=20
     # oabi / eabi support
@@ -109,7 +108,8 @@ do_configure_prepend() {
=20
     # Keep this the last line
     # Remove all modified configs and add the rest to .config
-    sed -e "${CONF_SED_SCRIPT}" &lt; '${WORKDIR}/defconfig' &gt;&gt; '${B}=
/.config'
+    sed -e "${CONF_SED_SCRIPT}" &lt; '${B}/.config.patched' &gt;&gt; '${B}=
/.config'
+    rm -f ${B}/.config.patched
=20
     yes '' | oe_runmake oldconfig
 }
<span class=3D"sig">--=20
1.9.1
</span></pre>
</blockquote>
<p>Nice, some small comments only. Please write a short summary of the feat=
ure (kernel-yocto: allow in-tree defconfig) but keep the bugzilla as a refe=
rence for further info. Always good to have some background found directly =
in the commit msg itself. Have you tested it using both poky:master and pok=
y:fido?</p>
<p>BR, Petter</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_1e263bd7a76b468b7393893d140ee65a--

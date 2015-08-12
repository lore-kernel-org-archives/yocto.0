Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 075C5E00A7D; Wed, 12 Aug 2015 01:08:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-03.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6935FE00A26
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 01:08:29 -0700 (PDT)
X-Halon-ID: 494a37d4-40c9-11e5-8f76-0050569116f7
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Wed, 12 Aug 2015 10:08:16 +0200 (CEST)
MIME-Version: 1.0
Date: Wed, 12 Aug 2015 10:08:24 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Alex J Lennon <ajlennon@gmail.com>, Andrei <andrei@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <55CA4B05.5090803@gmail.com>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<bffae54a0f874d525599dfe7ffdb64b0@technux.se>
	<55CA4B05.5090803@gmail.com>
Message-ID: <b6fd404fd9e7d7966a1cdf37b4523d98@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 12 Aug 2015 08:08:34 -0000
Content-Type: multipart/alternative;
	boundary="=_335ed8e527e00e09881120801ec1a9b1"

--=_335ed8e527e00e09881120801ec1a9b1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-08-11 21:20 skrev Alex J Lennon: 

> On 11/08/2015 19:54,
Petter Mabäcker wrote:
> 
>> 2015-08-11 19:04 skrev Alex J Lennon: 
>>

>>> - remove placeholder defconfig and custom copying logic - use
KBUILD_DEFCONFIG for default in-tree configurations instead - do not
replace all Yocto configured settings in do_configure_prepen see:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7474 [1]
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk
<mailto:ajlennon@dynamicdevices.co.uk>> ---
recipes-kernel/linux/linux-raspberrypi.inc | 15 ++++-----------
recipes-kernel/linux/linux-raspberrypi/defconfig | 1 -
recipes-kernel/linux/linux.inc | 6 +++--- 3 files changed, 7
insertions(+), 15 deletions(-) delete mode 100644
recipes-kernel/linux/linux-raspberrypi/defconfig diff --git
a/recipes-kernel/linux/linux-raspberrypi.inc
b/recipes-kernel/linux/linux-raspberrypi.inc index 7e36408..e38d905
100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
b/recipes-kernel/linux/linux-raspberrypi.inc @@ -6,17 +6,14 @@ SECTION =
"kernel" LICENSE = "GPLv2" LIC_FILES_CHKSUM =
"file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7" -SRC_URI += " -
file://defconfig - " - COMPATIBLE_MACHINE = "raspberrypi" PV =
"${LINUX_VERSION}+git${SRCREV}" -# NOTE: For now we pull in the default
config from the RPi kernel GIT tree. -KERNEL_DEFCONFIG_raspberrypi ?=
"bcmrpi_defconfig" -KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
+KMACHINE ?= "${MACHINE}" +KCONFIG_MODE = "--alldefconfig"
+KBUILD_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
+KBUILD_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig" # CMDLINE for
raspberrypi CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200
kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait" @@
-38,10 +35,6 @@ python __anonymous () { d.setVar("DEPENDS", depends) }
-do_kernel_configme_prepend() { - install -m 0644
${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig ||
die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG}
available." -} - do_install_prepend() { install -d ${D}/lib/firmware }
diff --git a/recipes-kernel/linux/linux-raspberrypi/defconfig
b/recipes-kernel/linux/linux-raspberrypi/defconfig deleted file mode
100644 index ecbf32c..0000000 ---
a/recipes-kernel/linux/linux-raspberrypi/defconfig +++ /dev/null @@ -1
+0,0 @@ -# Dummy file to get through do_kernel_configme. diff --git
a/recipes-kernel/linux/linux.inc b/recipes-kernel/linux/linux.inc index
fae78b7..103512b 100644 --- a/recipes-kernel/linux/linux.inc +++
b/recipes-kernel/linux/linux.inc @@ -33,8 +33,7 @@
kernel_configure_variable() { } do_configure_prepend() { - # Clean
.config - echo "" > ${B}/.config + mv -f ${B}/.config
${B}/.config.patched CONF_SED_SCRIPT="" # oabi / eabi support @@ -109,7
+108,8 @@ do_configure_prepend() { # Keep this the last line # Remove
all modified configs and add the rest to .config - sed -e
"${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config' + sed -e
"${CONF_SED_SCRIPT}" < '${B}/.config.patched' >> '${B}/.config' + rm -f
${B}/.config.patched yes '' | oe_runmake oldconfig } -- 1.9.1
>> Nice,
some small comments only. Please write a short summary of the feature
(kernel-yocto: allow in-tree defconfig) but keep the bugzilla as a
reference for further info. Always good to have some background found
>

> This is seems a significant core change so I wanted to make sure
these
> individual changes were as easily searchable as possible in case
any
> problems arise in future. Can you provide an example of what you
are
> suggesting for the commit msg?

Perhaps something like:

Start
using the "in-tree defconfig" solution provided in poky[0]. To specify
an "in-tree" defconfig file, edit the recipe that builds your kernel so
that it has the following command form:

 KBUILD_DEFCONFIG_KMACHINE ?=
defconfig_file

You need to append the variable with KMACHINE and then
supply the path to your "in-tree" defconfig file. 

In order to achieve
this in meta-raspberrypi will need to:

- start using
KBUILD_DEFCONFIG_KMACHINE
- Remove placeholder defconfig and custom
copying logic.
- Avoid replacing all Yocto project configured settings
in do_configure_prepend.

For more background regarding this migration
read the bugzilla bug info[1].

[0] -
http://www.yoctoproject.org/docs/1.8/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
[1]
- https://bugzilla.yoctoproject.org/show_bug.cgi?id=7474

>> directly
in the commit msg itself. Have you tested it using both poky:master and
poky:fido?
> 
> Rpi2 fido 3.18.16 with/without sound patch, 4.1.3
with/without sound patch.
> 
> BR,
> 
> Alex

Ok, since there has been
some changes (not only the early DT change) in poky:master it would be
good to do the same tests there. Andrei have to correct me if wrong, but
since we have a fido branch in meta-raspberrypi that's the branch that
is recommended to use against poky:fido, 'master' is in first place
verified against poky:master (latest and greatest). 

BR Petter


Links:
------
[1]
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7474

--=_335ed8e527e00e09881120801ec1a9b1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-08-11 21:20 skrev Alex J Lennon:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On 11/08/2015 19:54, Petter Mab&auml;cker wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">2015-08-11 19:04 skrev Alex J Lennon:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">- remove placeholder defconfig and cu=
stom copying logic - use KBUILD_DEFCONFIG for default in-tree configuration=
s instead - do not replace all Yocto configured settings in do_configure_pr=
epen see: <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D74=
74">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7474</a> Signed-off=
-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajl=
ennon@dynamicdevices.co.uk</a> &lt;mailto:<a href=3D"mailto:ajlennon@dynami=
cdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;&gt; --- recipes-kerne=
l/linux/linux-raspberrypi.inc | 15 ++++----------- recipes-kernel/linux/lin=
ux-raspberrypi/defconfig | 1 - recipes-kernel/linux/linux.inc | 6 +++--- 3 =
files changed, 7 insertions(+), 15 deletions(-) delete mode 100644 recipes-=
kernel/linux/linux-raspberrypi/defconfig diff --git a/recipes-kernel/linux/=
linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc index 7e=
36408..e38d905 100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++ =
b/recipes-kernel/linux/linux-raspberrypi.inc @@ -6,17 +6,14 @@ SECTION =3D =
"kernel" LICENSE =3D "GPLv2" LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd78=
10fab7487fb0aad327b76f1be7cd7" -SRC_URI +=3D " \ - file://defconfig \ - " -=
 COMPATIBLE_MACHINE =3D "raspberrypi" PV =3D "${LINUX_VERSION}+git${SRCREV}=
" -# NOTE: For now we pull in the default config from the RPi kernel GIT tr=
ee. -KERNEL_DEFCONFIG_raspberrypi ?=3D "bcmrpi_defconfig" -KERNEL_DEFCONFIG=
_raspberrypi2 ?=3D "bcm2709_defconfig" +KMACHINE ?=3D "${MACHINE}" +KCONFIG=
_MODE =3D "--alldefconfig" +KBUILD_DEFCONFIG_raspberrypi ?=3D "bcmrpi_defco=
nfig" +KBUILD_DEFCONFIG_raspberrypi2 ?=3D "bcm2709_defconfig" # CMDLINE for=
 raspberrypi CMDLINE =3D "dwc_otg.lpm_enable=3D0 console=3DttyAMA0,115200 k=
gdboc=3DttyAMA0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait" @@=
 -38,10 +35,6 @@ python __anonymous () { d.setVar("DEPENDS", depends) } -do=
_kernel_configme_prepend() { - install -m 0644 ${S}/arch/${ARCH}/configs/${=
KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for=
 ${MACHINE} / ${KERNEL_DEFCONFIG} available." -} - do_install_prepend() { i=
nstall -d ${D}/lib/firmware } diff --git a/recipes-kernel/linux/linux-raspb=
errypi/defconfig b/recipes-kernel/linux/linux-raspberrypi/defconfig deleted=
 file mode 100644 index ecbf32c..0000000 --- a/recipes-kernel/linux/linux-r=
aspberrypi/defconfig +++ /dev/null @@ -1 +0,0 @@ -# Dummy file to get throu=
gh do_kernel_configme. diff --git a/recipes-kernel/linux/linux.inc b/recipe=
s-kernel/linux/linux.inc index fae78b7..103512b 100644 --- a/recipes-kernel=
/linux/linux.inc +++ b/recipes-kernel/linux/linux.inc @@ -33,8 +33,7 @@ ker=
nel_configure_variable() { } do_configure_prepend() { - # Clean .config - e=
cho "" &gt; ${B}/.config + mv -f ${B}/.config ${B}/.config.patched CONF_SED=
_SCRIPT=3D"" # oabi / eabi support @@ -109,7 +108,8 @@ do_configure_prepend=
() { # Keep this the last line # Remove all modified configs and add the re=
st to .config - sed -e "${CONF_SED_SCRIPT}" &lt; '${WORKDIR}/defconfig' &gt=
;&gt; '${B}/.config' + sed -e "${CONF_SED_SCRIPT}" &lt; '${B}/.config.patch=
ed' &gt;&gt; '${B}/.config' + rm -f ${B}/.config.patched yes '' | oe_runmak=
e oldconfig } -- 1.9.1</blockquote>
Nice, some small comments only. Please write a short summary of the feature=
 (kernel-yocto: allow in-tree defconfig) but keep the bugzilla as a referen=
ce for further info. Always good to have some background found</blockquote>
<pre>This is seems a significant core change so I wanted to make sure these
individual changes were as easily searchable as possible in case any
problems arise in future. Can you provide an example of what you are
suggesting for the commit msg?</pre>
</blockquote>
<pre>Perhaps something like:

Start using the "in-tree defconfig" solution provided in poky[0]. To specif=
y an "in-tree" defconfig file, edit the recipe that builds your kernel so t=
hat it has the following command form:

     KBUILD_DEFCONFIG_KMACHINE ?=3D defconfig_file
               =20

You need to append the variable with KMACHINE and then supply the path to y=
our "in-tree" defconfig file.=20

In order to achieve this in meta-raspberrypi will need to:

- start using KBUILD_DEFCONFIG_KMACHINE
- Remove placeholder defconfig and custom copying logic.
- Avoid replacing all Yocto project configured settings in do_configure_pre=
pend.

For more background regarding this migration read the bugzilla bug info[1]=
=2E

[0] - http://www.yoctoproject.org/docs/1.8/kernel-dev/kernel-dev.html#using=
-an-in-tree-defconfig-file
[1] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7474

</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">directly in the commit msg itself. Ha=
ve you tested it using both poky:master and poky:fido?</blockquote>
<pre>Rpi2 fido 3.18.16 with/without sound patch, 4.1.3 with/without sound p=
atch.

BR,

Alex
</pre>
</blockquote>
<p>Ok, since there has been some changes (not only the early DT change) in =
poky:master it would be good to do the same tests there. Andrei have to cor=
rect me if wrong, but since we have a fido branch in meta-raspberrypi that'=
s the branch that is recommended to use against poky:fido, 'master' is in f=
irst place verified against poky:master (latest and greatest).</p>
<p>BR Petter</p>
</body></html>

--=_335ed8e527e00e09881120801ec1a9b1--

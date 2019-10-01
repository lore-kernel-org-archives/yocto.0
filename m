Return-Path: <veerender.s56@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33567E00D33; Tue,  1 Oct 2019 02:11:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (veerender.s56[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCED4E009E7
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 02:11:31 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id t84so13718461oih.10
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2019 02:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=OZG3umVQwugNtYkAP1Vo5dykvkP2A6s6geMtpzs6vhA=;
	b=E+KtwJA/r3fGGNorGraR284fqYJ4xfiPxtrguIGdHPiAM3gpwkzRoFii2VhQfh6Ake
	JPfBvdJ4mYMqUt2KNBqBpI1D3FnFHXxXrzuuMpNhZSHD1i4VDgzC4PHi6PmDhDbbRPvw
	CYV+J1sUyGpY6Edx8zbVbXHr3rHPsAdoodcXUR6/QaggvdSHM9+PjFFSBtHuUiHcLuR/
	9mO89mfk8syeLrmLzSMnzggygtKAJY8tabqnf8qVEY876fqzVr85eWHiGUpZ0tiCe6+z
	7NkbxFjoyQqHBowgYFgKpbVkonSwZm3fiomMv670FM9PZVRaxW9/1kcMGyN4giCyr9jN
	0qOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OZG3umVQwugNtYkAP1Vo5dykvkP2A6s6geMtpzs6vhA=;
	b=KqVzDwbfJ9JdeUav45zUNUFX6gSh6cogI+KMFBJ/PRhZMqCWhe/8zVcp2U54LFOphO
	jMHcmQqkmy3WPU3cwUEX9vxQirqMtDQH2E9l2pVvw8dIf8eGOqqGYQevS/yKXLPkiv00
	YNQCQzNpVBm6drg6Oi/TdE/y9U+ojyCNgQVjirsSIGlm7hWde8LZGFPcrwFNJBkdt/LE
	pWy22L7ZxAgJz0gMxXZGbe2anxOxx2SqeGx8Cs4y9Jd6PazqPNG6AFa3BmGJS5Uqvd/w
	Zwi6+cBXsGrVtAwuZLKz2x/FhUevfWHpEn5P+w6NoI57vI/WV3oQ9Cmbe9kekHsdK1NA
	7dVg==
X-Gm-Message-State: APjAAAURGKD6jTXY+S2ssJxTgMwItY0w9jaf/QHi56uw/yY9M7UrdIvJ
	n8pYXixtR0jbbG2Yi4q2hH1w2jNJXnVFMZKG/7E=
X-Google-Smtp-Source: APXvYqwck9jPtuFDmCLyb87WglRzA72JMAUsA+s2bmXokl8Lab6dWaXrX3zXsQMd4YRMzwXqgW3hMCHtDpk6yFT71D8=
X-Received: by 2002:aca:642:: with SMTP id 63mr3049573oig.10.1569921090827;
	Tue, 01 Oct 2019 02:11:30 -0700 (PDT)
MIME-Version: 1.0
From: Veerender S <veerender.s56@gmail.com>
Date: Tue, 1 Oct 2019 14:41:19 +0530
Message-ID: <CANEY1-AkhqAm7uXyen8nwU+L22bXq=8iZP_oSYv6Yg_b9+H07A@mail.gmail.com>
To: stefano.cappa.ks89@gmail.com, sscott@san.rr.com, yocto@yoctoproject.org, 
	okaya@kernel.org
X-Mailman-Approved-At: Fri, 04 Oct 2019 08:37:49 -0700
Subject: sumo-2.5 build error with core-image-base ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt --quiltrc
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
X-List-Received-Date: Tue, 01 Oct 2019 09:11:33 -0000
Content-Type: multipart/alternative; boundary="000000000000f1bb100593d5bcb2"

--000000000000f1bb100593d5bcb2
Content-Type: text/plain; charset="UTF-8"

Hi scott/stefano,

Please provide your inputs to clear the below issue from yocto- sumo-2.5
branch( Compiling for iMx8) i am struggling since 2 weeks.

I am building yocto sumo 2.5 branch with below configuration (bblayers.conf
and local.conf are below the mail. please check ).

Below is the error details while doing Build    $* bitbake core-image-base*

ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt --quiltrc
/home/e866686/Imx8-Work/imx-yocto-bsp/build/tmp/work/x86_64-linux/e2fsprogs-native/1.43.8-r0/recipe-sysroot-native/etc/quiltrc
push' exited with 0  Output:
Applying patch remove.ldconfig.call.patch
can't find file to patch at input line 24
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|From b139e03ac2f72e644e547c7ee9b1514383af4d97 Mon Sep 17 00:00:00 2001
|From: Andrei Dinu <andrei.adrianx.dinu@intel.com>
|Date: Wed, 30 Jan 2013 15:22:04 +0200
|Subject: [PATCH] When /etc/ld.so.cache is writeable by user running bitbake
| then it creates invalid cache (in my case libstdc++.so
| cannot be found after building zlib(-native) and I have to
| call touch */libstdc++.so && /sbin/ldconfig to fix it.
|
|So remove ldconfig call from make install-libs
|
|Patch authored by Martin Jansa.
|
|Upstream-Status: Inappropriate [disable feature]
|
|Signed-off-by: Scott Garman <scott.a.garman@intel.com>
|Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
|---
| lib/Makefile.elf-lib |    3 ---
| 1 file changed, 3 deletions(-)
|diff --git a/lib/Makefile.elf-lib b/lib/Makefile.elf-lib
|index 78479d3..4a4a5ac 100644
|--- a/lib/Makefile.elf-lib
|+++ b/lib/Makefile.elf-lib
--------------------------
No file to patch.  Skipping patch.
2 out of 2 hunks ignored
Patch remove.ldconfig.call.patch does not apply (enforce with -f)
ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Function failed: patch_do_patch
ERROR: Logfile of failure stored in:
/home/e866686/Imx8-Work/imx-yocto-bsp/build/tmp/work/x86_64-linux/e2fsprogs-native/1.43.8-r0/temp/log.do_patch.30378
ERROR: Task
(virtual:native:/home/e866686/Imx8-Work/imx-yocto-bsp/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_patch)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 504 tasks of which 501 didn't need to be
rerun and 1 failed.

configurations:

*build/conf/bblayers.conf*
BBPATH = "${TOPDIR}"
BSPDIR := "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)) +
'/../..')}"

BBFILES ?= ""
BBLAYERS = " \
  ${BSPDIR}/sources/poky/meta \
  ${BSPDIR}/sources/poky/meta-poky \
  \
  ${BSPDIR}/sources/meta-openembedded/meta-oe \
  ${BSPDIR}/sources/meta-openembedded/meta-multimedia \
  \
  ${BSPDIR}/sources/meta-freescale \
  ${BSPDIR}/sources/meta-freescale-3rdparty \
  ${BSPDIR}/sources/meta-freescale-distro \
"

# i.MX Yocto Project Release layers
BBLAYERS += " ${BSPDIR}/sources/meta-fsl-bsp-release/imx/meta-bsp "
BBLAYERS += " ${BSPDIR}/sources/meta-fsl-bsp-release/imx/meta-sdk "

BBLAYERS += " ${BSPDIR}/sources/meta-browser "
BBLAYERS += " ${BSPDIR}/sources/meta-openembedded/meta-gnome "
BBLAYERS += " ${BSPDIR}/sources/meta-openembedded/meta-networking "
#BBLAYERS += " ${BSPDIR}/sources/meta-openembedded/meta-iot-cloud"
BBLAYERS += " ${BSPDIR}/sources/meta-openembedded/meta-python "
BBLAYERS += " ${BSPDIR}/sources/meta-openembedded/meta-filesystems "
BBLAYERS += " ${BSPDIR}/sources/meta-openembedded/meta-webserver "
BBLAYERS += " ${BSPDIR}/sources/meta-qt5 "
BBLAYERS += " ${BSPDIR}/sources/meta-selinux "

*build/conf/local.conf*
MACHINE ??= 'imx8mqevk'
DISTRO ?= 'fsl-imx-wayland'
PACKAGE_CLASSES ?= "package_rpm"
EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
USER_CLASSES ?= "buildstats image-mklibs image-prelink"
PATCHRESOLVE = "noop"
BB_DISKMON_DIRS ??= "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    STOPTASKS,/tmp,100M,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K \
    ABORT,/tmp,10M,1K"
PACKAGECONFIG_append_pn-qemu-native = " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
CONF_VERSION = "1"

#DISTRO_FEATURES_remove = " sysvinit"
#DISTRO_FEATURES_append = " systemd"
#VIRTUAL-RUNTIME_init_manager = "systemd"
#DISTRO_FEATURES_BACKFILL_CONSIDERED = ""

#DISTRO_FEATURES_append += " alsa bluez5"
DISTRO_FEATURES_append = "acl xattr pam selinux"

# Srini : Lowered the version to make it compatible with ASTERISK VOIP
package commandline.
PREFERRED_VERSION_libedit = "2012*"
#PREFERRED_VERSION_refpolicy-minimum = "2.20151208"
#PREFERRED_VERSION_refpolicy = "2.20151208"
 PREFERRED_PROVIDER_virtual/refpolicy ?= "refpolicy-standard"

IMAGE_INSTALL_append += " libedit"
IMAGE_INSTALL_append += " paho-mqtt-c"

IMAGE_INSTALL_append += " libxml2"
IMAGE_INSTALL_append += " iptables"
IMAGE_INSTALL_append += " lksctp-tools"
#IMAGE_INSTALL_append += " asterisk"
CORE_IMAGE_EXTRA_INSTALL += "python3 python3-pip"
#CORE_IMAGE_EXTRA_INSTALL += "packagegroup-cloud-azure"
IMAGE_INSTALL_append += "packagegroup-core-selinux"
# Light weight web server. Enabled Python for CGI support
IMAGE_INSTALL_append += " sthttpd"
IMAGE_INSTALL_append += " python3"

# To configure Audio
IMAGE_INSTALL_append += " alsa-utils"
IMAGE_INSTALL_append += " gstreamer"
IMAGE_INSTALL_append += " mosquitto"
IMAGE_INSTALL_append += " e2fsprogs parted"
#IMAGE_INSTALL_remove += " libedit"

BBMASK += "${BSPDIR}/sources/meta-telephony/recipes-misc/lksctp-tools/"
BBMASK += "${BSPDIR}/sources/meta-telephony/recipes-devtools/"

DL_DIR ?= "${BSPDIR}/downloads/"
ACCEPT_FSL_EULA = "1"


-- 
Thanks&Regards
Veerender.

--000000000000f1bb100593d5bcb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi scott/stefano,<div><br></div><div>Please provide your i=
nputs to clear the below issue from yocto- sumo-2.5 branch( Compiling for i=
Mx8) i am struggling since 2 weeks.</div><div><br></div><div>I am building =
yocto sumo 2.5 branch with below configuration (bblayers.conf and local.con=
f are below the mail. please check ).</div><div><br></div><div>Below is the=
 error details=C2=A0while doing Build=C2=A0 =C2=A0 $<b><font color=3D"#0000=
ff"> bitbake core-image-base</font></b><br></div><div><div><br></div><div><=
font color=3D"#ff0000">ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command =
Error: &#39;quilt --quiltrc /home/e866686/Imx8-Work/imx-yocto-bsp/build/tmp=
/work/x86_64-linux/e2fsprogs-native/1.43.8-r0/recipe-sysroot-native/etc/qui=
ltrc push&#39; exited with 0 =C2=A0Output:<br>Applying patch remove.ldconfi=
g.call.patch<br>can&#39;t find file to patch at input line 24<br>Perhaps yo=
u used the wrong -p or --strip option?<br>The text leading up to this was:<=
br>--------------------------<br>|From b139e03ac2f72e644e547c7ee9b1514383af=
4d97 Mon Sep 17 00:00:00 2001<br>|From: Andrei Dinu &lt;<a href=3D"mailto:a=
ndrei.adrianx.dinu@intel.com">andrei.adrianx.dinu@intel.com</a>&gt;<br>|Dat=
e: Wed, 30 Jan 2013 15:22:04 +0200<br>|Subject: [PATCH] When /etc/ld.so.cac=
he is writeable by user running bitbake<br>| then it creates invalid cache =
(in my case libstdc++.so<br>| cannot be found after building zlib(-native) =
and I have to<br>| call touch */libstdc++.so &amp;&amp; /sbin/ldconfig to f=
ix it.<br>|<br>|So remove ldconfig call from make install-libs<br>|<br>|Pat=
ch authored by Martin Jansa.<br>|<br>|Upstream-Status: Inappropriate [disab=
le feature]<br>|<br>|Signed-off-by: Scott Garman &lt;<a href=3D"mailto:scot=
t.a.garman@intel.com">scott.a.garman@intel.com</a>&gt;<br>|Signed-off-by: A=
ndrei Dinu &lt;<a href=3D"mailto:andrei.adrianx.dinu@intel.com">andrei.adri=
anx.dinu@intel.com</a>&gt;<br>|---<br>| lib/Makefile.elf-lib | =C2=A0 =C2=
=A03 ---<br>| 1 file changed, 3 deletions(-)<br>|diff --git a/lib/Makefile.=
elf-lib b/lib/Makefile.elf-lib<br>|index 78479d3..4a4a5ac 100644<br>|--- a/=
lib/Makefile.elf-lib<br>|+++ b/lib/Makefile.elf-lib<br>--------------------=
------<br>No file to patch.=C2=A0 Skipping patch.<br>2 out of 2 hunks ignor=
ed<br>Patch remove.ldconfig.call.patch does not apply (enforce with -f)<br>=
ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Function failed: patch_do_patch=
<br>ERROR: Logfile of failure stored in: /home/e866686/Imx8-Work/imx-yocto-=
bsp/build/tmp/work/x86_64-linux/e2fsprogs-native/1.43.8-r0/temp/log.do_patc=
h.30378<br>ERROR: Task (virtual:native:/home/e866686/Imx8-Work/imx-yocto-bs=
p/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_patch=
) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 504 t=
asks of which 501 didn&#39;t need to be rerun and 1 failed.</font><br></div=
><div><br></div><div>configurations:</div><div><br></div><div><b>build/conf=
/bblayers.conf</b></div><div><font color=3D"#0000ff">BBPATH =3D &quot;${TOP=
DIR}&quot;<br>BSPDIR :=3D &quot;${@os.path.abspath(os.path.dirname(d.getVar=
(&#39;FILE&#39;, True)) + &#39;/../..&#39;)}&quot;<br><br>BBFILES ?=3D &quo=
t;&quot;<br>BBLAYERS =3D &quot; \<br>=C2=A0 ${BSPDIR}/sources/poky/meta \<b=
r>=C2=A0 ${BSPDIR}/sources/poky/meta-poky \<br>=C2=A0 \<br>=C2=A0 ${BSPDIR}=
/sources/meta-openembedded/meta-oe \<br>=C2=A0 ${BSPDIR}/sources/meta-opene=
mbedded/meta-multimedia \<br>=C2=A0 \<br>=C2=A0 ${BSPDIR}/sources/meta-free=
scale \<br>=C2=A0 ${BSPDIR}/sources/meta-freescale-3rdparty \<br>=C2=A0 ${B=
SPDIR}/sources/meta-freescale-distro \<br>&quot;<br><br># i.MX Yocto Projec=
t Release layers<br>BBLAYERS +=3D &quot; ${BSPDIR}/sources/meta-fsl-bsp-rel=
ease/imx/meta-bsp &quot;<br>BBLAYERS +=3D &quot; ${BSPDIR}/sources/meta-fsl=
-bsp-release/imx/meta-sdk &quot;<br><br>BBLAYERS +=3D &quot; ${BSPDIR}/sour=
ces/meta-browser &quot;<br>BBLAYERS +=3D &quot; ${BSPDIR}/sources/meta-open=
embedded/meta-gnome &quot;<br>BBLAYERS +=3D &quot; ${BSPDIR}/sources/meta-o=
penembedded/meta-networking &quot;<br>#BBLAYERS +=3D &quot; ${BSPDIR}/sourc=
es/meta-openembedded/meta-iot-cloud&quot;<br>BBLAYERS +=3D &quot; ${BSPDIR}=
/sources/meta-openembedded/meta-python &quot;<br>BBLAYERS +=3D &quot; ${BSP=
DIR}/sources/meta-openembedded/meta-filesystems &quot;<br>BBLAYERS +=3D &qu=
ot; ${BSPDIR}/sources/meta-openembedded/meta-webserver &quot;<br>BBLAYERS +=
=3D &quot; ${BSPDIR}/sources/meta-qt5 &quot;<br>BBLAYERS +=3D &quot; ${BSPD=
IR}/sources/meta-selinux &quot;</font><br></div><div><font color=3D"#0000ff=
"><br></font></div><div><b style=3D""><font color=3D"#000000" size=3D"4">bu=
ild/conf/local.conf</font></b></div><div>MACHINE ??=3D &#39;imx8mqevk&#39;<=
br>DISTRO ?=3D &#39;fsl-imx-wayland&#39;<br>PACKAGE_CLASSES ?=3D &quot;pack=
age_rpm&quot;<br>EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot;<br>USER=
_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&quot;<br>PATCHRES=
OLVE =3D &quot;noop&quot;<br>BB_DISKMON_DIRS ??=3D &quot;\<br>=C2=A0 =C2=A0=
 STOPTASKS,${TMPDIR},1G,100K \<br>=C2=A0 =C2=A0 STOPTASKS,${DL_DIR},1G,100K=
 \<br>=C2=A0 =C2=A0 STOPTASKS,${SSTATE_DIR},1G,100K \<br>=C2=A0 =C2=A0 STOP=
TASKS,/tmp,100M,100K \<br>=C2=A0 =C2=A0 ABORT,${TMPDIR},100M,1K \<br>=C2=A0=
 =C2=A0 ABORT,${DL_DIR},100M,1K \<br>=C2=A0 =C2=A0 ABORT,${SSTATE_DIR},100M=
,1K \<br>=C2=A0 =C2=A0 ABORT,/tmp,10M,1K&quot;<br>PACKAGECONFIG_append_pn-q=
emu-native =3D &quot; sdl&quot;<br>PACKAGECONFIG_append_pn-nativesdk-qemu =
=3D &quot; sdl&quot;<br>CONF_VERSION =3D &quot;1&quot;<br><br>#DISTRO_FEATU=
RES_remove =3D &quot; sysvinit&quot;<br>#DISTRO_FEATURES_append =3D &quot; =
systemd&quot;<br>#VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>#=
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;&quot;<br><br>#DISTRO_FEATURE=
S_append +=3D &quot; alsa bluez5&quot;<br>DISTRO_FEATURES_append =3D &quot;=
acl xattr pam selinux&quot;<br><br># Srini : Lowered the version to make it=
 compatible with ASTERISK VOIP package commandline.<br>PREFERRED_VERSION_li=
bedit =3D &quot;2012*&quot;<br>#PREFERRED_VERSION_refpolicy-minimum =3D &qu=
ot;2.20151208&quot;<br>#PREFERRED_VERSION_refpolicy =3D &quot;2.20151208&qu=
ot;<br>=C2=A0PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;refpolicy-stan=
dard&quot;<br></div><br>IMAGE_INSTALL_append +=3D &quot; libedit&quot;<br>I=
MAGE_INSTALL_append +=3D &quot; paho-mqtt-c&quot;<br><br>IMAGE_INSTALL_appe=
nd +=3D &quot; libxml2&quot;<br>IMAGE_INSTALL_append +=3D &quot; iptables&q=
uot;<br>IMAGE_INSTALL_append +=3D &quot; lksctp-tools&quot;<br>#IMAGE_INSTA=
LL_append +=3D &quot; asterisk&quot;<br>CORE_IMAGE_EXTRA_INSTALL +=3D &quot=
;python3 python3-pip&quot;<br>#CORE_IMAGE_EXTRA_INSTALL +=3D &quot;packageg=
roup-cloud-azure&quot;<br>IMAGE_INSTALL_append +=3D &quot;packagegroup-core=
-selinux&quot;<br># Light weight web server. Enabled Python for CGI support=
<br>IMAGE_INSTALL_append +=3D &quot; sthttpd&quot;<br>IMAGE_INSTALL_append =
+=3D &quot; python3&quot;<br><br># To configure Audio<br>IMAGE_INSTALL_appe=
nd +=3D &quot; alsa-utils&quot;<br>IMAGE_INSTALL_append +=3D &quot; gstream=
er&quot;<br>IMAGE_INSTALL_append +=3D &quot; mosquitto&quot;<br>IMAGE_INSTA=
LL_append +=3D &quot; e2fsprogs parted&quot;<br>#IMAGE_INSTALL_remove +=3D =
&quot; libedit&quot;<br><br>BBMASK +=3D &quot;${BSPDIR}/sources/meta-teleph=
ony/recipes-misc/lksctp-tools/&quot;<br>BBMASK +=3D &quot;${BSPDIR}/sources=
/meta-telephony/recipes-devtools/&quot;<br><br>DL_DIR ?=3D &quot;${BSPDIR}/=
downloads/&quot;<br>ACCEPT_FSL_EULA =3D &quot;1&quot;<br><div><br></div><di=
v><font color=3D"#0000ff"><br></font></div>-- <br><div dir=3D"ltr" class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature">Thanks&amp;Regards<br>=
Veerender.</div></div></div>

--000000000000f1bb100593d5bcb2--

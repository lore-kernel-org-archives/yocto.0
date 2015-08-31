Return-Path: <caiortp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09E88E00DBF; Mon, 31 Aug 2015 08:13:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (caiortp[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFDC7E00D39
	for <yocto@yoctoproject.org>; Mon, 31 Aug 2015 08:13:27 -0700 (PDT)
Received: by lanb10 with SMTP id b10so38070636lan.2
	for <yocto@yoctoproject.org>; Mon, 31 Aug 2015 08:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=1xZgcGFfJnLjjXqxz4bNb9Qyl8bDfTQIYdqbnnSBbkg=;
	b=oFbJTQ+dq5WGEEAd6pPoxOEfHH824wOm7qZYFRVuVP97swq+ddtbI3/U8s8BK+UHkB
	pylJaHx0O/fg0E7VcQh4XtA9KJuddmVTp0gWRYWosneC/blH0qnRSpE/hRq9x1fhL1Sh
	Hq+8vHcBK6h9gOYWDbXOUg5Qy5AFmtOguK1isAESnLUUrJK5+fV7+zq/3eCWZ2uzqmZL
	F7YWnPFJWixivH5EifoogBvhCEgCAip+TF5kNHpLOcmog3H5x0dnDSqJUTtSfigX1A0n
	BBT2xyjFHG2cMA4QGJzPnc12Jc97BeG9W6WBw8V/lx1QOgo55wnQj0eFyZjq6gQx9tyW
	azTg==
MIME-Version: 1.0
X-Received: by 10.152.37.196 with SMTP id a4mr10885421lak.59.1441034005548;
	Mon, 31 Aug 2015 08:13:25 -0700 (PDT)
Received: by 10.112.161.231 with HTTP; Mon, 31 Aug 2015 08:13:25 -0700 (PDT)
Date: Mon, 31 Aug 2015 12:13:25 -0300
Message-ID: <CAJqtCyYTZ_X-xNZTCxMJDE2QnvTxp=RW3bCUwa4uVAVQOT7huw@mail.gmail.com>
From: Caio <caiortp@gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [meta-qt5] Missing qt5declarative rootfs
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
X-List-Received-Date: Mon, 31 Aug 2015 15:13:32 -0000
Content-Type: multipart/alternative; boundary=089e01493c8a029675051e9ce091

--089e01493c8a029675051e9ce091
Content-Type: text/plain; charset=UTF-8

Hello,

I'm trying to build an Image with meta-qt5 , the problem is that the
qt5declarative is not copied to rootfs.
The qt5declarative package is generated but is not included in the rootfs,
others qt5's packages are included in the rootfs.
What I'm doing wrong?

Yocto 1.7
meta-qt5: d2c05c81e8230358dca80cf9df67e49f9f672a29


my package group

packagegroup-qt5_0.1.bb

SUMMARY = "QT5  package group"
LICENSE = "MIT"

PR = "0"

inherit packagegroup

VIRTUAL_KEYBOARD ?= "maliit-framework-qt5 maliit-plugins-qt5"

IMAGE_INSTALL+ = " \
    dbus \
    qtbase \
    qtbase-plugins \
    qtbase-fonts \
    qtdeclarative \
    qtdeclarative-plugins \
    qtdeclarative-qmlplugins \
    qtmultimedia \
    qtmultimedia-plugins \
    qtmultimedia-qmlplugins \
    qtserialport \
    qtscript \
    qtgraphicaleffects-qmlplugins \
    qtconnectivity-qmlplugins \
    qtxmlpatterns \
    qtquick1 \
    qtquickcontrols \
    qtquickcontrols-qmlplugins \
    qtgstreamer \
    qtsvg \
    qtsvg-plugins \
    qtimageformats \
    qtimageformats-plugin \
    "

RDEPENDS_${PN}= "qtquickcontrols-qmlplugins qtdeclarative-qmlplugins
qtdeclarative-plugins"


My local.conf

MACHINE ??= 'colibri-imx6'
DISTRO ?= 'poky'
PACKAGE_CLASSES ?= "package_ipk "
EXTRA_IMAGE_FEATURES += "debug-tweaks package-management splash "
USER_CLASSES ?= "buildstats image-mklibs image-prelink"
PATCHRESOLVE = "noop"
BB_DISKMON_DIRS = "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K"
CONF_VERSION = "1"

BB_NUMBER_THREADS = '24'
PARALLEL_MAKE = '-j 24'

ACCEPT_FSL_EULA = "1"
DISTRO_FEATURES_remove = "x11 wayland nfc 3g bluetooth irda ppp zerconf"
IMAGE_OVERHEAD_FACTOR = "2"

DISTRO_FEATURES_append = " opengl pulseaudio alsa systemd wifi ethernet
loopback"
PACKAGECONFIG_DISTRO_pn-qtbase = "accessibility qtxmlpatterns"
PACKAGECONFIG_DISTRO_pn-qtdeclarative = "qtxmlpatterns"
CORE_IMAGE_EXTRA_INSTALL_append = " kernel-modules module-init-tools-depmod
modutils-initscripts udev qtsmarthome quitbattery"

IMAGE_INSTALL_append = " \
    firmware-imx-vpu-imx6d \
    packagegroup-gstreamer \
    packagegroup-qt5 \
    packagegroup-core \
    packagegroup-base-graphics \
"
PREFERRED_PROVIDER_psplash-support = "psplash-angstrom"
PREFERRED_PROVIDER_glibc = "glibc"




Thank you very much!

Regards,


-- 
----------------------------------------------
Caio Pereira

--089e01493c8a029675051e9ce091
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br></div>I&#39;m trying to build an I=
mage with meta-qt5 , the problem is that the qt5declarative is not copied t=
o rootfs.<br>The qt5declarative package is generated but is not included in=
 the rootfs, others qt5&#39;s packages are included in the rootfs.<br></div=
><div>What I&#39;m doing wrong?<br><br></div><div>Yocto 1.7 <br></div><div>=
meta-qt5: d2c05c81e8230358dca80cf9df67e49f9f672a29<br><br></div><div><br></=
div><div>my package group<br><br><a href=3D"http://packagegroup-qt5_0.1.bb"=
 target=3D"_blank">packagegroup-qt5_0.1.bb</a><br><br>SUMMARY =3D &quot;QT5=
=C2=A0 package group&quot;<br>LICENSE =3D &quot;MIT&quot;<br><br>PR =3D &qu=
ot;0&quot;<br><br>inherit packagegroup<br><br>VIRTUAL_KEYBOARD ?=3D &quot;m=
aliit-framework-qt5 maliit-plugins-qt5&quot;<br><br>IMAGE_INSTALL+ =3D &quo=
t; \<br>=C2=A0=C2=A0=C2=A0 dbus \<br>=C2=A0=C2=A0=C2=A0 qtbase \<br>=C2=A0=
=C2=A0=C2=A0 qtbase-plugins \ <br>=C2=A0=C2=A0=C2=A0 qtbase-fonts \<br>=C2=
=A0=C2=A0=C2=A0 qtdeclarative \<br>=C2=A0=C2=A0=C2=A0 qtdeclarative-plugins=
 \<br>=C2=A0=C2=A0=C2=A0 qtdeclarative-qmlplugins \<br>=C2=A0=C2=A0=C2=A0 q=
tmultimedia \<br>=C2=A0=C2=A0=C2=A0 qtmultimedia-plugins \<br>=C2=A0=C2=A0=
=C2=A0 qtmultimedia-qmlplugins \<br>=C2=A0=C2=A0=C2=A0 qtserialport \ <br>=
=C2=A0=C2=A0=C2=A0 qtscript \<br>=C2=A0=C2=A0=C2=A0 qtgraphicaleffects-qmlp=
lugins \<br>=C2=A0=C2=A0=C2=A0 qtconnectivity-qmlplugins \=C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 qtxmlpatterns \<br>=C2=A0=C2=
=A0=C2=A0 qtquick1 \<br>=C2=A0=C2=A0=C2=A0 qtquickcontrols \<br>=C2=A0=C2=
=A0=C2=A0 qtquickcontrols-qmlplugins \<br>=C2=A0=C2=A0=C2=A0 qtgstreamer \<=
br>=C2=A0=C2=A0=C2=A0 qtsvg \ <br>=C2=A0=C2=A0=C2=A0 qtsvg-plugins \ <br>=
=C2=A0=C2=A0=C2=A0 qtimageformats \ <br>=C2=A0=C2=A0=C2=A0 qtimageformats-p=
lugin \<br>=C2=A0=C2=A0=C2=A0 &quot;<br><br>RDEPENDS_${PN}=3D &quot;qtquick=
controls-qmlplugins qtdeclarative-qmlplugins qtdeclarative-plugins&quot;<br=
 clear=3D"all"></div><div><div><div><br><br></div><div>My local.conf<br><br=
>MACHINE ??=3D &#39;colibri-imx6&#39;<br>DISTRO ?=3D &#39;poky&#39;<br>PACK=
AGE_CLASSES ?=3D &quot;package_ipk &quot;<br>EXTRA_IMAGE_FEATURES +=3D &quo=
t;debug-tweaks package-management splash &quot;<br>USER_CLASSES ?=3D &quot;=
buildstats image-mklibs image-prelink&quot;<br>PATCHRESOLVE =3D &quot;noop&=
quot;<br>BB_DISKMON_DIRS =3D &quot;\<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,${TMPD=
IR},1G,100K \<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,${DL_DIR},1G,100K \<br>=C2=A0=
=C2=A0=C2=A0 STOPTASKS,${SSTATE_DIR},1G,100K \<br>=C2=A0=C2=A0=C2=A0 ABORT,=
${TMPDIR},100M,1K \<br>=C2=A0=C2=A0=C2=A0 ABORT,${DL_DIR},100M,1K \<br>=C2=
=A0=C2=A0=C2=A0 ABORT,${SSTATE_DIR},100M,1K&quot;<br>CONF_VERSION =3D &quot=
;1&quot;<br><br>BB_NUMBER_THREADS =3D &#39;24&#39;<br>PARALLEL_MAKE =3D &#3=
9;-j 24&#39;<br><br>ACCEPT_FSL_EULA =3D &quot;1&quot;<br>DISTRO_FEATURES_re=
move =3D &quot;x11 wayland nfc 3g bluetooth irda ppp zerconf&quot;<br>IMAGE=
_OVERHEAD_FACTOR =3D &quot;2&quot;<br><br>DISTRO_FEATURES_append =3D &quot;=
 opengl pulseaudio alsa systemd wifi ethernet loopback&quot;<br>PACKAGECONF=
IG_DISTRO_pn-qtbase =3D &quot;accessibility qtxmlpatterns&quot;<br>PACKAGEC=
ONFIG_DISTRO_pn-qtdeclarative =3D &quot;qtxmlpatterns&quot;<br>CORE_IMAGE_E=
XTRA_INSTALL_append =3D &quot; kernel-modules module-init-tools-depmod modu=
tils-initscripts udev qtsmarthome quitbattery&quot;<br><br>IMAGE_INSTALL_ap=
pend =3D &quot; \<br>=C2=A0=C2=A0=C2=A0 firmware-imx-vpu-imx6d \<br>=C2=A0=
=C2=A0=C2=A0 packagegroup-gstreamer \<br>=C2=A0=C2=A0=C2=A0 packagegroup-qt=
5 \<br>=C2=A0=C2=A0=C2=A0 packagegroup-core \<br>=C2=A0=C2=A0=C2=A0 package=
group-base-graphics \<br>&quot;<br>PREFERRED_PROVIDER_psplash-support =3D &=
quot;psplash-angstrom&quot;<br>PREFERRED_PROVIDER_glibc =3D &quot;glibc&quo=
t;<br><br><br><br><br></div><div>Thank you very much!<br><br></div><div>Reg=
ards,<br></div><div><br><br></div><div>-- <br><div>------------------------=
----------------------<br>Caio Pereira</div>
</div></div></div></div>

--089e01493c8a029675051e9ce091--

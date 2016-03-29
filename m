Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1375FE008C6; Tue, 29 Mar 2016 15:20:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73B91E0048B
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 15:20:43 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id 20so9727107wmh.3
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 15:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=gPhi/hsaDMMTs9sUZUcQkFi417u+sqK0oANEtywEwGM=;
	b=k+1TH4gXhjqPm5pCZZ1cSIOTR76xj3sXPaV9NpvE7Nu9S4VPb7vzKT5c5562iJj5bp
	/958kcTr1MPb+gAgb/ba5z0cCRS8tFXTuv369nCdT7CdAYSf0Nv4nSEI3w3LEmMpg/Xw
	ahVDE935yYZqDAQUvdLuWgrwpKQ9KSRms+vsD3O/kPwSPU2ZAckpNHNX2u3i5rkB+u5l
	jVcm3z0pkrd/iyI30YUDf10xFdGMEoN26DlrMhacAzTpcoAF8HmYk+o4hkU+Fnvu/bK4
	b3hhezWV7ItDn92i9vXiTShqFlbL/SaQB9dplC8PKrE8exVCu7lOKqTsN0hLk+/UY/ZD
	ns4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=gPhi/hsaDMMTs9sUZUcQkFi417u+sqK0oANEtywEwGM=;
	b=H4OgR8atPU3Xg44z9EVVrf0sC7zEmj5au4vCgegho/NAGHWO5TeKZkDaMtqAsVfkG1
	PVUI3GCjQD82qohC1CUqK4ddqDMJhgpuMOhq6s4eO/1mapwqEy4TxFvna07VBWqs9Zow
	T//XeRVf2dsGAQOrbq+bV9TindxKENqjFD6khH/9Xzpr5iNdGFPk07XY7EZO9C6Y+XUU
	1UHuSqFq9YxyvMijZnw4B2b3hZxjstakaE6UypekgR0khpQr3DeexFUxH9/BWJDzRUoL
	j1K4d3ss9+Eg+RG+Vp+ooX1fEG4jer+LfLG7laWts/HPKSuZZkDtD1s8gRi8U+4/Su4f
	J6zA==
X-Gm-Message-State: AD7BkJIso5X+LTxucWrzdd9xPgyOzNtEOUwlNIcDNZjE2Q2nDz1iSykBOvOQ0ENtMKj9lg==
X-Received: by 10.194.90.229 with SMTP id bz5mr5735054wjb.143.1459290042762;
	Tue, 29 Mar 2016 15:20:42 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192])
	by smtp.gmail.com with ESMTPSA id jv7sm728890wjb.36.2016.03.29.15.20.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Mar 2016 15:20:42 -0700 (PDT)
Date: Wed, 30 Mar 2016 00:20:40 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160329222040.GE4325@resin>
References: <1459263851-32643-1-git-send-email-petter@technux.se>
	<1459263851-32643-2-git-send-email-petter@technux.se>
	<127D05D7-F0BC-4D36-8E9E-4F3C10E104EF@gmail.com>
	<56FAEB92.5050709@technux.se>
MIME-Version: 1.0
In-Reply-To: <56FAEB92.5050709@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/4] pitft: Add support for pitft28r
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
X-List-Received-Date: Tue, 29 Mar 2016 22:20:48 -0000
X-Groupsio-MsgNum: 29205
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fCcDWlUEdh43YKr8"
Content-Disposition: inline

--fCcDWlUEdh43YKr8
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 29, 2016 at 10:54:42PM +0200, Petter Mab=C3=A4cker wrote:
> On 03/29/2016 05:59 PM, Khem Raj wrote:
> >>On Mar 29, 2016, at 8:04 AM, Petter Mab=C3=A4cker <petter@technux.se> w=
rote:
> >>
> >>The support for PiTFT 28 inch resistive touchscreen is optional
> >>and can be enabled by adding below in local.conf:
> >>
> >>MACHINE_FEATURES +=3D "pitft pitft28r=E2=80=9D
> >>
> >will this work with all kernel recipes available in layer ?
> It works on 3.18+. I just realized that 3.14 support was not removed when=
 we
> took in 4.4 (so it will not work on that kernel). Since the general policy
> we have is to support three kernel versions; latest stable (4.4) + two
> longterm (4.1 and 3.18), I can send up a commit that removes 3.14 support=
 in
> 'master' within this series.
>
> Thanks for your help to pointing this out!
>

That would definitely be a good idea. Good job!

> BR Petter
> >
> >
> >>Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> >>---
> >>README                                                              | 1=
 +
> >>conf/machine/include/rpi-base.inc                                   | 1=
 +
> >>recipes-bsp/bootfiles/rpi-config_git.bb                             | 6=
 ++++++
> >>.../xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft.conf  | 5=
 +++++
> >>.../xserver-xf86-config/rpi/xorg.conf.d/99-calibration.conf         | 6=
 ++++++
> >>.../xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf  | 5=
 -----
> >>recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend      | 6=
 ++++--
> >>recipes-kernel/linux/linux-raspberrypi.inc                          | 2=
 ++
> >>8 files changed, 25 insertions(+), 7 deletions(-)
> >>create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rp=
i/xorg.conf.d/98-pitft.conf
> >>create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rp=
i/xorg.conf.d/99-calibration.conf
> >>delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rp=
i/xorg.conf.d/99-pitft.conf
> >>
> >>diff --git a/README b/README
> >>index 536926b..54b1ac3 100644
> >>--- a/README
> >>+++ b/README
> >>@@ -232,6 +232,7 @@ the modelname should be added as a MACHINE_FEATURES=
 in local.conf like below:
> >>
> >>List of currently supported models:
> >>     - pitft22
> >>+    - pitft28r
> >>
> >>
> >>4. Extra apps
> >>diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/r=
pi-base.inc
> >>index 792150e..a9e8053 100644
> >>--- a/conf/machine/include/rpi-base.inc
> >>+++ b/conf/machine/include/rpi-base.inc
> >>@@ -33,6 +33,7 @@ KERNEL_DEVICETREE ?=3D " \
> >>     overlays/iqaudio-dacplus-overlay.dtb \
> >>     overlays/lirc-rpi-overlay.dtb \
> >>     overlays/pitft22-overlay.dtb \
> >>+    overlays/pitft28-resistive-overlay.dtb \
> >>     overlays/pps-gpio-overlay.dtb \
> >>     overlays/w1-gpio-overlay.dtb \
> >>     overlays/w1-gpio-pullup-overlay.dtb \
> >>diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/boot=
files/rpi-config_git.bb
> >>index 4d41723..2941982 100644
> >>--- a/recipes-bsp/bootfiles/rpi-config_git.bb
> >>+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> >>@@ -17,6 +17,7 @@ PR =3D "r4"
> >>
> >>PITFT=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)=
}"
> >>PITFT22=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0"=
, d)}"
> >>+PITFT28r=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", =
"0", d)}"
> >>
> >>inherit deploy
> >>
> >>@@ -90,6 +91,11 @@ do_deploy() {
> >>         echo "# Enable PITFT22 display" >>${DEPLOYDIR}/bcm2835-bootfil=
es/config.txt
> >>         echo "dtoverlay=3Dpitft22,rotate=3D270,speed=3D32000000,txbufl=
en=3D32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >>     fi
> >>+
> >>+    if [ "${PITFT28r}" =3D "1" ]; then
> >>+        echo "# Enable PITFT28r display" >>${DEPLOYDIR}/bcm2835-bootfi=
les/config.txt
> >>+        echo "dtoverlay=3Dpitft28-resistive,rotate=3D90,speed=3D320000=
00,txbuflen=3D32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >>+    fi
> >>}
> >>
> >>addtask deploy before do_package after do_install
> >>diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg=
=2Econf.d/98-pitft.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config=
/rpi/xorg.conf.d/98-pitft.conf
> >>new file mode 100644
> >>index 0000000..0d2b36b
> >>--- /dev/null
> >>+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d=
/98-pitft.conf
> >>@@ -0,0 +1,5 @@
> >>+Section "Device"
> >>+    Identifier "Adafruit PiTFT"
> >>+    Driver "fbdev"
> >>+    Option "fbdev" "/dev/fb1"
> >>+EndSection
> >>diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg=
=2Econf.d/99-calibration.conf b/recipes-graphics/xorg-xserver/xserver-xf86-=
config/rpi/xorg.conf.d/99-calibration.conf
> >>new file mode 100644
> >>index 0000000..f8b578c
> >>--- /dev/null
> >>+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d=
/99-calibration.conf
> >>@@ -0,0 +1,6 @@
> >>+Section "InputClass"
> >>+        Identifier      "calibration"
> >>+        MatchProduct    "stmpe-ts"
> >>+        Option  "Calibration"   "3800 200 200 3800"
> >>+        Option  "SwapAxes"      "1"
> >>+EndSection
> >>diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg=
=2Econf.d/99-pitft.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config=
/rpi/xorg.conf.d/99-pitft.conf
> >>deleted file mode 100644
> >>index 0d2b36b..0000000
> >>--- a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d=
/99-pitft.conf
> >>+++ /dev/null
> >>@@ -1,5 +0,0 @@
> >>-Section "Device"
> >>-    Identifier "Adafruit PiTFT"
> >>-    Driver "fbdev"
> >>-    Option "fbdev" "/dev/fb1"
> >>-EndSection
> >>diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbap=
pend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> >>index 0ae2ee0..062de2d 100644
> >>--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> >>+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> >>@@ -1,7 +1,8 @@
> >>FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >>
> >>SRC_URI_append_rpi =3D " file://xorg.conf.d/10-evdev.conf \
> >>-                       file://xorg.conf.d/99-pitft.conf \
> >>+                       file://xorg.conf.d/98-pitft.conf \
> >>+                       file://xorg.conf.d/99-calibration.conf \
> >>                      "
> >>
> >>do_install_append_rpi () {
> >>@@ -10,7 +11,8 @@ do_install_append_rpi () {
> >>
> >>	PITFT=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d=
)}"
> >>	if [ "${PITFT}" =3D "1" ]; then
> >>-		install -m 0644 ${WORKDIR}/xorg.conf.d/99-pitft.conf ${D}/${sysconfd=
ir}/X11/xorg.conf.d/
> >>+		install -m 0644 ${WORKDIR}/xorg.conf.d/98-pitft.conf ${D}/${sysconfd=
ir}/X11/xorg.conf.d/
> >>+		install -m 0644 ${WORKDIR}/xorg.conf.d/99-calibration.conf ${D}/${sy=
sconfdir}/X11/xorg.conf.d/
> >>	fi
> >>}
> >>
> >>diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kerne=
l/linux/linux-raspberrypi.inc
> >>index 24e7fe2..142ad7f 100644
> >>--- a/recipes-kernel/linux/linux-raspberrypi.inc
> >>+++ b/recipes-kernel/linux/linux-raspberrypi.inc
> >>@@ -27,6 +27,8 @@ CMDLINE_append =3D ' ${@base_conditional("ENABLE_KGDB=
", "1", "kgdboc=3DttyAMA0,11520
> >>
> >>UDEV_GE_141 ?=3D "1"
> >>
> >>+KERNEL_MODULE_AUTOLOAD +=3D "${@bb.utils.contains("MACHINE_FEATURES", =
"pitft28r", "stmpe-ts", "", d)}"
> >>+
> >># Set programmatically some variables during recipe parsing
> >># See http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitb=
ake-user-manual.html#anonymous-python-functions
> >>python __anonymous () {
> >>--
> >>1.9.1
> >>
> >>--
> >>_______________________________________________
> >>yocto mailing list
> >>yocto@yoctoproject.org
> >>https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--fCcDWlUEdh43YKr8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJW+v+0AAoJENTZT2etDpZAaqAQAI4LNKdNe3f/7EaBJ2xtnOAS
JEDnNRIYPihwaVe1/LJKqOAVF3eRYeo2g6IVbKD4pKyi3dOnofAoDDxf4yBWwlfb
pdmsSi5o2ouKtnHn7r1Mx4Xue/1yW5QOc0Cwv7UcZZavQDIHzPYnHf02dn2VZ8hE
suiCvCCZgMgVLMWDfn47L+LTqm/paMRBXBj5oiRSLELdh0UKpY9kCcDTBtcwrKxn
/YOENNB9mfFWvIlxnmhPBxIWHDwCOB7Y97gRAV0WWfN9Q/aZ7RtRRz1ZcpNs6L3p
I2mmXipQThL5KiC4PdlnhabcCjYOy6jpX6ZpVzpCS5V19xN+tJjM0gBSNzWJF8JX
64zThlAYKS+dsyd2Dt0UTbn9iYV2eUuZOcK+JqOh2ApcKp7ugglDrbmOEX+mD+LS
7Q4OxFIbrDTwtJE7HKCIlCnWJHX37cbyhdX9/QEuTQdRmlM6yIoqA+LcLh3fKA4X
wSVXttAtrkHPjC/bRfhCq+f8CgXfdQotQHq9MtIjJXlyRXBeysea6cfQGj3Z8GRq
higke1KnkpevLeehESk1GlOiVLA+8vKMIhDos00OAiFfPdnteinhPxVgm7Ip+2vp
QbA2uRhu/NvnOoFHQ1EdCzdKDUCUIFySLpWmZP7d42XJL4OKpgWq3dGVWdK1s6Ke
1s3/Ka7txETItiBtig4k
=oXpN
-----END PGP SIGNATURE-----

--fCcDWlUEdh43YKr8--

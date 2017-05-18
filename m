Return-Path: <hideyuki.mau@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 500F5E00B43; Thu, 18 May 2017 04:43:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (hideyuki.mau[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD0EAE00B3E
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 04:43:26 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id h4so50217947oib.3
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 04:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8x+XsjwVCqFmoyjQes7gtEWMO5ba7fJHx80PFGTKAxU=;
	b=tw3eEGJTwoMfuHUwPJlWcNYsJikNFjTWK7OYOzFsM+ulPJH6LMcQbKFzEDl2smwet2
	s44XytJ517hd3b3o6Z85bi2A2s5qqXcXHHS80YJ3dhl1uU5ZmWNzjN3NdGOL/pbk7YIc
	gPtf3YWQlQxyifeYiN5aglTQgG68NRygKHJiyxVxbQn3J8C8M87RTUBqyYUbcycS0lS1
	QxnfP7NvWWCeDL7QQJLIwsw+87wsVlwISfYF7Q5BNAhxJGOSeFEXjGzZ7Cv3eAIMhtlp
	s8MJ1QxcUz8SS1QJdyKArpmXBHLkLf51HOvZqEaVfFfxaHI+axjeArclRMRseZZlrrjw
	udDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8x+XsjwVCqFmoyjQes7gtEWMO5ba7fJHx80PFGTKAxU=;
	b=czAcQYjV57K889At3YwGw8iN7gT4maVh7dyZqshR9vwApZt0IHJF2o9u/4RlOMkSkU
	aa4HISGoMnHl/cjtv5k5favJ4yg2N1dMB3a9NKd5McNLdaG2f7xwQzIPqT72uB5AZap7
	UwGU/tkQlX9bOTwhiClxc50aRwss0uVH5+mTa89A/LHyYz9W2YPRtm+aSapemYFdDc1g
	Hfz2cdDliwdLQE246E1RWiiAgr33t1bf1mzMmIXT84Ku1XVgXKhL48eRQi4z3ob5JI8a
	MbINneiml5Y4p4bAVpDAU3HNXvXrOhxz8WEaDyd3Fdgm2eHzHmhzPEAa3mzPh0zY52hL
	OxNg==
X-Gm-Message-State: AODbwcAQAdbSNot8yMMMxQOdUNjKVrYISJSF+7J4YN/1K6EmutqXNZON
	iMOk+vRTirHjYfPAhdZg2NCRIRtsUM9yRos=
X-Received: by 10.202.196.83 with SMTP id u80mr1715439oif.207.1495107805695;
	Thu, 18 May 2017 04:43:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.86.101 with HTTP; Thu, 18 May 2017 04:43:25 -0700 (PDT)
From: mau hideyuki <hideyuki.mau@gmail.com>
Date: Thu, 18 May 2017 20:43:25 +0900
Message-ID: <CANctR1jFHjF5DcQ5EqfdQdQ+J+X-c9ew1h6r4kcDHdh1sdqjPA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 23 May 2017 08:19:43 -0700
Subject: yocto] [meta-raspberrypi] why "pi3-64 bitbake image" could not boot ?
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
X-List-Received-Date: Thu, 18 May 2017 11:43:29 -0000
Content-Type: multipart/alternative; boundary="001a113e2598a8d558054fcae922"

--001a113e2598a8d558054fcae922
Content-Type: text/plain; charset="UTF-8"

Hi all>
 I build raspberry pi3-64 image on my PC, but this image
 is not able to boot on my raspberrypi3.

So, I try to build raspberry pi3(aarch32) image, and this image is
 able to boot on my raspberrypi3.

Next try, I will try build  linux-kernel only with normal make, and install
over aarch32 image, so boot is good!.
I build below refference URL
 "https://devsidestory.com/build-a-64-bit-kernel-for-your-raspberry-pi-3/"

Why bitbake image(aarch64)  is not able to boot??
(this boot stop at emergency screen)

#My enviorment is below
------------------------------------------------------------------
  build PC : Ubuntu 16.04 LTS
  yocto and linaro and openembedded version is reffer to the log.

#bblayer.con
-----------------------------------------------------------------------------------
POKY_BBLAYERS_CONF_VERSION = "2"
BBPATH = "${TOPDIR}"
BBFILES ?= ""
BBLAYERS ?= " \
  /home/hideyuki/RPI3/linux4.9.26/poky/meta \
  /home/hideyuki/RPI3/linux4.9.26/poky/meta-poky \
  /home/hideyuki/RPI3/linux4.9.26/poky/meta-yocto-bsp \
  /home/hideyuki/RPI3/linux4.9.26/meta-openembedded/meta-oe \
  /home/hideyuki/RPI3/linux4.9.26/meta-openembedded/meta-multimedia \
  /home/hideyuki/RPI3/linux4.9.26/meta-linaro/meta-linaro-toolchain \
  /home/hideyuki/RPI3/linux4.9.26/meta-raspberrypi \
  "
BBLAYERS_NON_REMOVABLE ?= " \
  /home/hideyuki/Adaptive/RPI3/linux4.9.26/poky/meta \
  /home/hideyuki/Adaptive/RPI3/linux4.9.26/poky/meta-yocto \

#layer.conf
--------------------------------------------------------------------------------------
#"my added" comment is only added on orininal local.conf which is
# created by "source poky/oe-init-build-env
MACHINE ?= "raspberrypi3-64"                      #my added
BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"   #my added
PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"    #my added
MACHINE ??= "qemux86"
DISTRO ?= "poky"
PACKAGE_CLASSES ?= "package_rpm"
EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
USER_CLASSES ?= "buildstats image-mklibs image-prelink"
PATCHRESOLVE = "noop"
USER_CLASSES ?= "buildstats image-mklibs image-prelink"
PATCHRESOLVE = "noop"
BB_DISKMON_DIRS = "\
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
EXTRA_IMAGE_FEATURES += " ssh-server-openssh "   #my added
export GNU_MIRROR="http://ftp.gnu.org/gnu"       #my added
CONNECTIVITY_CHECK_URIS = ""                     #my added

#bitbake log (top only)
----------------------------------------------------------------------
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "aarch64-poky-linux"
MACHINE           = "raspberrypi3-64"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3"
TUNE_FEATURES     = "aarch64"
TARGET_FPU        = ""
meta
meta-poky
meta-yocto-bsp    = "master:381897c64069ea43d595380a3ae913bcc79cf7e1"
meta-oe
meta-multimedia   = "master:2cdea6c5bb09aa90184c17c9157f4fed0e10b3c2"
meta-linaro-toolchain = "master:fe7980c13fafd26ba207aa014402eeccfc7ae181"
meta-raspberrypi  = "master:8527a396d38aec7776182caca8b9a237e03c3965"

Best regards,
hideyuki.

--001a113e2598a8d558054fcae922
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div></div>Hi all&gt;<br></div>=C2=A0I build ras=
pberry pi3-64 image on my PC, but this image <br>=C2=A0is not able to boot =
on my raspberrypi3.<br><br></div><div>So, I try to build raspberry pi3(aarc=
h32) image, and this image is <br></div><div>=C2=A0able to boot on my raspb=
errypi3.<br><br></div><div>Next try, I will try build=C2=A0 linux-kernel on=
ly with normal make, and install<br></div><div>over aarch32 image, so boot =
is good!.<br></div><div>I build below refference URL<br>=C2=A0&quot;<a href=
=3D"https://devsidestory.com/build-a-64-bit-kernel-for-your-raspberry-pi-3/=
" target=3D"_blank">https://devsidestory.com/<wbr>build-a-64-bit-kernel-for=
-<wbr>your-raspberry-pi-3/</a>&quot; <br><br></div><div>Why bitbake image(a=
arch64)=C2=A0 is not able to boot?? <br>(this boot stop at emergency screen=
) <br><br></div><div>#My enviorment is below ------------------------------=
------------------------------------<br></div><div>=C2=A0 build PC : Ubuntu=
 16.04 LTS<br></div><div>=C2=A0 yocto and linaro and openembedded version i=
s reffer to the log.<br><br>#bblayer.con ----------------------------------=
-------------------------------------------------<br>POKY_BBLAYERS_CONF_VER=
SION =3D &quot;2&quot;<br>BBPATH =3D &quot;${TOPDIR}&quot;<br>BBFILES ?=3D =
&quot;&quot;<br>BBLAYERS ?=3D &quot; \<br>=C2=A0 /home/hideyuki/RPI3/linux4=
.9.26/poky/meta \<br>=C2=A0 /home/hideyuki/RPI3/linux4.9.26/poky/meta-poky =
\<br>=C2=A0 /home/hideyuki/RPI3/linux4.9.26/poky/meta-yocto-bsp \<br>=C2=A0=
 /home/hideyuki/RPI3/linux4.9.26/meta-openembedded/meta-oe \<br>=C2=A0 /hom=
e/hideyuki/RPI3/linux4.9.26/meta-openembedded/meta-multimedia \<br>=C2=A0 /=
home/hideyuki/RPI3/linux4.9.26/meta-linaro/meta-linaro-toolchain \<br>=C2=
=A0 /home/hideyuki/RPI3/linux4.9.26/meta-raspberrypi \<br>=C2=A0 &quot;<br>=
BBLAYERS_NON_REMOVABLE ?=3D &quot; \<br>=C2=A0 /home/hideyuki/Adaptive/RPI3=
/linux4.9.26/poky/meta \<br>=C2=A0 /home/hideyuki/Adaptive/RPI3/linux4.9.26=
/poky/meta-yocto \<br><br>#layer.conf -------------------------------------=
-------------------------------------------------<br>#&quot;my added&quot; =
comment is only added on orininal local.conf which is<br># created by &quot=
;source poky/oe-init-build-env<br>MACHINE ?=3D &quot;raspberrypi3-64&quot;=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #my added<br>BB_NUMBER_=
THREADS ?=3D &quot;${@oe.utils.cpu_count()}&quot;=C2=A0=C2=A0 #my added<br>=
PARALLEL_MAKE ?=3D &quot;-j ${@oe.utils.cpu_count()}&quot;=C2=A0=C2=A0=C2=
=A0 #my added<br>MACHINE ??=3D &quot;qemux86&quot;<br>DISTRO ?=3D &quot;pok=
y&quot;<br>PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;<br>EXTRA_IMAGE_FEAT=
URES ?=3D &quot;debug-tweaks&quot;<br>USER_CLASSES ?=3D &quot;buildstats im=
age-mklibs image-prelink&quot;<br>PATCHRESOLVE =3D &quot;noop&quot;<br>USER=
_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&quot;<br>PATCHRES=
OLVE =3D &quot;noop&quot;<br>BB_DISKMON_DIRS =3D &quot;\<br>=C2=A0=C2=A0=C2=
=A0 STOPTASKS,${TMPDIR},1G,100K \<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,${DL_DIR}=
,1G,100K \<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,${SSTATE_DIR},1G,100K \<br>=C2=
=A0=C2=A0=C2=A0 STOPTASKS,/tmp,100M,100K \<br>=C2=A0=C2=A0=C2=A0 ABORT,${TM=
PDIR},100M,1K \<br>=C2=A0=C2=A0=C2=A0 ABORT,${DL_DIR},100M,1K \<br>=C2=A0=
=C2=A0=C2=A0 ABORT,${SSTATE_DIR},100M,1K \<br>=C2=A0=C2=A0=C2=A0 ABORT,/tmp=
,10M,1K&quot;<br>PACKAGECONFIG_append_pn-qemu-native =3D &quot; sdl&quot;<b=
r>PACKAGECONFIG_append_pn-nativesdk-qemu =3D &quot; sdl&quot;<br>CONF_VERSI=
ON =3D &quot;1&quot;<br>EXTRA_IMAGE_FEATURES +=3D &quot; ssh-server-openssh=
 &quot;=C2=A0=C2=A0 #my added<br>export GNU_MIRROR=3D&quot;<a href=3D"http:=
//ftp.gnu.org/gnu">http://ftp.gnu.org/gnu</a>&quot;=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 #my added<br>CONNECTIVITY_CHECK_URIS =3D &quot;&quot;=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #my added<br><br>#bitbake log (top onl=
y) ----------------------------------------------------------------------<b=
r>NOTE: Resolving any missing task queue dependencies<br><br>Build Configur=
ation:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.=
34.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;universa=
l&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;a=
arch64-poky-linux&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;raspberrypi3-64&quot;<br>DISTRO=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;=
<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;2.3&quot;<br>TUNE_FEATURES=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;aarch64&quot;<br>TARGET_FPU=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br>meta=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-poky=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto-bsp=C2=A0=
=C2=A0=C2=A0 =3D &quot;master:381897c64069ea43d595380a3ae913bcc79cf7e1&quot=
;<br>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <b=
r>meta-multimedia=C2=A0=C2=A0 =3D &quot;master:2cdea6c5bb09aa90184c17c9157f=
4fed0e10b3c2&quot;<br>meta-linaro-toolchain =3D &quot;master:fe7980c13fafd2=
6ba207aa014402eeccfc7ae181&quot;<br>meta-raspberrypi=C2=A0 =3D &quot;master=
:8527a396d38aec7776182caca8b9a237e03c3965&quot;<br><br></div><div>Best rega=
rds,<br></div><div>hideyuki.<br></div></div>

--001a113e2598a8d558054fcae922--

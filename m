Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD57CE009C8; Sun, 26 Jul 2015 05:02:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.138.91.246 listed in list.dnswl.org]
Received: from nm24-vm5.bullet.mail.ne1.yahoo.com
	(nm24-vm5.bullet.mail.ne1.yahoo.com [98.138.91.246])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EAC3E008D7
	for <yocto@yoctoproject.org>; Sun, 26 Jul 2015 05:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1437912117; bh=GpbztMxtW95MgpjeeF+41+9tgwJhsPGHIbzvQp3iOJ0=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=Kq6NjVvv2tdtOIgcCmq5QGjga4jOP6wH+/Rrp3HZIGICI6fBLxj5TAkKXuylHYjHN7Q3YCj9MK0t7vw/JUx/QtB8Mpa3avK2JvV7qkbqu4pPYC1l7e4iSAoQIGFbRvZUQFZQd/XbaRvPL57YMAix6o4LT6M4Y0+ylBWgrauHsY/QwyU7xFQAt+m69yJyDC3FalofV2TkkmqkjzQz9rVtde7+X1dt2PqScAGmLGtigoaQGsMPUecMhdDLMJbrUbGiQqHC+W2Uh2W+cymkEz6N3jbC/XcgTLL/MBKzLOrZ9LIRJehXOFeEK2YEXVIz3LfNE1MIFNbD0JeozhT1A7cJCA==
Received: from [98.138.226.176] by nm24.bullet.mail.ne1.yahoo.com with NNFMP;
	26 Jul 2015 12:01:57 -0000
Received: from [98.138.89.197] by tm11.bullet.mail.ne1.yahoo.com with NNFMP;
	26 Jul 2015 12:01:57 -0000
Received: from [127.0.0.1] by omp1055.mail.ne1.yahoo.com with NNFMP;
	26 Jul 2015 12:01:57 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 97684.41975.bm@omp1055.mail.ne1.yahoo.com
X-YMail-OSG: OrJATRcVM1lfsshuSBRCrUtFgHXXSllSrZIgrIYfOalPXNOONRlbzCGC4_XYka0
	rqe8TEYceREV6e2mwT6_S_.p_00I3NoBeVY4FEgx52BLJaQYJfqSNdwYCi0Q5q2VfIeeW2dUefF0
	QcAISrWl.BAmi6XqZXc2OEuCObKxBilq5mi6YJeCF.I93mIrhAK7aPB8ibdO.aJpyM9cs8ADlhnA
	UULbvPlGcqr.JLUhcCUg7mCCtvwfproNtQIwvLWfcMvwRGJV2cHs6Xia.WE.w.WuEb8oQvwW2sZE
	C.VvPoJPQ.kVWbsrXcz3dpP_CMpy_lhhae52hT5xzGumfd15KokRpmgpGjGGTUqKu8o8wfQJ89aT
	zxH4m16uzZpuiodpMDuDd15uRM7oiwwSYZvScGe0h5oX6WeHHFoSNGCdik_l_G5F8N9WU7dxsUNp
	GcmRBSay5QErxGAMFeQYh4gpp1xEq5xDn4EvdNIMDcGEwMgRzugWj.HhZ8KO2G_PMsRHNYS6jggZ
	iTyBx86ZeQAw9goxnwzoEB_6A0h3e9Ao-
Received: by 98.138.101.162; Sun, 26 Jul 2015 12:01:56 +0000 
Date: Sun, 26 Jul 2015 12:01:11 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1226509950.2472991.1437912071100.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: fido LICENSE error opencv
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 26 Jul 2015 12:02:02 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2472990_1106724700.1437912071097"

------=_Part_2472990_1106724700.1437912071097
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all
When I previously created opencv in dylan & dora builds I used the followin=
g in my local.conf

LICENSE_FLAGS_WHITELIST =3D "commercial_libmad commercial_mpeg2dec commerci=
al_libav commercial_ffmpeg "=20

With fido the following error is occurring when I add opencv opencv-samples
IMAGE_INSTALL items.

ERROR: Nothing PROVIDES 'x264' (but /home/vidal/wkg/yocto/RaspberryPi2/poky=
/meta/recipes-multimedia/libav/libav_9.18.bb DEPENDS on or otherwise requir=
es it)
ERROR: x264 was skipped: because it has a restricted license not whiteliste=
d in LICENSE_FLAGS_WHITELIST
NOTE: Runtime target 'opencv-samples' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['opencv-samples', 'opencv', '=
libav', 'x264']
ERROR: Required build target 'core-image-sato' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-sato', 'opencv-sa=
mples', 'opencv', 'libav', 'x264']

This is the Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "1.27.1"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "x86_64-linux=
"
NATIVELSBSTRING=C2=A0=C2=A0 =3D "Ubuntu-12.04"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm-poky-linux-gn=
ueabi"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "ra=
spberrypi2"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D "1.8+snapshot-20150725"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm armv7a vfp thumb neon callco=
nvention-hard vfpv4 cortexa7"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "vfp-vfpv4-neon"
meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=20
meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "fido:0f8d89ce66cfffccc9911d6c61470a58=
5173b79d"
meta-raspberrypi=C2=A0 =3D "fido:7457bf182c8fd550ec877ecd786a3edd16e65495"
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "fi=
do:0f8d89ce66cfffccc9911d6c61470a585173b79d"

Is there something else that I must provide for fido?

Thanks in advance.
=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_2472990_1106724700.1437912071097
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1437910813245_2887"><span=
>Hello all<br class=3D"">When I previously created opencv in dylan &amp; do=
ra builds I used the following in my local.conf<br class=3D""><br class=3D"=
">LICENSE_FLAGS_WHITELIST =3D "commercial_libmad commercial_mpeg2dec commer=
cial_libav commercial_ffmpeg " <br class=3D""><br class=3D"">With fido the =
following error is occurring when I add opencv opencv-samples<br class=3D""=
>IMAGE_INSTALL items.<br class=3D""><br class=3D"">ERROR: Nothing PROVIDES =
'x264' (but /home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-multimedia=
/libav/libav_9.18.bb DEPENDS on or otherwise requires it)<br class=3D"">ERR=
OR: x264 was skipped: because it has a restricted license not whitelisted i=
n LICENSE_FLAGS_WHITELIST<br class=3D"">NOTE: Runtime target 'opencv-sample=
s' is unbuildable, removing...<br class=3D"">Missing or unbuildable depende=
ncy chain was: ['opencv-samples', 'opencv', 'libav', 'x264']<br class=3D"">=
ERROR: Required build target 'core-image-sato' has no buildable providers.<=
br class=3D"">Missing or unbuildable dependency chain was: ['core-image-sat=
o', 'opencv-samples', 'opencv', 'libav', 'x264']<br class=3D""><br class=3D=
"">This is the Build Configuration:<br class=3D"">BB_VERSION&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.27.1"<br class=3D"">BUILD_SYS&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "x86_64-linux"<br class=3D"">NATI=
VELSBSTRING&nbsp;&nbsp; =3D "Ubuntu-12.04"<br class=3D"">TARGET_SYS&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm-poky-linux-gnueabi"<br class=3D=
"">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"raspberrypi2"<br class=3D"">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; =3D "poky"<br class=3D"">DISTRO_VERSION&nbsp;&nb=
sp;&nbsp; =3D "1.8+snapshot-20150725"<br class=3D"">TUNE_FEATURES&nbsp;&nbs=
p;&nbsp;&nbsp; =3D "arm armv7a vfp thumb neon callconvention-hard vfpv4 cor=
texa7"<br class=3D"">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "vfp-vfpv4-neon"<br class=3D"">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br class=3D"">meta-yocto&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br class=3D"">meta-yocto-bsp&nbsp;&nbs=
p;&nbsp; =3D "fido:0f8d89ce66cfffccc9911d6c61470a585173b79d"<br class=3D"">=
meta-raspberrypi&nbsp; =3D "fido:7457bf182c8fd550ec877ecd786a3edd16e65495"<=
br class=3D"">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; =3D "fido:0f8d89ce66cfffccc9911d6c61470a585173b79d"<br class=3D""><b=
r class=3D"">Is there something else that I must provide for fido?<br class=
=3D""><br class=3D"">Thanks in advance.<br class=3D""></span></div><div>&nb=
sp;</div><div><div>Edward Vidal Jr.<br>e-mail develone@sbcglobal.net<br>915=
-595-1613</div></div></div></body></html>

------=_Part_2472990_1106724700.1437912071097--

Return-Path: <anayet.eu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCDBCE00C97; Thu, 27 Oct 2016 04:35:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anayet.eu[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.178 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f178.google.com (mail-ua0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D0FEE00C7A
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 04:35:40 -0700 (PDT)
Received: by mail-ua0-f178.google.com with SMTP id 51so8306712uai.1
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 04:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZQieGTEAaOJ38rdELM86F5Qckw4ejKky7F/oVVXWsIM=;
	b=lvLfTd6acDL+2OJ7r3YPEoUI1uSHwTSRX1+VRh/D33O3qM0cyOFOP6XrzI4pnLmgeN
	ku0boncRww5aXnDAcLdyOKR2y9QN0eqG7JjdAYnQlZqRGw/hfLxcqYrjtWqpciq1p0aJ
	wJxOXkCpDvA4PSdL8lHya/G08GT7oYSx7ypgn4ZOfU3Li5gcG2klsIP82e3x2Y6E38+v
	RXpeTTIBcb2z8KPch2wlmAta61tJyWdY7FzQwDq+zdBTnYD8xaKMFLEf3/+JexzTPyX1
	uGRO98Lm+OkDBUZYCKDPasXci24+u+s4clpi9g/ZndpmRPSvFQRPk7VB/sVvHEXe36AU
	Q8ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZQieGTEAaOJ38rdELM86F5Qckw4ejKky7F/oVVXWsIM=;
	b=h/qFkZkSMkpT6+NZuUO1nOkkVmcXfQGxeS3nCjoGdDkbzbppXPBWnVwXroOEsZZBlw
	tsuVvhTK9MQqQ3aLg6c03DLcuY1PrC4umhZNaYLoAyXWInQdxyAQ6OMWFDJGLLSutJDa
	2yfYO6gODNi1/MWXKXegPgpYXW96wPP5968KQ4iGHENhDLrlGx/KZ6DiUDGVf+ZjiI0x
	8WvMCe/ZNs1Mx5wFTia2Z18PJ/meGhiQHfjlzzY0b2m1aTEOKtPtTBdifzhboqAkcDtO
	uBNyD5DnqYz+C9IC0xtmXcbwNHS+xWiTQf/cEMRTSWUcynNUqZx4OSRMrnZQ15Eo3CqO
	PigA==
X-Gm-Message-State: ABUngvezWxqfGEUlc/Lyq6KadM6IjrFDw0009bgA7vxAHPccpEBCjFP2r8b055JPkmNxrtzK5ch1SxfWlHjOTQ==
X-Received: by 10.159.32.8 with SMTP id 8mr5347755uam.102.1477568139043; Thu,
	27 Oct 2016 04:35:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.45.15 with HTTP; Thu, 27 Oct 2016 04:35:38 -0700 (PDT)
From: "S. M. Anayetullah" <anayet.eu@gmail.com>
Date: Thu, 27 Oct 2016 13:35:38 +0200
Message-ID: <CALa0-x9ioSippF7nJiZv0o-bi_Y8Fr41ajSpradaCLSBZwHFuQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Raspberry pi (version 1) model B+
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
X-List-Received-Date: Thu, 27 Oct 2016 11:35:43 -0000
Content-Type: multipart/alternative; boundary=94eb2c04cabc0f2875053fd724ae

--94eb2c04cabc0f2875053fd724ae
Content-Type: text/plain; charset=UTF-8

Dear Experts,
I got the error while running bitbake rpi-basic-image

Loading cache...done.
Loaded 1361 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.30.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi"
DISTRO            = "poky"
DISTRO_VERSION    = "2.1.1"
TUNE_FEATURES     = "arm armv6  vfp arm1176jzfs callconvention-hard"
TARGET_FPU        = "hard"
meta
meta-poky
meta-yocto-bsp
meta-raspberrypi  = "krogoth:204b2bae4a5958735fdd19c63a69f4ed3780bba7"
meta-multimedia   = "fido:902964a4da26e46018d2a8d17dcdda1ac4627a39"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 2196 of 2202 (ID: 18,
/home/anayet/workspace/yocto_project/testProj/poky/meta-raspberrypi/recipes-core/images/
rpi-basic-image.bb, do_image_rpi_sdimg)
NOTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Started
Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: Python function set_image_size finished
| DEBUG: Executing shell function do_image_rpi_sdimg
| Creating filesystem with Boot partition 40960 KiB and RootFS 90112 KiB
| dd: failed to open
'/rpi-basic-image-raspberrypi-20161027061952.rootfs.rpi-sdimg': Permission
denied
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_image_rpi_sdimg (log file is located at
/home/anayet/workspace/yocto_project/testProj/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/1.0-r0/temp/log.do_image_rpi_sdimg.2917)
NOTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Failed
NOTE: Tasks Summary: Attempted 2198 tasks of which 2197 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/anayet/workspace/yocto_project/testProj/poky/meta-raspberrypi/recipes-core/images/
rpi-basic-image.bb, do_image_rpi_sdimg
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Can anyone tell me what could be the reason?

N.B- I just started learning Yocto.

--94eb2c04cabc0f2875053fd724ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Dear Experts, <br></div>I got the error whi=
le running bitbake rpi-basic-image<br><br>Loading cache...done.<br>Loaded 1=
361 entries from dependency cache.<br>NOTE: Resolving any missing task queu=
e dependencies<br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.30.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=C2=A0=C2=A0 =3D &quot;universal&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHI=
NE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;ra=
spberrypi&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0=
 =3D &quot;2.1.1&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;a=
rm armv6=C2=A0 vfp arm1176jzfs callconvention-hard&quot;<br>TARGET_FPU=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;hard&quot;<br>meta=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <b=
r>meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto-=
bsp=C2=A0=C2=A0=C2=A0 <br>meta-raspberrypi=C2=A0 =3D &quot;krogoth:204b2bae=
4a5958735fdd19c63a69f4ed3780bba7&quot;<br>meta-multimedia=C2=A0=C2=A0 =3D &=
quot;fido:902964a4da26e46018d2a8d17dcdda1ac4627a39&quot;<br><br>NOTE: Prepa=
ring RunQueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue=
 Tasks<br>NOTE: Running task 2196 of 2202 (ID: 18, /home/anayet/workspace/y=
octo_project/testProj/poky/meta-raspberrypi/recipes-core/images/<a href=3D"=
http://rpi-basic-image.bb">rpi-basic-image.bb</a>, do_image_rpi_sdimg)<br>N=
OTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Started<br>Log=
 data follows:<br>| DEBUG: Executing python function set_image_size<br>| DE=
BUG: Python function set_image_size finished<br>| DEBUG: Executing shell fu=
nction do_image_rpi_sdimg<br>| Creating filesystem with Boot partition 4096=
0 KiB and RootFS 90112 KiB<br>| dd: failed to open &#39;/rpi-basic-image-ra=
spberrypi-20161027061952.rootfs.rpi-sdimg&#39;: Permission denied<br>| WARN=
ING: exit code 1 from a shell command.<br>| ERROR: Function failed: do_imag=
e_rpi_sdimg (log file is located at /home/anayet/workspace/yocto_project/te=
stProj/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/1=
.0-r0/temp/log.do_image_rpi_sdimg.2917)<br>NOTE: recipe rpi-basic-image-1.0=
-r0: task do_image_rpi_sdimg: Failed<br>NOTE: Tasks Summary: Attempted 2198=
 tasks of which 2197 didn&#39;t need to be rerun and 1 failed.<br><br>Summa=
ry: 1 task failed:<br>=C2=A0 /home/anayet/workspace/yocto_project/testProj/=
poky/meta-raspberrypi/recipes-core/images/<a href=3D"http://rpi-basic-image=
.bb">rpi-basic-image.bb</a>, do_image_rpi_sdimg<br>Summary: There was 1 ERR=
OR message shown, returning a non-zero exit code.<br><br><br></div>Can anyo=
ne tell me what could be the reason? <br><br></div>N.B- I just started lear=
ning Yocto.=C2=A0 <br></div>

--94eb2c04cabc0f2875053fd724ae--

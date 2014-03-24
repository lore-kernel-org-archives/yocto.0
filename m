Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A620BE00BD0
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 14:51:19 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id ks9so6676366vcb.27
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 14:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=w66TxOSf78zjXHQC1YP050pHE7jobc/p0i6MhJctS+Q=;
	b=DzwKlEJJMDjeDrqOWAUYtTF6tA4qXF9Uw8/daqvhRMLSOvbvgN0PHESbqe/YcrChdz
	4T3zVvfKW9D7YNu+cnqB2X6LGTC3bMlfbLUpWJuXeHHOll3eZFIyUJ5mBJoxRG47gWo6
	hzComBwJ1J6NwbyrM4rlECtahv4/nFjIFmE+593meFW3fooRqZTuRhSTQpH71hYTsHP3
	BVB6YOP1jS1DyD6T5wDzcGmBnaRDraOKcxFSXWw/onVDW0ApdZOC0QutXklb16fO/ryn
	mivwgEgMu6un1BwSDOg6U6Z5d1TmEGHMKBMJ6orHKcLBofGCWURfio0W1+1yqhFvpyHT
	u1gw==
MIME-Version: 1.0
X-Received: by 10.58.133.15 with SMTP id oy15mr50585166veb.19.1395697878156;
	Mon, 24 Mar 2014 14:51:18 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Mon, 24 Mar 2014 14:51:18 -0700 (PDT)
Date: Mon, 24 Mar 2014 14:51:18 -0700
Message-ID: <CAA7h+Eq51KBH4j2hqsecAiVnLV27m1u02JpOUeEyScQXZo-akQ@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: wlan0 No lease, failing
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
X-List-Received-Date: Mon, 24 Mar 2014 21:51:19 -0000
Content-Type: multipart/alternative; boundary=047d7b6d9f823dcffb04f5613c9b

--047d7b6d9f823dcffb04f5613c9b
Content-Type: text/plain; charset=ISO-8859-1

Gumstix Overo

Build Configuration:
BB_VERSION = "1.20.0"
BUILD_SYS = "x86_64-linux"
NATIVELSBSTRING = "Ubuntu-13.10"
TARGET_SYS = "arm-poky-linux-gnueabi"
MACHINE = "overo"
DISTRO = "poky"
DISTRO_VERSION = "1.5.1"
TUNE_FEATURES = "armv7a vfp neon"
TARGET_FPU = "vfp-neon"
I have not been able to get any wireless device to connect. I have verified
on the Linaro build that all equipment works.

I get the following:

root@overo:~$ ifup wlan0
Successfully initialized wpa_supplicant
udhcpc (v1.21.1) started
Sending discover...
Sending discover...
Sending discover...
No lease, failing
root@overo:~$

--047d7b6d9f823dcffb04f5613c9b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Gumstix Overo=A0</div><div><br></div><div>Build Confi=
guration:<br>BB_VERSION        =3D &quot;1.20.0&quot;<br>BUILD_SYS         =
=3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING   =3D &quot;Ubuntu-13.10&qu=
ot;<br>
TARGET_SYS        =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE        =
   =3D &quot;overo&quot;<br>DISTRO            =3D &quot;poky&quot;<br>DISTR=
O_VERSION    =3D &quot;1.5.1&quot;<br>TUNE_FEATURES     =3D &quot;armv7a vf=
p neon&quot;<br>
TARGET_FPU        =3D &quot;vfp-neon&quot;<br></div><div>I have not been ab=
le to get any wireless device to connect. I have verified on the Linaro bui=
ld that all equipment works.</div><div><br></div><div>I get the following:<=
/div>
<div><br></div><div>root@overo:~$  ifup wlan0<br>Successfully initialized w=
pa_supplicant<br>udhcpc (v1.21.1) started<br>Sending discover...<br>Sending=
 discover...<br>Sending discover...<br>No lease, failing<br>root@overo:~$  =
<br>
</div></div>

--047d7b6d9f823dcffb04f5613c9b--

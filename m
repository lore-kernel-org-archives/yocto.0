Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FC0FE01488
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:00:12 -0700 (PDT)
Received: by mail-vb0-f45.google.com with SMTP id w15so1334545vbf.4
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type;
	bh=hy0S+UFh1zT7Nkx7EzEt1Lp62qUmoQVqrYFYK84Th3A=;
	b=0W9vyY9+zL4sRkez5igykQ8VRDevIyvr+NAMH2hPnteF02ixx2QTGG/2njHq+9BsR3
	nHFXnFe5g9FAUR8VPqCg1wSQ0iXdMFXWR2DBrSh+ZDa6bqUg89NNEzCHqumaiZEuxYMX
	0yvF6YXnELpQVwzsFsQTAisf+HFO7mCWaY0N1S+1Wy6RKW63tvorti17IKkvcW9XdLki
	ngFPkfgAe6tq8KrOr5243r8HdFnhRX0rWAk8AZdgtvF1YZEmwkngQIVSBY+MsLJBwp1C
	su/QOp1+0lEb53ssUKDL+XtlMCy53foG5oVCVMfC0176Kya+fqtVHSc2TgG22IqRXyt2
	b0yA==
MIME-Version: 1.0
X-Received: by 10.52.16.177 with SMTP id h17mr4432483vdd.109.1366210811428;
	Wed, 17 Apr 2013 08:00:11 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.88.177 with HTTP; Wed, 17 Apr 2013 08:00:11 -0700 (PDT)
Date: Wed, 17 Apr 2013 17:00:11 +0200
X-Google-Sender-Auth: SQSS-t2Rjs42koVnrdEST12IlHg
Message-ID: <CAFMfyzJJY0hFGXimgdVwzp8i58PnXPnAUyKH_bk9DU25FXVjiw@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: yocto@yoctoproject.org
Subject: Adding prebuilt binaries to /usr/bin on rootfs
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
X-List-Received-Date: Wed, 17 Apr 2013 15:00:12 -0000
Content-Type: multipart/alternative; boundary=bcaec50405801a83b504da8fbe0c

--bcaec50405801a83b504da8fbe0c
Content-Type: text/plain; charset=ISO-8859-1

Hi Guys,

I have few prebuilt binaries and I want to add them to the rootfs at the
build itself. So, I created a recipe... but I get an error .. Can you
please tell me what the error could be?

DESCRIPTION = "Skidata Tools"

LICENSE = "CLOSED"

SRC_URI = "file:///home/damarla/yocto/skidata-tools.zip"

SRCREV ?= "${AUTOREV}"


SRC_URI[md5sum] = "fda9d9034bfb64deab57513472279a81"
SRC_URI[sha256sum] =
"8c917892677c44784a99b29c4302cfec257cd422ccc06c3d90432c4a74960af8"

do_install () {
        install -d ${D}/usr/bin
        pwd
        install -m 0755
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/skidata-tools/TCPDownload
${D}/usr/bin/
        install -m 0755
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/skidata-tools/USBDownload
${D}/usr/bin/USBDownload
        install -m 0755
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/skidata-tools/devsrv
${D}/usr/bin/devsrv
        install -m 0755
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/skidata-tools/i2c-test
${D}/usr/bin/i2c-test
        install -m 0755
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/skidata-tools/sdusb-cmd
${D}/usr/bin/sdusb-cmd
        install -m 0755
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/skidata-tools/setty
${D}/usr/bin/setty
}

FILES_TCPDownload = "${D}/usr/bin/TCPDownload"
FILES_USBDownload = "${D}/usr/bin/USBDownload"
FILES_devsrv = "${D}/usr/bin/devsrv"
FILES_i2c-test = "${D}/usr/bin/i2c-test"
FILES_sdusb-cmd = "${D}/usr/bin/sdusb-cmd"
FILES_setty = "${D}/usr/bin/setty"

Help is greatly appreciated!

Greets,
Satya

--bcaec50405801a83b504da8fbe0c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div style>I have few prebuilt bina=
ries and I want to add them to the rootfs at the build itself. So, I create=
d a recipe... but I get an error .. Can you please tell me what the error c=
ould be?</div>
<div style><br></div><div style><div>DESCRIPTION =3D &quot;Skidata Tools&qu=
ot;</div><div><br></div><div>LICENSE =3D &quot;CLOSED&quot;</div><div><br><=
/div><div>SRC_URI =3D &quot;file:///home/damarla/yocto/skidata-tools.zip&qu=
ot;</div>
<div><br></div><div>SRCREV ?=3D &quot;${AUTOREV}&quot;</div><div><br></div>=
<div><br></div><div>SRC_URI[md5sum] =3D &quot;fda9d9034bfb64deab57513472279=
a81&quot;</div><div>SRC_URI[sha256sum] =3D &quot;8c917892677c44784a99b29c43=
02cfec257cd422ccc06c3d90432c4a74960af8&quot;</div>
<div><br></div><div>do_install () {</div><div>=A0 =A0 =A0 =A0 install -d ${=
D}/usr/bin</div><div>=A0 =A0 =A0 =A0 pwd</div><div>=A0 =A0 =A0 =A0 install =
-m 0755 /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-=
vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/skidata-tools/TCPDownload =
${D}/usr/bin/</div>
<div>=A0 =A0 =A0 =A0 install -m 0755 /home/damarla/yocto/poky/buildSkidataH=
armony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-=
r0/skidata-tools/USBDownload ${D}/usr/bin/USBDownload</div><div>=A0 =A0 =A0=
 =A0 install -m 0755 /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/=
cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/skidata-tools=
/devsrv ${D}/usr/bin/devsrv</div>
<div>=A0 =A0 =A0 =A0 install -m 0755 /home/damarla/yocto/poky/buildSkidataH=
armony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-=
r0/skidata-tools/i2c-test ${D}/usr/bin/i2c-test</div><div>=A0 =A0 =A0 =A0 i=
nstall -m 0755 /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortex=
a9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/skidata-tools/sdusb=
-cmd ${D}/usr/bin/sdusb-cmd</div>
<div>=A0 =A0 =A0 =A0 install -m 0755 /home/damarla/yocto/poky/buildSkidataH=
armony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-=
r0/skidata-tools/setty ${D}/usr/bin/setty</div><div>}</div><div><br></div><=
div>
FILES_TCPDownload =3D &quot;${D}/usr/bin/TCPDownload&quot;</div><div>FILES_=
USBDownload =3D &quot;${D}/usr/bin/USBDownload&quot;</div><div>FILES_devsrv=
 =3D &quot;${D}/usr/bin/devsrv&quot;</div><div>FILES_i2c-test =3D &quot;${D=
}/usr/bin/i2c-test&quot;</div>
<div>FILES_sdusb-cmd =3D &quot;${D}/usr/bin/sdusb-cmd&quot;</div><div>FILES=
_setty =3D &quot;${D}/usr/bin/setty&quot;</div><div><br></div><div style>He=
lp is greatly appreciated!</div><div style><br></div><div style>Greets,</di=
v>
<div style>Satya</div></div></div>

--bcaec50405801a83b504da8fbe0c--

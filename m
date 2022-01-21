Return-Path: <winfried_mb2@xmsnet.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CBDFC433F5
	for <webhook@archiver.kernel.org>; Fri, 21 Jan 2022 19:06:51 +0000 (UTC)
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl
 [195.121.94.169])
 by mx.groups.io with SMTP id smtpd.web09.135.1642792004577091205
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jan 2022 11:06:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@xmsnet.nl header.s=xmsnet01 header.b=M2pIKp/a;
 spf=pass (domain: xmsnet.nl, ip: 195.121.94.169,
 mailfrom: winfried_mb2@xmsnet.nl)
X-KPN-MessageId: 40365fee-7aed-11ec-bb40-005056abad63
Received: from mta.kpnmail.nl (unknown [10.31.162.62])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 40365fee-7aed-11ec-bb40-005056abad63;
	Fri, 21 Jan 2022 20:06:34 +0100 (CET)
Received: from mtaoutbound.kpnmail.nl (unknown [10.128.138.61])
	by mta.kpnmail.nl (Halon) with ESMTP
	id 444c83fe-7aed-11ec-9c54-005056ab0606;
	Fri, 21 Jan 2022 20:06:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xmsnet.nl; s=xmsnet01;
	h=content-type:mime-version:subject:message-id:to:from:date;
	bh=j0EwbCJ/q754IPbGVoQuCqeWchqp8HJPZzggNcrALiM=;
	b=M2pIKp/azr3YjJ9D/r3UbILkfbzsr3Rz+iwo6T5Lv8oybv4hHqCS+WLa/PH7nWinUozbaI+W+TSK/
	 N3XdPIlZR4bKXwNbfKe+NDljI6fNmPRAtJdalawRh066DkndGHuZw42vFwFYSkR4NJK4J4B74M3l3g
	 A4/016EgWhFgidAg=
X-KPN-MID: 33|jVexgdU0RAfW4w947RFI2Fc9gRhTkWp5OrVX1S+S8dmHCxAydIZs5eTmtiOUFCD
 ff9MbEeVK7LZPX6yKHv2TKQ1qz1zIj4GKVIXn7NhDOAw=
X-CMASSUN: 33|Do5fGC6mFipMiuQcftJhKGzE16BSYN8FP1j6o9BpaUVdKdZCVTfL33Z/b0KoR5H
 oy7U03iBj7YdDb++10Tw/4xMK7r3X08xYsZdFVWx+SQw=
X-KPN-VerifiedSender: Yes
Received: from cpxoxapps-mh102 (unknown [10.128.138.80])
	by mtaoutbound.kpnmail.nl (Halon) with ESMTPSA
	id 442a3e11-7aed-11ec-be57-005056ab135f;
	Fri, 21 Jan 2022 20:06:41 +0100 (CET)
Date: Fri, 21 Jan 2022 20:06:41 +0100 (CET)
From: Winfried <winfried_mb2@xmsnet.nl>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <195584031.4249850.1642792001108@kpc.webmail.kpnmail.nl>
Subject: non-existent task do_package_write_rpm error
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_Part_4249849_1894156042.1642792001104"
X-Priority: 3
Importance: Normal
X-Originating-IP: 217.166.50.194
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jan 2022 19:06:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55940

------=_Part_4249849_1894156042.1642792001104
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

I'm writing a recipe for package hardening-check http://deb.debian.org/debian/pool/main/h/hardening-wrapper/ .
This package builds with only a simple Makefile (that has no install target). The recipe only installs a script hardening-check in /usr/bin.

I would like to include this script in our SDK.
The recipe itself builds fine (bitbake hardening-check-native).

But when I add hardening-check-native to IMAGE_INSTALL in my image the build fails with:

Task do_populate_sdk in myimage.bb rdepends upon non-existent task do_package_write_rpm in virtual:native:(...)/recipes-devtools/hardening-check/hardening-check_2.6.bb

Same error when I append the package to TOOLCHAIN_HOST_TASK instead.

Any idea how to solve this? Do I need to inherit my recipe from something?
Recipe included below.

Thanks in advance for the help!

regards,
Winfried


SUMMARY = "Script to check an executable for certain security weaknesses."
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://debian/copyright;md5=06ff97d53f05a9b8ce2a416b30f496b9"

SRC_URI = "http://ftp.debian.org/debian/pool/main/h/hardening-wrapper/hardening-wrapper_${PV}.tar.xz \
          file://0001-perl_regex.patch \
         "
SRC_URI[md5sum] = "47c93c05b4d0199be8df0d35dbd68192"
SRC_URI[sha256sum] = "c5fc46439646d0929a0605e4f3db67e57eefbbf5ceec5a2888440dbdf4450224"

RDEPENDS_${PN} = "perl"

S = "${WORKDIR}/hardening-wrapper"

do_patch () {
   cd ${S}
   patch -p1 -u -i ${WORKDIR}/0001-perl_regex.patch
}

do_configure () {
       # Specify any needed configure commands here
       :
}

do_compile () {
       export DEB_HOST_ARCH=`uname -m`
       export DEB_HOST_ARCH_OS=`uname -s`
       oe_runmake
}

do_install () {
   install -d ${D}/${bindir}
   install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir}
}

BBCLASSEXTEND = "native nativesdk"

------=_Part_4249849_1894156042.1642792001104
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html>
 <head>=20
  <meta charset=3D"UTF-8">=20
 </head>
 <body>
  <div style=3D"" class=3D"default-style">
   Hi,
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   I'm writing a recipe for package <a href=3D"http://deb.debian.org/debian=
/pool/main/h/hardening-wrapper/">hardening-check</a> .
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   This package builds with only a simple Makefile (that has no install tar=
get). The recipe only installs a script hardening-check in /usr/bin.
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   I would like to include this script in our SDK.
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   The recipe itself builds fine (bitbake hardening-check-native).
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   But when I add hardening-check-native to IMAGE_INSTALL in my image the b=
uild fails with:
  </div>
  <pre class=3D"default-style"><span style=3D"font-family: monospace;"><spa=
n style=3D"color: rgb(0, 0, 0);"><span style=3D"background-color: rgb(255, =
255, 255);">Task do_populate_sdk in myimage.bb rdepends upon non-existent t=
ask do_package_write_rpm i</span>n virtual:native:(...)/recipes-devtools/ha=
rdening-check/hardening-check_2.6.bb</span><br></span></pre>
  <div style=3D"" class=3D"default-style">
   Same error when I append the package to <span style=3D"font-family: mono=
space;"><span style=3D"color: #000000; background-color: #ffffff;">TOOLCHAI=
N_HOST_TASK <span style=3D"font-family: -apple-system, BlinkMacSystemFont, =
helvetica, sans-serif;">instead</span></span></span>.
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   Any idea how to solve this? Do I need to inherit my recipe from somethin=
g?
  </div>
  <div style=3D"" class=3D"default-style">
   Recipe included below.
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   Thanks in advance for the help!
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   regards,
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   Winfried
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   <br>
  </div>
  <div style=3D"" class=3D"default-style">
   <span style=3D"font-family: monospace;"><span style=3D"color: #000000; b=
ackground-color: #ffffff;">SUMMARY =3D "Script to check an executable for c=
ertain security weaknesses." </span><br>LICENSE =3D "GPLv2" <br>LIC_FILES_C=
HKSUM =3D "file://debian/copyright;md5=3D06ff97d53f05a9b8ce2a416b30f496b9" =
<br><br>SRC_URI =3D "http://ftp.debian.org/debian/pool/main/h/hardening-wra=
pper/hardening-wrapper_${PV}.tar.xz \ <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;file://0001-perl_regex.patch \ <br>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" <br>SRC_URI[md5sum] =3D "47c93c0=
5b4d0199be8df0d35dbd68192" <br>SRC_URI[sha256sum] =3D "c5fc46439646d0929a06=
05e4f3db67e57eefbbf5ceec5a2888440dbdf4450224" <br><br>RDEPENDS_${PN} =3D "p=
erl" <br><br>S =3D "${WORKDIR}/hardening-wrapper"<br><br>do_patch () { <br>=
&nbsp;&nbsp;&nbsp;cd ${S} <br>&nbsp;&nbsp;&nbsp;patch -p1 -u -i ${WORKDIR}/=
0001-perl_regex.patch <br>} <br><br>do_configure () { <br>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;# Specify any needed configure commands here <br>&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <br>} <br><br>do_compile () <spa=
n style=3D"color: #000000; background-color: #18b2b2;">{</span> <br>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;export DEB_HOST_ARCH=3D`uname -m` <br>&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;export DEB_HOST_ARCH_OS=3D`uname -s=
` <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oe_runmake <br><span style=
=3D"color: #000000; background-color: #18b2b2;">}</span> <br><br>do_install=
 () { <br>&nbsp;&nbsp;&nbsp;install -d ${D}/${bindir} <br>&nbsp;&nbsp;&nbsp=
;install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir} <br>} <br><b=
r>BBCLASSEXTEND =3D "native nativesdk"<br></span>
  </div>
 </body>
</html>
------=_Part_4249849_1894156042.1642792001104--


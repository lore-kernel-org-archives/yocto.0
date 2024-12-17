Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1515CE7717F
	for <webhook@archiver.kernel.org>; Tue, 17 Dec 2024 12:04:38 +0000 (UTC)
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [81.169.146.165])
 by mx.groups.io with SMTP id smtpd.web11.79968.1734437075679921935
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2024 04:04:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=b+e//aZs;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=cBQq1CvT;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.165, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1734437074; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=A/ve56qFN51mceWvtlb2g0Gyh5mArVECmRS25o6Wczaaj+fOYpSsPfepH2mU87hiWV
    4eA4rURxvn0CAPfS0LNncLL0qAHz/ycJke78ygjMGe0Ry+gwtCkxqVQV0Y4S9aGmD9ki
    50+ydvomHef7yrWbyfjQtMzazqqFBA8MS/IrF14iqrBs7KZBi/ZqvlLpqAGtSnlf8j8e
    q68LH5gXVdKw3OjDXdL4SF1NQXa2o8b4n1bI7Im4kTYX3tuyBmLci8OxeYJ6zTNMVyR6
    WIRihEPhdO9RnJrwnXjjCAssjYKoORm6JSaIIV2Ye14o5tNhFtiEfYoJsMl2xniJuL3P
    j9rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1734437074;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=BHtCJmVpznlI2ErK3NczLXDWlnqz+baKuSIzkGvrF4U=;
    b=BMoELMpSWd6jmY0ZJ9Tr5geXA19DpXnx/1yEVZEWFR/6D2m0vU55uhjGqdkrUeorrR
    cCbbH0D1uBuCLzo5zqH+WCdRv0V/ZNgEXzEquk5Te2eHJltr0+e9FEP8Bh2hRwEh3gxY
    +WcRwZq2mtd9SmnOTlaaqu4NWqAuneFeEuub6B4fD//ljg7CuAyLfrpUvPB8FI04JjFe
    00QJ+VN3gkbG3H5FQ18WEZU7zJFsVpaVbRsHx0hs3J7k8nDy/LJ/hExx8oTq6TyHMLCE
    RS8TWnJpuNGYWFrJgyKW7T2FKWiiEd3bktAikm7sBkMgfnyP8kxDZ+S+mIBWxoqr5pxQ
    t+Rg==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1734437074;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=BHtCJmVpznlI2ErK3NczLXDWlnqz+baKuSIzkGvrF4U=;
    b=b+e//aZshFWdo8ZWRbFKNdjXTuoFPdgR+sKop28BxfPVuzncxFa0icdzelX/w9ajxW
    Dynum+yYasoWc0yGfU0+F7BzvZU9UCdrr6IdnfOKYZEeNoYiKVLgyIjVNKGLanX1F+N7
    uIJVKPtQmWklm7XJwSqrH3nvYUHFa4TQTLyUCH+MZk0+TBczAGYQF495kdeNhhE5YTpK
    0WwjrFqtKJmL81NEFiETSPICkHG93yke/ylkqLZSg/4yNPGpnIbAjOE84UWEYKpP+/nn
    QHUCTruUHLlI+e9LMvy2vfTghh35DwO1vhVs+ZwjqvuNF4YAQKRUbMlYqiGw0dkAprd/
    v6FA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1734437074;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=BHtCJmVpznlI2ErK3NczLXDWlnqz+baKuSIzkGvrF4U=;
    b=cBQq1CvTM94BYcKFAed/mLTS5DHy5ZS0ELopSbWNc1kd1ktYmjqZ9KYvscdq+BlM43
    4LbPPBE242m7R0SWWmAg==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7T1oMG+TLVuVbxkCQk4="
Received: from ox-live-app301.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.2.15 AUTH)
    with ESMTPSA id j3b82b0BHC4Y4Qm
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate)
    for <yocto@lists.yoctoproject.org>;
    Tue, 17 Dec 2024 13:04:34 +0100 (CET)
Date: Tue, 17 Dec 2024 13:04:34 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <157388946.2878646.1734437074279@webmail.strato.de>
Subject: Building wmbusmeters with Yocto
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2878645_509305027.1734437074277"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev70
X-Originating-Client: open-xchange-appsuite
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 12:04:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64457

------=_Part_2878645_509305027.1734437074277
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I=C2=B4m a Yocto newbie and I try to build wmbusmeters for my Yocto project=
 (https://github.com/wmbusmeters/wmbusmeters/tree/1.18.0). I added a recipe=
 to a custom meta-layer and add the missing rtlsdr library as a second reci=
pe to this meta-layer. For building wmbusmeters I use this bb file:

inherit autotools

SUMMARY =3D "wmbusmeters integration"
HOMEPAGE =3D "https://github.com/wmbusmeters/wmbusmeters"

LICENSE =3D "GPLv3"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-3.0;md5=3Dc79ff39f19=
dfec6d293b95dea7b07891"

# Use version 1.18.0
SRC_URI =3D "git://github.com/wmbusmeters/wmbusmeters;protocol=3Dhttps;bran=
ch=3Dmaster"
SRC_URI[sha256sum] =3D "57ecd94793ba5c985dc412876253a7b0d8a006f0c8e440f1b1f=
146d4c30da2b7"
SRCREV =3D "2f2720d9d8e043304a366d11d933be9d535e17a5"

DEPENDS =3D "rtlsdr"
RDEPENDS_${PN} =3D "rtlsdr"
S =3D "${WORKDIR}/git"

But I get this error:

| checking for xmlFreeDoc in -lxml2... yes
| configure: creating build/tmp/work/aarch64-tdx-linux/wmbusmeters/0.1-r0/b=
uild/build/aarch64-tdx-linux-gnu/config.status
| config.status: error: cannot find input file: `/build/tmp/work/aarch64-td=
x-linux/wmbusmeters/0.1-r0/build/autoconf/spec.gmk.in'
| NOTE: The following config.log files may provide further information.
| NOTE: build/tmp/work/aarch64-tdx-linux/wmbusmeters/0.1-r0/build/config.lo=
g

But the "autoconf" directory is available in the git directory under "/tmp/=
work". Why is Yocto using the wrong path and where is my issue?

Thanks for helping me out!
------=_Part_2878645_509305027.1734437074277
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html>
 <head>=20
  <meta charset=3D"UTF-8">=20
 </head>
 <body>
  <div class=3D"default-style">=20
   <div class=3D"default-style">
    Hi,
   </div>=20
   <div class=3D"default-style">
    <br>I=C2=B4m a Yocto newbie and I try to build wmbusmeters for my Yocto=
 project (https://github.com/wmbusmeters/wmbusmeters/tree/1.18.0). I added =
a recipe to a custom meta-layer and add the missing rtlsdr library as a sec=
ond recipe to this meta-layer. For building wmbusmeters I use this bb file:
   </div>=20
   <div class=3D"default-style">
    <br>inherit autotools
   </div>=20
   <div class=3D"default-style">
    <br>SUMMARY =3D "wmbusmeters integration"
    <br>HOMEPAGE =3D "https://github.com/wmbusmeters/wmbusmeters"
   </div>=20
   <div class=3D"default-style">
    <br>LICENSE =3D "GPLv3"
    <br>LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-3.0;md5=3Dc7=
9ff39f19dfec6d293b95dea7b07891"
   </div>=20
   <div class=3D"default-style">
    <br># Use version 1.18.0
    <br>SRC_URI =3D "git://github.com/wmbusmeters/wmbusmeters;protocol=3Dht=
tps;branch=3Dmaster"
    <br>SRC_URI[sha256sum] =3D "57ecd94793ba5c985dc412876253a7b0d8a006f0c8e=
440f1b1f146d4c30da2b7"
    <br>SRCREV =3D "2f2720d9d8e043304a366d11d933be9d535e17a5"
   </div>=20
   <div class=3D"default-style">
    <br>DEPENDS =3D "rtlsdr"
    <br>RDEPENDS_${PN} =3D "rtlsdr"
    <br>S =3D "${WORKDIR}/git"
   </div>=20
   <div class=3D"default-style">
    <br>But I get this error:
   </div>=20
   <div class=3D"default-style">
    <br>| checking for xmlFreeDoc in -lxml2... yes
    <br>| configure: creating build/tmp/work/aarch64-tdx-linux/wmbusmeters/=
0.1-r0/build/build/aarch64-tdx-linux-gnu/config.status
    <br>| config.status: error: cannot find input file: `/build/tmp/work/aa=
rch64-tdx-linux/wmbusmeters/0.1-r0/build/autoconf/spec.gmk.in'
    <br>| NOTE: The following config.log files may provide further informat=
ion.
    <br>| NOTE: build/tmp/work/aarch64-tdx-linux/wmbusmeters/0.1-r0/build/c=
onfig.log
   </div>=20
   <div class=3D"default-style">
    <br>But the "autoconf" directory is available in the git directory unde=
r "/tmp/work". Why is Yocto using the wrong path and where is my issue?
   </div>=20
   <div class=3D"default-style">
    <br>Thanks for helping me out!
   </div>=20
  </div>=20
 </body>
</html>
------=_Part_2878645_509305027.1734437074277--


Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B017C28B28
	for <webhook@archiver.kernel.org>; Wed, 12 Mar 2025 15:43:01 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.219])
 by mx.groups.io with SMTP id smtpd.web11.40652.1741794177469912945
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Mar 2025 08:42:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=Nw+iMo5V;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=Tg9L+cHr;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.219, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1741794175; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=C2pQe2W1gNxn/5dh5AYZSpnY1xxDFNoyG2EJopk2jFGVDhODzo17aobpQJFNmjnFUF
    tud1IEwURw9rS7xjcpjzinublQe12czOWOWi46jwgtcCi+gdW2TN/SLzC7d9qrVaaJgy
    1pDLK8qZBb2d2gNYBHyty4+V9jUaNWJ/w4Mkuh7XlDOCyzMY6sbT4M4aRiZUIzf0CF0s
    H9HceoTIVLoTeoWMqE05I6L877oAvBNLqrt7CSnwO1rpPdpNsLpibvYIpoxQxXusNAG+
    SI1lgE0+IpAZlo/LkHWRd0IS/wwU4tJE9vOw5Y5+J6SZsC4POrkIZrqKgpouE2PhrlbR
    mZcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1741794175;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=eW341CTch14adY8e3Pu1qwJfseNcTc0Bcae/s+d2TCU=;
    b=VZgrNX0RsXXeBrJ774ZFjQnsrm13tIUl6S+vWkalJUYHUaOSZZ5U+w1hxRBZ57Hh6D
    c+GDVpanXjwuB1dAUMA5bYVZXNNFX16PMR9ErgisEvyBi9d/mqAVMEm5FuZxXnRfsMqB
    ZNcmPlUp6ZyO3IMDAPQ2gr2+yR9gZ2DwkyRnoZGBzyfWr4Q9MhW0frCgVGgnUDMK7lzY
    oKVLAGqgEAH7M9tT+k1a4qH6YOGWMG8zqYCNhiFrAkBHFAyveOX9AA/yXCBO8SnjyJ2J
    uU17jJal25eNl+78iaS8tHkda89WfvgIXhngN3w6af4/LcP+0SdFCZ9uTjHpleNNJlVE
    TGlA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1741794175;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=eW341CTch14adY8e3Pu1qwJfseNcTc0Bcae/s+d2TCU=;
    b=Nw+iMo5V36+i6TqeZjJc9UjIveG96k1JO47EMS1NvwhKgcD8p2BS/kYOirFtaBd1Xv
    QCnIsJ0sD++AP4fB5O6Ic4ZlmPKUc3nbQD87sd+idMG0pijRYlxqR8khbwBs/grxfIyG
    256BOZGrbi+TvRMeg6Tcj5qWU58g3wCEkfvNAIu9DkBjOURJ2wPSL98gBq+5utPUbLrG
    VGIUlt3oaS+cGJBKvwnBUl8nZfwyXm/EfQkB09nbrrmy57qySfteRONI/CPSdPHRnrnT
    A2wKnT5+ZWwQt1AOUl3mNRzHVncAzg4hVMZHxouRtHPbc8u+A1LRUhWuzhmSMH064Jca
    kt8g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1741794175;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=eW341CTch14adY8e3Pu1qwJfseNcTc0Bcae/s+d2TCU=;
    b=Tg9L+cHrtMVLsxPC14IaFTU0WQgdqFtK0Q7Ft+y51AJ0Lo/E+eim3E/kVqDuscoAuM
    jzN0qRRwmMl4KYg596Cw==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7T1oMG+TLVuVbxkCQk4="
Received: from ox-live-app305.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.3.0 AUTH)
    with ESMTPSA id j1bda812CFgtaR9
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate)
    for <yocto@lists.yoctoproject.org>;
    Wed, 12 Mar 2025 16:42:55 +0100 (CET)
Date: Wed, 12 Mar 2025 16:42:55 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <78350915.5121127.1741794175287@webmail.strato.de>
Subject: Copy file from ZIP archive to image
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_5121126_1459683704.1741794175284"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev73
X-Originating-Client: open-xchange-appsuite
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Mar 2025 15:43:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64945

------=_Part_5121126_1459683704.1741794175284
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have a ZIP archive with some media, html and JSON files and I want to cop=
y them with this recipe
=20
SUMMARY =3D "Frontend application"
LICENSE =3D "Proprietary"
LIC_FILES_CHKSUM =3D " \
file://${WORKDIR}/LICENSE;md5=3D03fe683ef28b9ddfe7f658a0f4b3b80e \
"
SRC_URI =3D " \
file://LICENSE \
file://frontend.zip \
"
do_install () {
  install -d ${D}/opt/app/frontend
  cp -r ${WORKDIR}/build/* ${D}/opt/app/frontend
}
FILES_${PN} +=3D "/opt/app/frontend/*"
=20
But I get these errors

ERROR: frontend-1.0-r0 do_package: Fatal errors occurred in subprocesses:
'utf-8' codec can't decode byte 0x9a in position 619: invalid start byte: T=
raceback (most recent call last):
File "/BSP5/os/build/../layers/openembedded-core/meta/lib/oe/utils.py", lin=
e 280, in run
ret =3D self._target(*self._args, **self._kwargs)
File "/BSP5/os/build/../layers/openembedded-core/meta/lib/oe/package.py", l=
ine 251, in filedeprunner
output =3D subprocess.check_output(shlex.split(rpmdeps) + pkgfiles, stderr=
=3Dsubprocess.STDOUT).decode("utf-8")
UnicodeDecodeError: 'utf-8' codec can't decode byte 0x9a in position 619: i=
nvalid start byte
=20
How can I fix them?
=20
Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
=20
Ing. Daniel Kampert, M. Sc.
Embedded Systems Solutions
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
Phone: +49 (0)174 6932561
E-Mail: kontakt@daniel-kampert.de mailto:kontakt@daniel-kampert.de
Web: www.daniel-kampert.de https://www.daniel-kampert.de
------=_Part_5121126_1459683704.1741794175284
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html>
 <head>=20
  <meta charset=3D"UTF-8">=20
 </head>
 <body>
  <div class=3D"default-style">
   I have a ZIP archive with some media, html and JSON files and I want to =
copy them with this recipe
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">=20
   <div class=3D"default-style">
    SUMMARY =3D "Frontend application"
   </div>=20
   <div class=3D"default-style">
    LICENSE =3D "Proprietary"
    <br>LIC_FILES_CHKSUM =3D " \
    <br>file://${WORKDIR}/LICENSE;md5=3D03fe683ef28b9ddfe7f658a0f4b3b80e \
    <br>"
   </div>=20
   <div class=3D"default-style">
    SRC_URI =3D " \
    <br>file://LICENSE \
    <br>file://frontend.zip \
    <br>"
   </div>=20
   <div class=3D"default-style">
    do_install () {
   </div>=20
   <div class=3D"default-style">
    &nbsp; install -d ${D}/opt/app/frontend
   </div>=20
   <div class=3D"default-style">
    &nbsp; cp -r ${WORKDIR}/build/* ${D}/opt/app/frontend
    <br>}
   </div>=20
   <div class=3D"default-style">
    FILES_${PN} +=3D "/opt/app/frontend/*"
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    But I get these errors
    <br>
    <br>
   </div>=20
   <div class=3D"default-style">
    ERROR: frontend-1.0-r0 do_package: Fatal errors occurred in subprocesse=
s:
    <br>'utf-8' codec can't decode byte 0x9a in position 619: invalid start=
 byte: Traceback (most recent call last):
    <br>File "/BSP5/os/build/../layers/openembedded-core/meta/lib/oe/utils.=
py", line 280, in run
    <br>ret =3D self._target(*self._args, **self._kwargs)
    <br>File "/BSP5/os/build/../layers/openembedded-core/meta/lib/oe/packag=
e.py", line 251, in filedeprunner
    <br>output =3D subprocess.check_output(shlex.split(rpmdeps) + pkgfiles,=
 stderr=3Dsubprocess.STDOUT).decode("utf-8")
    <br>UnicodeDecodeError: 'utf-8' codec can't decode byte 0x9a in positio=
n 619: invalid start byte
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    How can I fix them?
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
  </div>=20
  <div class=3D"io-ox-signature">=20
   <div class=3D"default-style">
    Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    Ing. Daniel Kampert, M. Sc.=20
    <br>Embedded Systems Solutions
   </div>=20
   <div class=3D"default-style">=20
    <div>
     Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland=20
     <br>Phone: +49 (0)174 6932561=20
     <br>E-Mail: <a href=3D"mailto:kontakt@daniel-kampert.de">kontakt@danie=
l-kampert.de</a>=20
     <br>Web:&nbsp;<a href=3D"https://www.daniel-kampert.de">www.daniel-kam=
pert.de</a>
    </div>=20
   </div>=20
  </div>=20
 </body>
</html>
------=_Part_5121126_1459683704.1741794175284--


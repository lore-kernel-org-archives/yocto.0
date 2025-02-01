Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20BD1C0218A
	for <webhook@archiver.kernel.org>; Sat,  1 Feb 2025 20:46:58 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.163])
 by mx.groups.io with SMTP id smtpd.web11.51258.1738442812653848095
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Feb 2025 12:46:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=qBT/GgL5;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=aLQd6vtH;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.163, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1738442810; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=L9MFjB1XtH+jMP6q3uEOhJ+cP/REobTOMGH0GBbK/AkUvbZvuDuvDPrs6SMyIlOUfk
    oGQkQPji3cvCJb6Q9TYOTjlG/dzdgO1UZMuFNXvWXIX6SGNgOFfMJUSmiqN3v8k5kxLY
    I4ndYJk6O83PMOailV0RXXj4UBjMfUBYm6EJb+Wtt2cLMQpQ//7xiSG20c45Zdz1OYv3
    40coPq4IKLu4ZlqEScCMdiSOuxuhFYpHOujIWRl29Dfvv9E3PAbko6oGy8Rlu/c6gVC+
    PvRtfA5HTbdGI7lDneGyu4U6yKDvnqNnqN+/5B7akgnw8mCM1589OrA5uzP8urrpZpEC
    BjPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1738442810;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=2F94wupZPq/uqm05vxgW9mb3bMiIdxTDdziltexYik8=;
    b=Cvqo1GnphsLPsTkL1QpIK9UdQNn02aAlESxOeinDnxn1x/WKKEQ/apqOQbLImJn8qE
    wQ+Yg8kPyoqLLokUQ+ORvaDSTbRabyyAuqSReqE21i8lNy3NggPC0Z0g0JHqGSa9Xye1
    xkxor8rM3IuGsvt4d+GnJu65Nl2gQ29LQx4gYwy3iOocf60OgCsmbET/KPUiCeu6k9fX
    6sM1bMIyHoj59SDzT/BIVg9mkT9LNO6rS4v6OsqzU6nTgUmW4CXmcIcjpNnL4XlTpmjZ
    axSoQxiGKoufIo9UKIEotQ142ro7g2SbtmVOe/6GcFPbXZkrLJVRWuP/nKwPm6FPyCSE
    QXGA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1738442810;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=2F94wupZPq/uqm05vxgW9mb3bMiIdxTDdziltexYik8=;
    b=qBT/GgL53/TdXYSdt3KAdZLK/scmvmPjmwGwXk+yqUj4JfzZ6yTZnBDVyZkofOP7EC
    3i+54AdgRqy6mJWRe5/IUeKtjm+upxV/I4Jmr0cWYpJ0hB2wgxp0pee75KiP79kMUq66
    vlxsh9neI+w9lPnFZrOhEKMwrxAMyuBschQom8tT3B0FeoUjWyRxWppjBbopk3Y3ebQD
    OnldfRYL75ATtHJLOPs+xuHkllXmRhjkdHFzW6/OYTb1aRUNCZO0osDlW7fylPXRuO3o
    myJ90mtH2t3CIzsYKSw2D1zD+kNGptwnho+PMPLEJCNmSSrU/6OzbhQU1IU6nmNQajF2
    kYQg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1738442810;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=2F94wupZPq/uqm05vxgW9mb3bMiIdxTDdziltexYik8=;
    b=aLQd6vtHfVctEVCr0dseJkcCK6aOTk/4b/dlldybWV4WidMObaDyxL29GbmGQ7kxl3
    BuHt0wCl7lKdyZdXLzCg==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD5DFyLG+TEs6ViPa8wIPGtg=="
Received: from ox-live-app405.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.2.17 AUTH)
    with ESMTPSA id j04bdd111KkoEw7
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate)
    for <yocto@lists.yoctoproject.org>;
    Sat, 1 Feb 2025 21:46:50 +0100 (CET)
Date: Sat, 1 Feb 2025 21:46:50 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <2084383241.3521981.1738442810341@webmail.strato.de>
Subject: installs files in /var/volatile
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_3521980_647661801.1738442810335"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev72
X-Originating-Client: open-xchange-appsuite
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Feb 2025 20:46:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64694

------=_Part_3521980_647661801.1738442810335
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
=20
I=C2=B4m building a layer to install wmbusmeters for Kirkstone and I run in=
to this issue:
=20
ERROR: wmbusmeters-1.18.0-r0 do_package_qa: QA Issue: wmbusmeters installs =
files in /var/volatile, but it is expected to be empty [empty-dirs]
=20
What does it mean and where does it come from / how can I solve it? My reci=
pe looks like this
=20
inherit autotools-brokensep pkgconfig
DESCRIPTION =3D "The program acquires utility meter readings from wired m-b=
us or wireless wm-bus meters."
HOMEPAGE =3D "https://github.com/wmbusmeters/wmbusmeters"
LICENSE =3D "GPL-3.0-only"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-3.0-only;md5=3Dc79ff=
39f19dfec6d293b95dea7b07891"
# The Makefile is stripping. Overwrite the "STRIP" variable in the Makefile=
 and use the stripping from Yocto
EXTRA_OEMAKE +=3D "STRIP=3Dtrue"
CXXFLAGS +=3D "-DLIBXML_DOCB_ENABLED"
SRC_URI =3D " \
file://0001-set-libxml2-cxxflags-by-pkg-config.patch \
git://github.com/wmbusmeters/wmbusmeters;protocol=3Dhttps;branch=3Dmaster \
"
# Use version 1.18.0
SRCREV =3D "2f2720d9d8e043304a366d11d933be9d535e17a5"
DEPENDS =3D "rtlsdr icu libxml2"
RDEPENDS:${PN} =3D "rtlsdr icu"
S =3D "${WORKDIR}/git"
FILES:${PN} =3D " etc \
var \
lib \
usr/bin \
usr/sbin \
${systemd_system_unitdir}/system/wmbusmeters.service \
"
SYSTEMD_SERVICE:${PN} =3D "wmbusmeters.service"
SYSTEMD_AUTO_ENABLE:${PN} =3D "enable"
=20
Thanks for help!
=20
Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
=20
Ing. Daniel Kampert, M. Sc.
Embedded Systems Solutions
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
Phone: +49 (0)174 6932561
E-Mail: kontakt@daniel-kampert.de mailto:kontakt@daniel-kampert.de
Web: www.daniel-kampert.de https://www.daniel-kampert.de
------=_Part_3521980_647661801.1738442810335
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
   Hi,
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   I=C2=B4m building a layer to install wmbusmeters for Kirkstone and I run=
 into this issue:
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   <span style=3D"color: #ff0000;">ERROR: wmbusmeters-1.18.0-r0 do_package_=
qa: QA Issue: wmbusmeters installs files in /var/volatile, but it is expect=
ed to be empty [empty-dirs]</span>
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   What does it mean and where does it come from / how can I solve it? My r=
ecipe looks like this
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">=20
   <div class=3D"default-style">
    <em>inherit autotools-brokensep pkgconfig</em>
   </div>=20
   <div class=3D"default-style">
    <em>DESCRIPTION =3D "The program acquires utility meter readings from w=
ired m-bus or wireless wm-bus meters."</em>
    <br><em>HOMEPAGE =3D "https://github.com/wmbusmeters/wmbusmeters"</em>
    <br><em>LICENSE =3D "GPL-3.0-only"</em>
    <br><em>LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-3.0-only=
;md5=3Dc79ff39f19dfec6d293b95dea7b07891"</em>
   </div>=20
   <div class=3D"default-style">
    <em># The Makefile is stripping. Overwrite the "STRIP" variable in the =
Makefile and use the stripping from Yocto</em>
    <br><em>EXTRA_OEMAKE +=3D "STRIP=3Dtrue"</em>
    <br><em>CXXFLAGS +=3D "-DLIBXML_DOCB_ENABLED"</em>
   </div>=20
   <div class=3D"default-style">
    <em>SRC_URI =3D " \</em>
    <br><em>file://0001-set-libxml2-cxxflags-by-pkg-config.patch \</em>
    <br><em>git://github.com/wmbusmeters/wmbusmeters;protocol=3Dhttps;branc=
h=3Dmaster \</em>
    <br><em>"</em>
    <br><em># Use version 1.18.0</em>
    <br><em>SRCREV =3D "2f2720d9d8e043304a366d11d933be9d535e17a5"</em>
   </div>=20
   <div class=3D"default-style">
    <em>DEPENDS =3D "rtlsdr icu libxml2"</em>
    <br><em>RDEPENDS:${PN} =3D "rtlsdr icu"</em>
   </div>=20
   <div class=3D"default-style">
    <em>S =3D "${WORKDIR}/git"</em>
   </div>=20
   <div class=3D"default-style">
    <em>FILES:${PN} =3D " etc \</em>
    <br><em>var \</em>
    <br><em>lib \</em>
    <br><em>usr/bin \</em>
    <br><em>usr/sbin \</em>
    <br><em>${systemd_system_unitdir}/system/wmbusmeters.service \</em>
    <br><em>"</em>
    <br><em>SYSTEMD_SERVICE:${PN} =3D "wmbusmeters.service"</em>
    <br><em>SYSTEMD_AUTO_ENABLE:${PN} =3D "enable"</em>
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    Thanks for help!
   </div>=20
  </div>=20
  <div class=3D"default-style">
   &nbsp;
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
------=_Part_3521980_647661801.1738442810335--


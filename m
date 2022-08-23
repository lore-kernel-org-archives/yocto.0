Return-Path: <shsrvn@proton.me>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72738C32772
	for <webhook@archiver.kernel.org>; Tue, 23 Aug 2022 09:15:50 +0000 (UTC)
Received: from mail-4325.protonmail.ch (mail-4325.protonmail.ch
 [185.70.43.25])
 by mx.groups.io with SMTP id smtpd.web10.29902.1661246147071060727
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Aug 2022 02:15:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@proton.me
 header.s=protonmail header.b=Amds7sJY;
 spf=pass (domain: proton.me, ip: 185.70.43.25, mailfrom: shsrvn@proton.me)
Date: Tue, 23 Aug 2022 09:15:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1661246145; x=1661505345;
	bh=AdDpnltPYCWhBPPKuEqi8SvpH3qGvSg15Pw1ts75Qno=;
	h=Date:To:From:Reply-To:Subject:Message-ID:Feedback-ID:From:To:Cc:
	 Date:Subject:Reply-To:Feedback-ID:Message-ID;
	b=Amds7sJYHX+UPQze46cEyky9Y4ujGx+dTu0BJdFQCyS1mxmxZLtlTvmD6Q4twvauU
	 GwK6ZxJ2ZNWMPmXgpqBjL5+q5N9VX3HOuMIdhn61BPNyK3zqX4n44gFhYuOsQ7n/Nw
	 pAm0dNbRoLUnMvoZ4ANsbxSGB4SfqK4fN0agPTw0zZmKmPMcVWZ2C5Kxb0uNOcczF0
	 k3xvBeMwWYKTHaFq5EVgpeqVvbvTJMO3iodPutOSfxJ3+1wsR1iQ2GIfHPQlDns+NA
	 dtXCIamRYhmz1gUPX0mgpCwDGV/rttv5BDiFLmNdo9or0afx2OcdeoqybTcVvEmeMG
	 GOPED7EsojvdA==
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "S. Srinivasan" <shsrvn@proton.me>
Reply-To: "S. Srinivasan" <shsrvn@proton.me>
Subject: Compiling and installing mariadb-connector-c
Message-ID: 
 <m7ZJiWBHWa9hzVgPlPm8PC3BaboxVeg8NEZ922gL-jOsdcS2hYs87CXI7sIG-m5j0WDJojyaSKcfuj56oYPod91Tww8jO2Jarz8sH6tOlu0=@proton.me>
Feedback-ID: 46211224:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Aug 2022 09:15:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57882

Hello,

I'm having issues compiling mariadb-connector-c in yocto (BSP-Yocto-i.MX6-P=
D20.1.0). The following is my recipe:

SUMMARY =3D "MariadbConnector"
SECTION =3D "base"
DESCRIPTION =3D "This recipe is for installing MariadbConnector"
LICENSE =3D "BSD"
LIC_FILES_CHKSUM =3D "file://COPYING.LIB;md5=3D4fbd65380cdd255951079008b364=
516c \
                file://win/packaging/license.rtf;md5=3Dd84792abbbf7478e48e6=
48c9caf8107b \
                file://cmake/COPYING-CMAKE-SCRIPTS;md5=3D54c7042be62e169199=
200bc6477f04d1"
SRC_URI =3D https://dlm.mariadb.com/2319728/Connectors/c/connector-c-3.3.1/=
mariadb-connector-c-3.3.1-src.tar.gz;name=3Dsource
SRC_URI[source.md5sum] =3D "bd8090528becf9a788f78ed14bb90764"
SRC_URI[source.sha256sum] =3D "29993f4ae4c975662724978792d1a503b9ee760fbb19=
4d321a754253cbe60aad"

S =3D "${WORKDIR}/mariadb-connector-c-3.3.1-src"

DEPENDS =3D "zlib openssl gnutls krb5 curl zstd"

inherit cmake

do_configure() {
    cd ${WORKDIR}/build/
    cmake ../mariadb-connector-c-3.3.1-src -DCMAKE_BUILD_TYPE=3DRelease -DC=
MAKE_INSTALL_PREFIX=3D/usr
}

do_compile() {
    cmake -DCMAKE_TOOLCHAIN_FILE=3D../toolchain.cmake --build .
}

Here is the link to the log file: https://pastebin.com/qK20ZJsK

I'm new to yocto, so please let me know if I must provide more details! Add=
itionally, I managed to successfully compile and install mariadb-connector-=
c on the host Ubuntu 18.04.6 LTS system.

Thanks!


Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7473.1615290921431510533
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 03:55:21 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linux.microsoft.com header.s=default header.b=fakeTkZy;
 spf=fail (domain: linux.microsoft.com, ip: 198.145.29.25, mailfrom: anbelski@linux.microsoft.com)
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by mail.yoctoproject.org (Postfix) with ESMTP id D62A638C06E9
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 11:55:20 +0000 (UTC)
Received: from anbelski-lsg-linux-yocto-1.irsgb21fvobu5fvmalxug44hib.xx.internal.cloudapp.net (unknown [52.247.218.173])
	by linux.microsoft.com (Postfix) with ESMTPSA id 76F61208CF19;
	Tue,  9 Mar 2021 03:55:20 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 76F61208CF19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1615290920;
	bh=hMJaMqpvEoUo4HdeC3w09A+cM2cFWHnVWWGRr0vH8zY=;
	h=From:To:Cc:Subject:Date:From;
	b=fakeTkZyRU+O3FulP26NHANdksNA5mrwSERONG+8lfSSKTxE7e6Dk1os1m0EAMAL6
	 f84C7uR3lE8P09URyxBumpTho4xrJBoyzm+EzUFd+AmBgBQ5c1r0ZZtpi66K6WwPiP
	 CzY27F7asWUtg5w47srhYSJTp6bBGIw6r8jitErE=
From: "Anatol Belski" <anbelski@linux.microsoft.com>
To: yocto@yoctoproject.org
Cc: yi.zhao@windriver.com
Subject: [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux-python: Fix build error due to missing target config
Date: Tue,  9 Mar 2021 11:55:11 +0000
Message-Id: <20210309115511.7522-1-anbelski@linux.microsoft.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This fixes the error below:

gcc: error: unrecognized command line option
=E2=80=98-fmacro-prefix-map=3D/path/to/build/libselinux-python/3.0-r0=3D/=
usr/src/debug/libselinux-python/3.0-r0=E2=80=99

Without inheriting the config, supposedly a wrong compiler is used.

Signed-off-by: Anatol Belski <anbelski@linux.microsoft.com>
---
 recipes-security/selinux/libselinux-python_3.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/libselinux-python_3.0.bb b/recipes-=
security/selinux/libselinux-python_3.0.bb
index 2b5438d..3c03df1 100644
--- a/recipes-security/selinux/libselinux-python_3.0.bb
+++ b/recipes-security/selinux/libselinux-python_3.0.bb
@@ -4,6 +4,8 @@ SRC_URI =3D "https://github.com/SELinuxProject/selinux/re=
leases/download/${SELINUX
=20
 require ${BPN}.inc
=20
+inherit python3targetconfig
+
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e775a270d=
0d0"
=20
 SRC_URI[md5sum] =3D "b387a66f087b6d97713570e85ec89d89"
--=20
2.17.1


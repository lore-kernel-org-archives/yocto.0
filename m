Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8969C433EF
	for <webhook@archiver.kernel.org>; Fri, 12 Nov 2021 14:03:09 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.16096.1636725788675306365
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Nov 2021 06:03:08 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D193ED1;
	Fri, 12 Nov 2021 06:03:08 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D20483F70D;
	Fri, 12 Nov 2021 06:03:07 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH] dtc: update for recipe changes in oe-core
Date: Fri, 12 Nov 2021 14:02:57 +0000
Message-Id: <20211112140257.575574-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Nov 2021 14:03:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55323

The tools now build for MinGW so we don't need to disable them, but
as ncurses still fails we should continue to remove the bash RDEPENDS.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 recipes-core/dtc/dtc_%.bbappend | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/recipes-core/dtc/dtc_%.bbappend b/recipes-core/dtc/dtc_%.bba=
ppend
index 2d27a0a..b71c46b 100644
--- a/recipes-core/dtc/dtc_%.bbappend
+++ b/recipes-core/dtc/dtc_%.bbappend
@@ -1,16 +1 @@
-
-do_configure:append:mingw32 () {
-		# don't try to build the other dtc components when installing libs
-		sed -i 's/install-lib: all/install-lib: libfdt/g' ${S}/Makefile
-}
-
-do_compile:mingw32 () {
-		oe_runmake libfdt
-}
-
-do_install:mingw32 () {
-		oe_runmake install-lib install-includes
-}
-
 RDEPENDS:${PN}-misc:remove:mingw32 =3D "bash"
-
--=20
2.25.1



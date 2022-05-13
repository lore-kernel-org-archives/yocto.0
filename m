Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F0CC43217
	for <webhook@archiver.kernel.org>; Fri, 13 May 2022 11:25:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.7018.1652441095917538315
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 May 2022 04:24:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DCDB15A1;
	Fri, 13 May 2022 04:24:55 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A22E3F5A1;
	Fri, 13 May 2022 04:24:54 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: elizabeth.flanagan@huawei.com
Subject: [meta-zephyr][PATCH 05/10] python3-canopen: remove, unused
Date: Fri, 13 May 2022 12:24:43 +0100
Message-Id: <20220513112448.2257180-5-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220513112448.2257180-1-ross.burton@arm.com>
References: <20220513112448.2257180-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 May 2022 11:25:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57097

This recipe was added to meta-zephyr in de73bdba but nothing uses it.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-canopen_1.2.1.bb             | 17 -----------------
 1 file changed, 17 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-cano=
pen_1.2.1.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-canopen_1.2=
.1.bb b/meta-zephyr-core/recipes-devtools/python/python3-canopen_1.2.1.bb
deleted file mode 100644
index 0608199..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-canopen_1.2.1.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python canopen"
-DESCRIPTION =3D "A Python implementation of the CANopen standard. The ai=
m of \
-               the project is to support the most common parts of the Ci=
A \
-               301 standard in a simple Pythonic interface."
-HOMEPAGE =3D "https://pypi.org/project/canopen"
-LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://LICENSE.txt;md5=3D97f135a6ee6f800c377b55121=
22c7a8d"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE =3D "canopen"
-SRC_URI[md5sum] =3D "da37dcf725e774385f05f05e04ca54a0"
-SRC_URI[sha256sum] =3D "18d01d56ff0023795cb336cafd4810a76cf402b98b42139b=
201fa8c5d4ba8c06"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



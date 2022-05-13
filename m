Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66AFC433FE
	for <webhook@archiver.kernel.org>; Fri, 13 May 2022 11:25:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.7019.1652441097753316942
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 May 2022 04:24:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 59EB715DB;
	Fri, 13 May 2022 04:24:57 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B790E3F5A1;
	Fri, 13 May 2022 04:24:56 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: elizabeth.flanagan@huawei.com
Subject: [meta-zephyr][PATCH 07/10] python3-junitparser: remove, unused
Date: Fri, 13 May 2022 12:24:45 +0100
Message-Id: <20220513112448.2257180-7-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220513112448.2257180-1-ross.burton@arm.com>
References: <20220513112448.2257180-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 May 2022 11:25:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57099

This recipe was added to meta-zephyr in de73bdba but nothing uses it.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-junitparser_2.1.1.bb            | 14 --------------
 1 file changed, 14 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-juni=
tparser_2.1.1.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-junitparser=
_2.1.1.bb b/meta-zephyr-core/recipes-devtools/python/python3-junitparser_=
2.1.1.bb
deleted file mode 100644
index 5932e66..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-junitparser_2.1.1.=
bb
+++ /dev/null
@@ -1,14 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python junitparser"
-HOMEPAGE =3D "https://pypi.org/project/junitparser"
-LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D2d00702cde917dd61c41041bc3013=
6dd"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE =3D "junitparser"
-SRC_URI[md5sum] =3D "f8704c2b18e6f4d482c62b33e141a0cb"
-SRC_URI[sha256sum] =3D "d54d0eaa2b15ee2efab0220ce0ab31448d26dcb78170d566=
7453d7755b9f1480"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



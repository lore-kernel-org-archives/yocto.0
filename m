Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A544DC433F5
	for <webhook@archiver.kernel.org>; Fri, 13 May 2022 11:25:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.7047.1652441094646416392
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 May 2022 04:24:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C3BC1576;
	Fri, 13 May 2022 04:24:53 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A91BD3F5A1;
	Fri, 13 May 2022 04:24:52 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: elizabeth.flanagan@huawei.com
Subject: [meta-zephyr][PATCH 02/10] python3-gitlint: remove, unused
Date: Fri, 13 May 2022 12:24:40 +0100
Message-Id: <20220513112448.2257180-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220513112448.2257180-1-ross.burton@arm.com>
References: <20220513112448.2257180-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 May 2022 11:25:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57094

This recipe was added to meta-zephyr in de73bdba but nothing uses it.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-gitlint_0.15.1.bb               | 14 --------------
 1 file changed, 14 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-gitl=
int_0.15.1.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-gitlint_0.1=
5.1.bb b/meta-zephyr-core/recipes-devtools/python/python3-gitlint_0.15.1.=
bb
deleted file mode 100644
index 143e2cb..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-gitlint_0.15.1.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python gitlint"
-HOMEPAGE =3D "https://pypi.org/project/gitlint"
-LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D2ddf75221dde30f107af8595a43b4=
009"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE =3D "gitlint"
-SRC_URI[md5sum] =3D "4835bedc50129934a47cf099d906d2ca"
-SRC_URI[sha256sum] =3D "4b22916dcbdca381244aee6cb8d8743756cfd98f27e7d1f0=
2e78733f07c3c21c"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



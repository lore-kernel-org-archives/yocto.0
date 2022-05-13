Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B88C4321E
	for <webhook@archiver.kernel.org>; Fri, 13 May 2022 11:25:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.7083.1652441096784419962
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 May 2022 04:24:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 842A015BF;
	Fri, 13 May 2022 04:24:56 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC9F03F5A1;
	Fri, 13 May 2022 04:24:55 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: elizabeth.flanagan@huawei.com
Subject: [meta-zephyr][PATCH 06/10] python3-junithtml: remove, unused
Date: Fri, 13 May 2022 12:24:44 +0100
Message-Id: <20220513112448.2257180-6-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220513112448.2257180-1-ross.burton@arm.com>
References: <20220513112448.2257180-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 May 2022 11:25:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57098

This recipe was added to meta-zephyr in de73bdba but nothing uses it.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-junithtml_30.0.4.bb             | 14 --------------
 1 file changed, 14 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-juni=
thtml_30.0.4.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-junithtml_3=
0.0.4.bb b/meta-zephyr-core/recipes-devtools/python/python3-junithtml_30.=
0.4.bb
deleted file mode 100644
index ddc34aa..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-junithtml_30.0.4.b=
b
+++ /dev/null
@@ -1,14 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python junit2html"
-HOMEPAGE =3D "https://pypi.org/project/junit2html"
-LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://MANIFEST.in;md5=3D899c50bccc6c8221c8ca0a9c7=
633b5b8"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE =3D "junit2html"
-SRC_URI[md5sum] =3D "a816cf502da0a8905f24aefab0739206"
-SRC_URI[sha256sum] =3D "9b3967c92142abd5fb94e2cbb938c51cc6c2689ec1c7fd34=
8c6ba4ddab92da14"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



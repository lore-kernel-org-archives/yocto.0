Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E11EAC433F5
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 15:56:16 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.96.1652111766818130924
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 08:56:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AC5A1570;
	Mon,  9 May 2022 08:56:06 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E98113F73D;
	Mon,  9 May 2022 08:56:05 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com,
	naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH 3/6] meta-zephyr-core/python3-pyparsing: remove,
 duplicate of oe-core recipe
Date: Mon,  9 May 2022 16:55:57 +0100
Message-Id: <20220509155600.2363787-3-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509155600.2363787-1-ross.burton@arm.com>
References: <20220509155600.2363787-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 15:56:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57034

This recipe has been in oe-core since gatesgarth (182c1af2).

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-pyparsing_2.4.7.bb              | 14 --------------
 1 file changed, 14 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-pypa=
rsing_2.4.7.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-pyparsing_2=
.4.7.bb b/meta-zephyr-core/recipes-devtools/python/python3-pyparsing_2.4.=
7.bb
deleted file mode 100644
index 0cb0d36..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-pyparsing_2.4.7.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python pyparsing"
-HOMEPAGE =3D "https://pypi.org/project/pyparsing"
-LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D657a566233888513e1f07ba13e2f4=
7f1"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE =3D "pyparsing"
-SRC_URI[md5sum] =3D "f0953e47a0112f7a65aec2305ffdf7b4"
-SRC_URI[sha256sum] =3D "c203ec8783bf771a155b207279b9bccb8dea02d8f0c9e5f8=
ead507bc3246ecc1"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



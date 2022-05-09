Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6826C433FE
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 15:56:16 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.70.1652111769023469459
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 08:56:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C9E4153B;
	Mon,  9 May 2022 08:56:08 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7BEDC3F73D;
	Mon,  9 May 2022 08:56:07 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com,
	naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH 5/6] meta-zephyr-core/python3-imgtool: remove,
 duplicate of meta-python recipe
Date: Mon,  9 May 2022 16:55:59 +0100
Message-Id: <20220509155600.2363787-5-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509155600.2363787-1-ross.burton@arm.com>
References: <20220509155600.2363787-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 15:56:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57036

This recipe has been in meta-python since kirkstone (94fc0589b).

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-imgtool_1.7.2.bb                | 14 --------------
 1 file changed, 14 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-imgt=
ool_1.7.2.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-imgtool_1.7=
.2.bb b/meta-zephyr-core/recipes-devtools/python/python3-imgtool_1.7.2.bb
deleted file mode 100644
index 40d8176..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-imgtool_1.7.2.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python imgtool"
-HOMEPAGE =3D "https://pypi.org/project/imgtool"
-LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://setup.cfg;md5=3D3f78c6150b7d619a476c799812e=
31d5a"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE =3D "imgtool"
-SRC_URI[md5sum] =3D "08fe63c644977aa8f9e6038e2067c3de"
-SRC_URI[sha256sum] =3D "799484f3f61e398ac4157548f309b6baa4084e4641764496=
94ba9de7909eed6e"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



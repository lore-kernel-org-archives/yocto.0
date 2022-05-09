Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12871C433EF
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 15:56:07 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.75.1652111766132853722
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 08:56:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1A53153B;
	Mon,  9 May 2022 08:56:05 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B49E3F73D;
	Mon,  9 May 2022 08:56:05 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com,
	naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH 2/6] meta-zephyr-core/python3-sphinx: remove,
 duplicate of oe-core recipe
Date: Mon,  9 May 2022 16:55:56 +0100
Message-Id: <20220509155600.2363787-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509155600.2363787-1-ross.burton@arm.com>
References: <20220509155600.2363787-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 15:56:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57033

This has been in oe-core since kirkstone (1899e59).

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-sphinx_4.2.0.bb                 | 14 --------------
 1 file changed, 14 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-sphi=
nx_4.2.0.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-sphinx_4.2.=
0.bb b/meta-zephyr-core/recipes-devtools/python/python3-sphinx_4.2.0.bb
deleted file mode 100644
index 290fabb..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-sphinx_4.2.0.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-DESCRIPTION =3D "Python documentation generator"
-HOMEPAGE =3D "http://sphinx-doc.org/"
-SECTION =3D "devel/python"
-LICENSE =3D "BSD-2-Clause & BSD-3-Clause & MIT"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D82cc7d23060a75a07b820eaaf75ab=
ecf"
-
-inherit setuptools3 pypi
-
-PYPI_PACKAGE =3D "Sphinx"
-SRC_URI[sha256sum] =3D "94078db9184491e15bce0a56d9186e0aec95f16ac20b12d0=
0e06d4e36f1058a6"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



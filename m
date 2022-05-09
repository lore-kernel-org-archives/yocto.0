Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8084C433EF
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 15:56:16 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.96.1652111766818130924
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 08:56:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53FE11480;
	Mon,  9 May 2022 08:56:07 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B29B73F73D;
	Mon,  9 May 2022 08:56:06 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com,
	naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH 4/6] meta-zephyr-core/python3-packaging: remove,
 duplicate of oe-core recipes
Date: Mon,  9 May 2022 16:55:58 +0100
Message-Id: <20220509155600.2363787-4-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509155600.2363787-1-ross.burton@arm.com>
References: <20220509155600.2363787-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 15:56:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57035

This recipe has been in oe-core since hardknott (c51fde1d).

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-packaging_21.0.bb               | 14 --------------
 1 file changed, 14 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-pack=
aging_21.0.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-packaging_2=
1.0.bb b/meta-zephyr-core/recipes-devtools/python/python3-packaging_21.0.=
bb
deleted file mode 100644
index f857224..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-packaging_21.0.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python packaging"
-HOMEPAGE =3D "https://pypi.org/project/packaging"
-LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dfaadaedca9251a90b205c9167578c=
e91"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE =3D "packaging"
-SRC_URI[md5sum] =3D "240ba5823ed31051a1254e74c9d18d55"
-SRC_URI[sha256sum] =3D "7dc96269f53a4ccec5c0670940a4281106dd0bb343f47b74=
71f779df49c2fbe7"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



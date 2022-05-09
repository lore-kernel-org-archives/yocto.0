Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 028D6C433F5
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 15:36:56 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.33412.1652110608602015726
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 08:36:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 879051480;
	Mon,  9 May 2022 08:36:47 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E61BD3F73D;
	Mon,  9 May 2022 08:36:46 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com,
	naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH] python3-pygments: remove, this is in oe-core
Date: Mon,  9 May 2022 16:36:38 +0100
Message-Id: <20220509153638.2359580-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 15:36:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57031

python3-pygments has been in oe-core since Dunfell.

[1] 5c0d4e59d4a12374a3460743d9805c7b75f56d6e

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-pygments_2.10.0.bb             | 15 ---------------
 1 file changed, 15 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-pygm=
ents_2.10.0.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-pygments_2.=
10.0.bb b/meta-zephyr-core/recipes-devtools/python/python3-pygments_2.10.=
0.bb
deleted file mode 100644
index c4b63c1..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-pygments_2.10.0.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python pygments"
-HOMEPAGE =3D "https://pypi.org/project/Pygments/"
-DESCRIPTION =3D "Pygments is a syntax highlighting package written in Py=
thon."
-LICENSE =3D "BSD-2-Clause"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3De3fc50a88d0a364313df4b21ef20c=
29e"
-SRC_URI =3D "https://files.pythonhosted.org/packages/b7/b3/5cba26637fe43=
500d4568d0ee7b7362de1fb29c0e158d50b4b69e9a40422/Pygments-2.10.0.tar.gz"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE =3D "Pygments"
-SRC_URI[md5sum] =3D "87369a4e15019caf9cf056ab2c5858b3"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



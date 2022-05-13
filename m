Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA3E9C433FE
	for <webhook@archiver.kernel.org>; Fri, 13 May 2022 11:25:10 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.7049.1652441095426271722
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 May 2022 04:24:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C87351596;
	Fri, 13 May 2022 04:24:54 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 396FF3F5A1;
	Fri, 13 May 2022 04:24:54 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: elizabeth.flanagan@huawei.com
Subject: [meta-zephyr][PATCH 04/10] python3-breathe: remove, unused
Date: Fri, 13 May 2022 12:24:42 +0100
Message-Id: <20220513112448.2257180-4-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220513112448.2257180-1-ross.burton@arm.com>
References: <20220513112448.2257180-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 May 2022 11:25:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57096

This recipe was added to meta-zephyr in de73bdba but nothing uses it.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-breathe_4.31.0.bb            | 17 -----------------
 1 file changed, 17 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-brea=
the_4.31.0.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-breathe_4.3=
1.0.bb b/meta-zephyr-core/recipes-devtools/python/python3-breathe_4.31.0.=
bb
deleted file mode 100644
index 4389d20..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-breathe_4.31.0.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python breathe"
-DESCRIPTION =3D "Breathe is an extension to reStructuredText and Sphinx =
to be \
-               able to read and render Doxygen xml output."
-HOMEPAGE =3D "https://pypi.org/project/breathe"
-LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D9e49eecf36fc015de7c61a0247df7=
5d6"
-
-inherit pypi setuptools3
-=20
-DEPENDS =3D "python3-sphinx-native python3-docutils-native python3-pygme=
nts-native python3-babel-native python3-jinja2-native python3-distro-nati=
ve"
-PYPI_PACKAGE =3D "breathe"
-SRC_URI[md5sum] =3D "33a86368215dbcb59e5c71687f6b228b"
-SRC_URI[sha256sum] =3D "925eeff96c6640cd857e4ddeae6f75464a1d5e2e08ee56dc=
cce4043583ae2050"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



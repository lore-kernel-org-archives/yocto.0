Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95CDC4332F
	for <webhook@archiver.kernel.org>; Fri, 13 May 2022 11:25:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.7084.1652441093523976253
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 May 2022 04:24:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C58A1570;
	Fri, 13 May 2022 04:24:52 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB3473F5A1;
	Fri, 13 May 2022 04:24:51 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: elizabeth.flanagan@huawei.com
Subject: [meta-zephyr][PATCH 01/10] python3-cbor: remove, unused and obsolete
Date: Fri, 13 May 2022 12:24:39 +0100
Message-Id: <20220513112448.2257180-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 May 2022 11:25:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57093

Nothing in meta-zephyr uses python3-cbor, and as it hasn't had a release
since 2016 everyone using it should move to cbor2.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-cbor_1.0.0.bb              | 19 -------------------
 1 file changed, 19 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-cbor=
_1.0.0.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-cbor_1.0.0.=
bb b/meta-zephyr-core/recipes-devtools/python/python3-cbor_1.0.0.bb
deleted file mode 100644
index 9e240f0..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-cbor_1.0.0.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python cbor"
-DESCRIPTION =3D "An implementation of RFC 7049 - Concise Binary Object \
-               Representation (CBOR). \
-               CBOR is comparable to JSON, has a superset of JSON=E2=80=99=
s ability, \
-               but serializes to a binary format which is smaller and fa=
ster \
-               to generate and parse."
-HOMEPAGE =3D "https://pypi.org/project/cbor"
-LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://setup.cfg;md5=3Dd86758afb08a60bc589dc67bfea=
670b2"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE =3D "cbor"
-SRC_URI[md5sum] =3D "22b03b59784fd78cb6c27aa498af0db6"
-SRC_URI[sha256sum] =3D "13225a262ddf5615cbd9fd55a76a0d53069d18b07d2e9f19=
c39e6acb8609bbb6"
-BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1



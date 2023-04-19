Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D52A2C77B78
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 16:01:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.42141.1681920058402873319
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Apr 2023 09:00:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEED916F8;
	Wed, 19 Apr 2023 09:01:41 -0700 (PDT)
Received: from e125920.cambridge.arm.com (unknown [10.1.199.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA0893F5A1;
	Wed, 19 Apr 2023 09:00:57 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 3/3] zephyr-core/zephyr-kernel: Use SHA for zcbor module
Date: Wed, 19 Apr 2023 17:00:31 +0100
Message-Id: <20230419160031.457614-3-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230419160031.457614-1-peter.hoyes@arm.com>
References: <20230419160031.457614-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 16:01:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59735

From: Peter Hoyes <Peter.Hoyes@arm.com>

Re-run the generate-version.py script for 3.3.0 to convert the tag for
zcbor to a SHA.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.3.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.3.0.inc
index 245ba81..d9e9df4 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3=
.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3=
.0.inc
@@ -54,7 +54,7 @@ SRCREV_trusted-firmware-a =3D "28f5e137837f1c1a7a7b2af2=
dd8bb778c0a27532"
 SRCREV_tf-m-tests =3D "0f80a65193ddbbe3f0ac38b33b07b26138c11fa7"
 SRCREV_psa-arch-tests =3D "24ed42e34e03ebbc945a7204819c1471cce2bda8"
 SRCREV_uoscore-uedhoc =3D "e8920192b66db4f909eb9cd3f155d5245c1ae825"
-SRCREV_zcbor =3D "0.6.0"
+SRCREV_zcbor =3D "0556edac504d1f34699aa8a22fcd507c14756c9e"
 SRCREV_zscilib =3D "0035be5e6a45e4ab89755b176d305d7a877fc79c"
 SRCREV_thrift =3D "10023645a0e6cb7ce23fcd7fd3dbac9f18df6234"
=20
--=20
2.34.1



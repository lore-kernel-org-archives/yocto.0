Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45AD5C4332F
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 15:37:05 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.16160.1671205015763512666
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 07:36:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2CD7D1042;
	Fri, 16 Dec 2022 07:37:36 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.88.145])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E53D33F5A1;
	Fri, 16 Dec 2022 07:36:54 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 4/5] zephyr-core/zephyr-kernel: Inhibit packaging steps with the Zephyr SDK
Date: Fri, 16 Dec 2022 15:37:22 +0000
Message-Id: <20221216153723.1522131-4-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221216153723.1522131-1-peter.hoyes@arm.com>
References: <20221216153723.1522131-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 15:37:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58814

From: Peter Hoyes <Peter.Hoyes@arm.com>

The packaging step includes post-processing of elf files using objcopy
and strip from the Yocto toolchain. When using the Zephyr SDK, the Yocto
toolchain is explicitly not built so it is not possible to run these
steps. Therefore, inhibit them in zephyr-toolchain-zephyr.inc

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../recipes-kernel/zephyr-kernel/zephyr-toolchain-zephyr.inc  | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolcha=
in-zephyr.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-tool=
chain-zephyr.inc
index 9987e3c..a193314 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolchain-zeph=
yr.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolchain-zeph=
yr.inc
@@ -13,3 +13,7 @@ deltask generate_toolchain_file
 # Provide a suitable location to store the toolchain capabilites cache
 ZEPHYR_USER_CACHE_DIR =3D "${B}/.cache"
 EXTRA_OECMAKE:append =3D " -DUSER_CACHE_DIR=3D${ZEPHYR_USER_CACHE_DIR}"
+
+# Inhibit packaging steps that require the Yocto toolchain
+INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
+INHIBIT_PACKAGE_STRIP =3D "1"
--=20
2.25.1



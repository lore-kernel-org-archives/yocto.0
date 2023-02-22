Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCFDC61DA4
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 22:21:32 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.1164.1677104489839567081
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 14:21:30 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C221C14;
	Wed, 22 Feb 2023 14:22:12 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.76.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C55FA3F587;
	Wed, 22 Feb 2023 14:21:28 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 3/3] zephyr-sdk: Upgrade to version 0.15.2
Date: Wed, 22 Feb 2023 22:20:32 +0000
Message-Id: <20230222222032.656229-3-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222222032.656229-1-peter.hoyes@arm.com>
References: <20230222222032.656229-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 22:21:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59285

From: Peter Hoyes <Peter.Hoyes@arm.com>

https://github.com/zephyrproject-rtos/sdk-ng/releases/tag/v0.15.2

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../zephyr-sdk/{zephyr-sdk_0.15.1.bb =3D> zephyr-sdk_0.15.2.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-zephyr-core/recipes-devtools/zephyr-sdk/{zephyr-sdk_0.15.1.b=
b =3D> zephyr-sdk_0.15.2.bb} (83%)

diff --git a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15=
.1.bb b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.2.bb
similarity index 83%
rename from meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.=
1.bb
rename to meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.2.=
bb
index f5a9466..ca3ab8c 100644
--- a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
+++ b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.2.bb
@@ -14,8 +14,8 @@ SDK_ARCHIVE =3D "zephyr-sdk-${PV}_linux-${BUILD_ARCH}.t=
ar.gz"
 SDK_NAME =3D "${BUILD_ARCH}"
 SRC_URI =3D "https://github.com/zephyrproject-rtos/sdk-ng/releases/downl=
oad/v${PV}/${SDK_ARCHIVE};subdir=3D${S};name=3D${SDK_NAME}"
=20
-SRC_URI[x86_64.sha256sum] =3D "0a7406045102197b9edc759b242499941814a1c6d=
f29dd9fbd479ad50eb0fba9"
-SRC_URI[aarch64.sha256sum] =3D "d2c5de994376a287e8bf12e5776ab8f5105eafa1=
4826608df085142fd01b7f84"
+SRC_URI[x86_64.sha256sum] =3D "8e3572fbca9f9ba18a4436c00d680af34a85e239f=
7fe66c7988da85571a0d23d"
+SRC_URI[aarch64.sha256sum] =3D "0d36e40a81a3aa1b64d65c4c5c6cd381555a33ef=
1684b7ba98236fa486f176a4"
=20
 do_configure[noexec] =3D "1"
 do_compile[noexec] =3D "1"
--=20
2.34.1



Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B131C19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 13:37:13 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.8604.1659533827487698290
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 06:37:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C93D111FB;
	Wed,  3 Aug 2022 06:37:07 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.84.163])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1ADBC3F70D;
	Wed,  3 Aug 2022 06:37:05 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Diego.Sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 2/3] zephyr-kernel: Add SUMMARY and DESCRIPTION
 for classic sample apps
Date: Wed,  3 Aug 2022 14:35:30 +0100
Message-Id: <20220803133531.3823518-2-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220803133531.3823518-1-peter.hoyes@arm.com>
References: <20220803133531.3823518-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 13:37:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57764

From: Peter Hoyes <Peter.Hoyes@arm.com>

Hello World and Philosophers do not have a SUMMARY or DESCRIPTION, so
add these to both recipes.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../recipes-kernel/zephyr-kernel/zephyr-helloworld.bb        | 4 ++++
 .../recipes-kernel/zephyr-kernel/zephyr-philosophers.bb      | 5 +++++
 2 files changed, 9 insertions(+)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-hellowo=
rld.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-helloworld.=
bb
index ac5ce62..20d1700 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
@@ -1,3 +1,7 @@
+SUMMARY =3D "Hello World Zephyr Sample"
+DESCRIPTION =3D "A simple Zephyr application that prints 'Hello World' o=
n the \
+console"
+
 include zephyr-sample.inc
=20
 ZEPHYR_SRC_DIR =3D "${S}/samples/hello_world"
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-philoso=
phers.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-philosoph=
ers.bb
index a2afb57..5a2ac70 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-philosophers.b=
b
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-philosophers.b=
b
@@ -1,3 +1,8 @@
+SUMMARY =3D "Philosophers Zephyr Sample"
+DESCRIPTION =3D "A simple Zephyr application that demonstrates basic san=
ity of \
+the kernel. It demonstrates that kernel scheduling, communication and ti=
ming \
+operate correctly by printing a greeting to the console from two threads=
."
+
 include zephyr-sample.inc
=20
 ZEPHYR_SRC_DIR =3D "${S}/samples/philosophers"
--=20
2.25.1



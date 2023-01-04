Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EB1AC4332F
	for <webhook@archiver.kernel.org>; Wed,  4 Jan 2023 12:32:33 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.10789.1672835544605793632
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Jan 2023 04:32:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDA4F1596;
	Wed,  4 Jan 2023 04:33:05 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B722B3F587;
	Wed,  4 Jan 2023 04:32:23 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder2 2/2] config.py: add meta-clang builder
Date: Wed,  4 Jan 2023 12:32:21 +0000
Message-Id: <20230104123221.3321427-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230104123221.3321427-1-ross.burton@arm.com>
References: <20230104123221.3321427-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Jan 2023 12:32:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58926

Add a builder to exercise meta-clang.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index f425057..7d5005a 100644
--- a/config.py
+++ b/config.py
@@ -112,7 +112,7 @@ trigger_builders_wait_perf =3D ["buildperf-ubuntu1604=
", "buildperf-centos7", "buil
 # Builders which are individually triggered
 builders_others =3D [
     "reproducible-ubuntu", "reproducible-debian", "reproducible-fedora",=
 "reproducible-centos",
-    "meta-oe", "meta-virt",
+    "meta-oe", "meta-virt", "meta-clang",
     "bringup", "bringup-fast",
     "qemuarm-armhost",
     "check-layer-nightly",
--=20
2.34.1



Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F764C4332F
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 15:36:45 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.15918.1671205004808346805
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 07:36:44 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A6771042;
	Fri, 16 Dec 2022 07:37:25 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.88.145])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6674E3F5A1;
	Fri, 16 Dec 2022 07:36:43 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>,
	Ross Burton <ross.burton@arm.com>,
	Jon Mason <jon.mason@arm.com>
Subject: [meta-zephyr][PATCH 1/5] CI: Add variables needed for k8s runners
Date: Fri, 16 Dec 2022 15:37:19 +0000
Message-Id: <20221216153723.1522131-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 15:36:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58811

From: Peter Hoyes <Peter.Hoyes@arm.com>

The Kas container needs to use the entrypoint as that is where the user
changes from root to a normal user.

Also set the KUBERNETES_CPU_REQUEST to the variable CPU_REQUEST as this
needs to be tuned per-deployment.

CPU_REQUEST has no value outside of Arm Corp.  Gitlab CI allows for
variables to be overridden by default.  So, we can give it a default
value of NULL/empty and have everything work internally and externally
by default.

Signed-off-by: Ross Burton <ross.burton@arm.com>
Signed-off-by: Jon Mason <jon.mason@arm.com>
Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .gitlab-ci.yml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 3f0e319..616626a 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -1,5 +1,12 @@
 image: ghcr.io/siemens/kas/kas:latest-release
=20
+variables:
+  CPU_REQUEST: ""
+  # These are needed as the k8s executor doesn't respect the container
+  # entrypoint by default
+  FF_USE_LEGACY_KUBERNETES_EXECUTION_STRATEGY: 0
+  FF_KUBERNETES_HONOR_ENTRYPOINT: 1
+
 stages:
   - prep
   - build
@@ -24,6 +31,8 @@ stages:
 # Generalised fragment to do a Kas build
 .build:
   extends: .setup
+  variables:
+    KUBERNETES_CPU_REQUEST: $CPU_REQUEST
   script:
     - KASFILES=3D$(./ci/jobs-to-kas "$CI_JOB_NAME")
     - kas shell --update --force-checkout $KASFILES -c 'cat conf/*.conf'
--=20
2.25.1



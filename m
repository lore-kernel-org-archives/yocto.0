Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40C06C001B2
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 15:36:55 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.15920.1671205012277892825
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 07:36:52 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ADE851042;
	Fri, 16 Dec 2022 07:37:32 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.88.145])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BBA083F5A1;
	Fri, 16 Dec 2022 07:36:50 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>,
	Ross Burton <ross.burton@arm.com>,
	Jon Mason <jon.mason@arm.com>
Subject: [meta-zephyr][PATCH 2/5] CI: add tags to all jobs
Date: Fri, 16 Dec 2022 15:37:20 +0000
Message-Id: <20221216153723.1522131-2-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221216153723.1522131-1-peter.hoyes@arm.com>
References: <20221216153723.1522131-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 15:36:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58812

From: Peter Hoyes <Peter.Hoyes@arm.com>

Tag all jobs with the DEFAULT_TAG variable so each instance can control
what tags the jobs have.

Signed-off-by: Ross Burton <ross.burton@arm.com>
Signed-off-by: Jon Mason <jon.mason@arm.com>
Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .gitlab-ci.yml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 616626a..7ec0bd0 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -2,6 +2,7 @@ image: ghcr.io/siemens/kas/kas:latest-release
=20
 variables:
   CPU_REQUEST: ""
+  DEFAULT_TAG: ""
   # These are needed as the k8s executor doesn't respect the container
   # entrypoint by default
   FF_USE_LEGACY_KUBERNETES_EXECUTION_STRATEGY: 0
@@ -13,6 +14,8 @@ stages:
=20
 # Common job fragment to get a worker ready
 .setup:
+  tags:
+    - $DEFAULT_TAG
   stage: build
   interruptible: true
   variables:
@@ -65,7 +68,8 @@ machine-coverage:
   script:
     - ./ci/check-machine-coverage
   coverage: '/Coverage: \d+/'
-
+  tags:
+    - $DEFAULT_TAG
=20
 #
 # Build stage, the actual build jobs
--=20
2.25.1



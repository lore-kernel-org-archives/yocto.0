Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85C88C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 12:45:25 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.50033.1699015522167671913
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 05:45:22 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2E5F2F4;
	Fri,  3 Nov 2023 05:46:03 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9B5C43F703;
	Fri,  3 Nov 2023 05:45:20 -0700 (PDT)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper] scripts: pull before updating metrics
Date: Fri,  3 Nov 2023 12:45:19 +0000
Message-Id: <20231103124519.2072402-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 12:45:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61595

From: Ross Burton <ross.burton@arm.com>

Do another git-pull in the metrics repository before updating the
metrics, in case other metrics jobs running in parallel have updated the
repositories since they were cloned.  There will always be possibility
of racing metrics jobs, but this should reduce the chance of it
happening.

An alternative would be to commit and then rebase before pushing, but I
fear that a git-merge could produce invalid JSON and we'd have to
manually fix up the repository.  In my opinion, a wasted metrics run is
preferable to potentially corrupted repositories.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 scripts/run-cvecheck     | 6 ++++++
 scripts/run-patchmetrics | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/scripts/run-cvecheck b/scripts/run-cvecheck
index 711bec2..e0d52df 100755
--- a/scripts/run-cvecheck
+++ b/scripts/run-cvecheck
@@ -71,6 +71,12 @@ if [ ! -d $RESULTSDIR ]; then
     mkdir $RESULTSDIR
 fi
=20
+# Do another pull to make sure we're as up to date as possible.  This is
+# preferable to committing and rebasing before pushing as it would be be=
tter to
+# waste some time repeating work than commit potentially corrupted files=
 from a
+# git merge gone wrong.
+git -C $METRICSDIR pull
+
 cd ..
 set +u
 . oe-init-build-env build
diff --git a/scripts/run-patchmetrics b/scripts/run-patchmetrics
index a75cf52..a3f6d8f 100755
--- a/scripts/run-patchmetrics
+++ b/scripts/run-patchmetrics
@@ -87,6 +87,12 @@ if [ "$BRANCH" !=3D "master" ]; then
     exit 0
 fi
=20
+# Do another pull to make sure we're as up to date as possible.  This is
+# preferable to committing and rebasing before pushing as it would be be=
tter to
+# waste some time repeating work than commit potentially corrupted files=
 from a
+# git merge gone wrong.
+git -C $METRICSDIR pull
+
 #
 # Patch Metrics
 #
--=20
2.34.1



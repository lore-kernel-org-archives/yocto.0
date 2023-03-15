Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86CA6C6FD1D
	for <webhook@archiver.kernel.org>; Wed, 15 Mar 2023 17:30:24 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.2608.1678901414325587559
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Mar 2023 10:30:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EBF34B3;
	Wed, 15 Mar 2023 10:30:57 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BF8E73F64C;
	Wed, 15 Mar 2023 10:30:12 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH][matchbox-panel-2] applets/startup*/startup.c: clarify license to GPLv2+
Date: Wed, 15 Mar 2023 17:30:10 +0000
Message-Id: <20230315173010.3872600-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 17:30:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59434

matchbox-panel was intended to be GPLv2+ licensed, however the wrong GPL
fragment was added in startup/startup.c in the original import which
stated it was GPL v2 only, and that was copied into startup-notify.

The code that this was based on, mb-applet-startup-monitor, is MIT
licensed[1] so this change isn't a problem.

[1] https://git.yoctoproject.org/matchbox-history/tree/mb-applet-startup-=
monitor/mbmonitor.c

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 applets/startup-notify/startup.c | 3 ++-
 applets/startup/startup.c        | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/applets/startup-notify/startup.c b/applets/startup-notify/st=
artup.c
index c69bddb..1f3f267 100644
--- a/applets/startup-notify/startup.c
+++ b/applets/startup-notify/startup.c
@@ -11,7 +11,8 @@
  *
  * This program is free software; you can redistribute it and/or modify =
it under
  * the terms of the GNU General Public License as published by the Free =
Software
- * Foundation; version 2 of the license.
+ * Foundation; either version 2 of the License, or (at your option) any =
later
+ * version.
  *
  * This program is distributed in the hope that it will be useful, but W=
ITHOUT
  * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or=
 FITNESS
diff --git a/applets/startup/startup.c b/applets/startup/startup.c
index 3d3f0d7..fb0fe73 100644
--- a/applets/startup/startup.c
+++ b/applets/startup/startup.c
@@ -15,7 +15,8 @@
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the license.
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
--=20
2.34.1



Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B7BC7EE43
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 19:28:16 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.7527.1686166094868680324
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 12:28:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2BCD1AB6;
	Wed,  7 Jun 2023 12:28:59 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 57EEF3F71E;
	Wed,  7 Jun 2023 12:28:13 -0700 (PDT)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper 1/3] scripts/layer-config: remove unused imports
Date: Wed,  7 Jun 2023 20:28:09 +0100
Message-Id: <20230607192811.601343-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 19:28:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60213

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 scripts/layer-config | 2 --
 1 file changed, 2 deletions(-)

diff --git a/scripts/layer-config b/scripts/layer-config
index 6c194e8..cb16e60 100755
--- a/scripts/layer-config
+++ b/scripts/layer-config
@@ -7,11 +7,9 @@
 # Move the repositories into the correct layout and generate bblayers.co=
nf
 #
=20
-import json
 import os
 import sys
 import subprocess
-import errno
=20
 import utils
=20
--=20
2.34.1



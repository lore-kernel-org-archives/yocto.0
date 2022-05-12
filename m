Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D007C433F5
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 13:02:44 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web09.3745.1652360559441412644
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 06:02:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.196,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 1DE21E000B;
	Thu, 12 May 2022 13:02:36 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper] scripts: run-docs-build: do not
 extract eclipse directories from old docs
Date: Thu, 12 May 2022 15:02:17 +0200
Message-Id: <20220512130217.1926760-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 13:02:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57071

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

For some reason, the old docs tarball includes many eclipse
subdirectories which are just cluttering the docs website up.

Therefore, let's just not extract eclipse directories from the tarball.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index f6b8ac4..b912ee9 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -35,7 +35,7 @@ docbookarchive=${docbookarchive:-/srv/autobuilder/autobuilder.yocto.io/pub/docbo
 mkdir $outputdir
 cd $outputdir
 echo Extracing old content from archive
-tar -xJf $docbookarchive
+tar --exclude=eclipse -xJf $docbookarchive
 
 cd $bbdocs
 mkdir $outputdir/bitbake
-- 
2.35.3



Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512F6C433EF
	for <webhook@archiver.kernel.org>; Wed, 22 Jun 2022 15:32:23 +0000 (UTC)
Received: from relay12.mail.gandi.net (relay12.mail.gandi.net
 [217.70.178.232])
 by mx.groups.io with SMTP id smtpd.web09.8935.1655911937951813246
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jun 2022 08:32:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=YVdh9tQp;
 spf=pass (domain: bootlin.com, ip: 217.70.178.232,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id D0309200016;
	Wed, 22 Jun 2022 15:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1655911936;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aKM8QFbbE7YRXJd8KsACC9x+kMC+I1KmZ0Mi6V4X+7g=;
	b=YVdh9tQpFtzLWiISnmpW/2Y2uMGzsCq2alH2QvY66/5SWVaQfjmaGmrOg/MW+ARNcOeofw
	UVpUYHbvbYwWLeqWDqnlLXkgIc4Y2iUGu6MsII/wtbYlrFUR9ZfuPqbmtaKAGnWoCohDkc
	XjMA1ncawDPzoxTHtANhL/Q70gi5wQa7SRl8KZiN/zSs/cbvVTt47byFKo0U+uUC/Jr5Ro
	iiedAnDm3tLgDHZW19wsZymlpOw7WynkBTq8GS6nlNgEj2uzLELrf3DM7afZBeW2Xnjs2B
	K7XkF/aGS4Pk2Eqkxf2Eweqv8efNF0BVrH7maVa3pyjKSnro17MRQtzGPImKMg==
From: michael.opdenacker@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH yocto-autobuilder-helper] run-docs-build: allow build warnings
 again
Date: Wed, 22 Jun 2022 17:32:01 +0200
Message-Id: <20220622153201.2734009-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jun 2022 15:32:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57374

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

This allows to switch to a more recent of Sphinx
which will generate warnings with old versions of docs.

This way, it's not immediately necessary to patch
all such versions.

This commit reverts
https://git.yoctoproject.org/yocto-autobuilder-helper/commit/?id=8273124feb9da2ffe93fcee7c4529d5597e1684a
which originally reverted
https://git.yoctoproject.org/yocto-autobuilder-helper/commit/?id=931d409b255a85f2217ca093d8391a678ce00ddb

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 scripts/run-docs-build | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 648a29d..0f74520 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -63,7 +63,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
     git checkout $branch
     git checkout master releases.rst
     make clean
-    make publish
+    SPHINXOPTS="-j auto" make publish
 
     if [ "$branch" = "master-next" ]; then
         branch="next"
@@ -136,7 +136,7 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
     fi
 
     make clean
-    make publish
+    SPHINXOPTS="-j auto" make publish
 
     # Strip yocto- from tag names
     branch=$(echo "$branch" | sed 's/yocto-//')
-- 
2.34.1



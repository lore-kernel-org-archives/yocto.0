Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94704C433EF
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 16:37:36 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web12.11868.1647621454182241999
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 09:37:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 3E48C240006;
	Fri, 18 Mar 2022 16:37:32 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper 2/6] scripts: run-docs-build:
 automatically build new Bitbake branches
Date: Fri, 18 Mar 2022 17:36:47 +0100
Message-Id: <20220318163651.3016936-2-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318163651.3016936-1-foss+yocto@0leil.net>
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 16:37:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56490

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Since commit 84ccba0f4aff91528f764523fe1205a354c889ed, docs of all later
releases can be built with Sphinx. Instead of manually updating this
list, let's have git return the list of remote branches which contains
this commit.

1.46 branch was initially released without Sphinx support but was later
patched, hence why it's explicitly listed.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index f7b5f97..d8d77c7 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -37,7 +37,12 @@ mkdir $outputdir/bitbake
 # https://lists.yoctoproject.org/g/docs/message/2193
 # We copy the releases.rst file from master so that all versions of the docs
 # see the latest releases.
-for branch in 1.46 1.48 1.50 1.52 master master-next; do
+first_sphinx_commit=84ccba0f4aff91528f764523fe1205a354c889ed
+for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)'); do
+    if [ "$branch" = "HEAD" ]; then
+        continue
+    fi
+
     echo Building bitbake $branch branch
     git checkout $branch
     git checkout master releases.rst
-- 
2.35.1



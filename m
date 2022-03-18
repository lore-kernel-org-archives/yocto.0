Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76E66C433F5
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 16:37:46 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web10.12134.1647621456171075592
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 09:37:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 1B07F240009;
	Fri, 18 Mar 2022 16:37:33 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper 4/6] scripts: run-docs-build:
 automatically build new yocto-docs branches
Date: Fri, 18 Mar 2022 17:36:49 +0100
Message-Id: <20220318163651.3016936-4-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318163651.3016936-1-foss+yocto@0leil.net>
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 16:37:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56492

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Since commit 01dd5af7954e24552aca022917669b27bb0541ed, all later
releases of yocto-docs can be built with Sphinx. Instead of manually
updating this list, let's have git return the list of remote branches
which contains the commit.

dunfell branch was initially released without Sphinx support but was
later patched, hence why it's explicitly listed.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 0055b19..1656975 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -70,7 +70,18 @@ rsync -irlp --checksum --ignore-times --delete bitbake docs@docs.yoctoproject.or
 cd $ypdocs
 
 # Again, keeping even the no longer supported releases (see above comment)
-for branch in dunfell gatesgarth hardknott honister master master-next transition; do
+first_sphinx_commit=01dd5af7954e24552aca022917669b27bb0541ed
+for branch in dunfell transition $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)'); do
+    if [ "$branch" = "HEAD" ]; then
+        continue
+    fi
+
+    # Do not build <release>-next branches as they are development branches only
+    # Do build master-next branch though!
+    if echo "$branch" | grep -v "master-next" | grep -q -E "-next$"; then
+        continue
+    fi
+
     echo Building $branch branch
     git checkout $branch
     git checkout master releases.rst
-- 
2.35.1



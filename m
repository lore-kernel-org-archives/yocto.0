Return-Path: <>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39C16E003C8
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 18:50:44 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so4701726yhf.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 18:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=yP1o0KWxpzmxqwYBMdE96LBAhhB574qbcngjD3Uare4=;
	b=eLWezDjto7UjLkRpYL55couFSM2NpFRJlBdW7MMKZXvwUyeK1PPOxPH3pZD28/nwLE
	KYpKLPHP80L1Ivc1I0fnwT4FxVvC5DWkKjQlPAV4+gnTMp24kSMYh1IU7vv0ZXqYsPgl
	gSq4qFUDaEEdYh5pg9VSZIphYort1sG8dR1c1WmYXImZVY4TdmkHsCzw8ALPv8Ua3MiT
	n2ZAUwFwDrLTk2w6JLT1yblgFBlTGddBvmg9jW0QUmaEScup3vUHgXHXgbL13VFNHQQu
	oJ/FaQLA+56gdl+0OvGVUJBMMdRdnDW7XhoW1oWR+50sZS+xSd0QDQeY0auKrrNnpj97
	WgPg==
Received: by 10.101.142.34 with SMTP id u34mr4120125ann.74.1344909043770;
	Mon, 13 Aug 2012 18:50:43 -0700 (PDT)
Received: from localhost.localdomain (dsl-67-55-9-50.acanac.net. [67.55.9.50])
	by mx.google.com with ESMTPS id
	a79sm2355557yhk.16.2012.08.13.18.50.42 (version=SSLv3 cipher=OTHER);
	Mon, 13 Aug 2012 18:50:42 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Aug 2012 21:50:37 -0400
Message-Id: <1344909037-5812-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 1.7.10-rc3
Subject: [PATCH meta-intel] layer.conf: clarify comments
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Aug 2012 01:50:44 -0000

From: Trevor Woerner <twoerner@gmail.com>

The recipes are no longer stored in a "packages" directory but in directories
under recipes-*.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/layer.conf              |    2 +-
 meta-emenlow/conf/layer.conf |    2 +-
 meta-n450/conf/layer.conf    |    2 +-
 meta-tlk/conf/layer.conf     |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index a5db163..190d0b2 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,7 +1,7 @@
 # We have a conf and classes directory, add to BBPATH
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/common/recipes-*/*/*.bb \
             ${LAYERDIR}/common/recipes-*/*/*.bbappend"
 
diff --git a/meta-emenlow/conf/layer.conf b/meta-emenlow/conf/layer.conf
index dda80c0..a49ec47 100644
--- a/meta-emenlow/conf/layer.conf
+++ b/meta-emenlow/conf/layer.conf
@@ -1,7 +1,7 @@
 # We have a conf and classes directory, add to BBPATH
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
diff --git a/meta-n450/conf/layer.conf b/meta-n450/conf/layer.conf
index 2c905c2..4481121 100644
--- a/meta-n450/conf/layer.conf
+++ b/meta-n450/conf/layer.conf
@@ -1,7 +1,7 @@
 # We have a conf and classes directory, add to BBPATH
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
diff --git a/meta-tlk/conf/layer.conf b/meta-tlk/conf/layer.conf
index 9af646f..fc0da61 100644
--- a/meta-tlk/conf/layer.conf
+++ b/meta-tlk/conf/layer.conf
@@ -1,6 +1,6 @@
 # We have a conf and classes directory, add to BBPATH
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
-- 
1.7.10-rc3



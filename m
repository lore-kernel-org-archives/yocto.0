Return-Path: <>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B05E8E002AC
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 18:50:03 -0700 (PDT)
Received: by ggke5 with SMTP id e5so3419298ggk.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 18:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=CXcQ7KY5eEdLVGjhNe6nmBFqGoOGsurbsjqbFby3jCQ=;
	b=Fx7Zc68IhFeCYWaSP5B9DgrJqhTjazxLb8lxxO+GRZsqqVKb7RHlr2XLR859czgYWD
	jOV9+R1tLJhu3/ErVqGgEwbI6puTTgAQ/wGnPo+40BG7iwYUVvaGW5CBzboljWvnRzGE
	0m30UIBN2PkvUKE5pbm8nkhNn3PN/4KE0EmI/OtGsnXajLTxU6Q2z2+PTvAJcXqZ71MR
	oSV6BCu/s3rVaHVa0MBUZtoRSpLU3H3m7we/uep3L5WJl38JEE9q/XHMerkIKBfZertT
	OOB3+JeD7F4aO9+9hJ8atiSRmJbb6wyI8pmi2sZyk++AkY19mII9H/w27mBh/c9uJ22Q
	k42Q==
Received: by 10.101.6.24 with SMTP id j24mr4188715ani.5.1344909003036;
	Mon, 13 Aug 2012 18:50:03 -0700 (PDT)
Received: from localhost.localdomain (dsl-67-55-9-50.acanac.net. [67.55.9.50])
	by mx.google.com with ESMTPS id t57sm2373324yhg.0.2012.08.13.18.50.00
	(version=SSLv3 cipher=OTHER); Mon, 13 Aug 2012 18:50:02 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Aug 2012 21:49:40 -0400
Message-Id: <1344908980-5598-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 1.7.10-rc3
Subject: [PATCH poky] layer.conf: clarify comments
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
X-List-Received-Date: Tue, 14 Aug 2012 01:50:03 -0000

From: Trevor Woerner <twoerner@gmail.com>

The recipes are no longer stored in a "packages" directory but in directories
under recipes-*.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml |    2 +-
 meta-hob/conf/layer.conf                             |    2 +-
 meta-skeleton/conf/layer.conf                        |    2 +-
 meta-yocto/conf/layer.conf                           |    2 +-
 meta/conf/layer.conf                                 |    2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index b8708ff..c2b0f7c 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -99,7 +99,7 @@
      # We have a conf and classes directory, add to BBPATH
      BBPATH := "${LAYERDIR}:${BBPATH}"
 
-     # We have a packages directory, add to BBFILES
+     # We have recipes-* directories, add to BBFILES
      BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
                  ${LAYERDIR}/recipes-*/*/*.bbappend"
 
diff --git a/meta-hob/conf/layer.conf b/meta-hob/conf/layer.conf
index 5f5eb82..2f32f53 100644
--- a/meta-hob/conf/layer.conf
+++ b/meta-hob/conf/layer.conf
@@ -1,7 +1,7 @@
 # We have a conf and classes directory, add to BBPATH
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb"
 
 BBFILE_COLLECTIONS += "hob"
diff --git a/meta-skeleton/conf/layer.conf b/meta-skeleton/conf/layer.conf
index edb31dd..ad702b6 100644
--- a/meta-skeleton/conf/layer.conf
+++ b/meta-skeleton/conf/layer.conf
@@ -1,7 +1,7 @@
 # We have a conf and classes directory, add to BBPATH
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb"
 
 BBFILE_COLLECTIONS += "skeleton"
diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index 7917962..a44eac8 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -1,7 +1,7 @@
 # We have a conf and classes directory, add to BBPATH
 BBPATH := "${LAYERDIR}:${BBPATH}"
 
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
diff --git a/meta/conf/layer.conf b/meta/conf/layer.conf
index 090c8e2..a1d75a3 100644
--- a/meta/conf/layer.conf
+++ b/meta/conf/layer.conf
@@ -1,6 +1,6 @@
 # We have a conf and classes directory, add to BBPATH
 BBPATH .= ":${LAYERDIR}"
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb"
 
 BBFILE_COLLECTIONS += "normal"
-- 
1.7.10-rc3



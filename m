Return-Path: <raj.khem@gmail.com>
Received: from mail-da0-f45.google.com (mail-da0-f45.google.com
	[209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33E17E006CC
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 19:51:15 -0800 (PST)
Received: by mail-da0-f45.google.com with SMTP id w4so7268599dam.18
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2013 19:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=5ukOk1Gxj1BzstCOUruzA9SVcn+OMzQ11pYAmH7xmv4=;
	b=WsNKO8Mh9249BlqWWgycLtq6sTj0mm6BFlpaXqXfeWMsXgNh/OmL6fxhbJ1HWJSqYf
	/BTR//hskPEcfsuoyj9B25Y9qMMa/gfAnKEmSEDcxoWHtgExdpSt/DtVS5YP566SFZAm
	OfEBpxqF3dQext2vWQQ/uffgvqbBwu4e+dyeZJ/OgjHpPmyvv9duzxijA+7va3OjLKon
	v/LIpgEYQlcKjZHc82h4M0/KiNf3EfPbjVVQKXE7qXYzbhrXnrP/b3PNH0n3TIW+xFei
	9yGzUG4PJSH/4s0i0itEPL7sPf0UsZe6sX8D5JS6w7ZB7gEjKGBBgOKWcCSS0HxL9AkK
	XqDQ==
X-Received: by 10.66.82.200 with SMTP id k8mr151140352pay.56.1357271474908;
	Thu, 03 Jan 2013 19:51:14 -0800 (PST)
Received: from agate.agate.openembedded.org (oldbuilder.nslu2-linux.org.
	[140.211.169.168])
	by mx.google.com with ESMTPS id kb3sm31432367pbc.27.2013.01.03.19.51.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 Jan 2013 19:51:14 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  3 Jan 2013 19:50:30 -0800
Message-Id: <1357271430-31116-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-intel][PATCH] layer.conf: Use .= for adding to BBPATH and += to BBFILES
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
X-List-Received-Date: Fri, 04 Jan 2013 03:51:15 -0000

Fixes parsing errors which is appearing after this commit to
meta-openembedded

http://cgit.openembedded.org/meta-openembedded/commit/?id=3c21a46020bd0816579648f684c41dbd6333583e

This triggers
exception NameError: name 'base_contains' is not defined
without this change

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/layer.conf                    |    4 ++--
 meta-cedartrail/conf/layer.conf    |    4 ++--
 meta-chiefriver/conf/layer.conf    |    4 ++--
 meta-crownbay/conf/layer.conf      |    4 ++--
 meta-crystalforest/conf/layer.conf |    4 ++--
 meta-emenlow/conf/layer.conf       |    4 ++--
 meta-fri2/conf/layer.conf          |    4 ++--
 meta-jasperforest/conf/layer.conf  |    4 ++--
 meta-n450/conf/layer.conf          |    4 ++--
 meta-nuc/conf/layer.conf           |    4 ++--
 meta-romley/conf/layer.conf        |    4 ++--
 meta-sugarbay/conf/layer.conf      |    4 ++--
 meta-sys940x/conf/layer.conf       |    4 ++--
 meta-tlk/conf/layer.conf           |    4 ++--
 14 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index e9c2b10..31132ab 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have recipes-* directories, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/common/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/common/recipes-*/*/*.bb \
             ${LAYERDIR}/common/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "intel"
diff --git a/meta-cedartrail/conf/layer.conf b/meta-cedartrail/conf/layer.conf
index c19c4c1..0166b35 100644
--- a/meta-cedartrail/conf/layer.conf
+++ b/meta-cedartrail/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "cedartrail"
diff --git a/meta-chiefriver/conf/layer.conf b/meta-chiefriver/conf/layer.conf
index 5dc3c02..6164f99 100644
--- a/meta-chiefriver/conf/layer.conf
+++ b/meta-chiefriver/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "chiefriver"
diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
index cb17298..e6cc2a0 100644
--- a/meta-crownbay/conf/layer.conf
+++ b/meta-crownbay/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "crownbay"
diff --git a/meta-crystalforest/conf/layer.conf b/meta-crystalforest/conf/layer.conf
index 6b802d6..daa2ba7 100644
--- a/meta-crystalforest/conf/layer.conf
+++ b/meta-crystalforest/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "crystalforest"
diff --git a/meta-emenlow/conf/layer.conf b/meta-emenlow/conf/layer.conf
index a49ec47..b5832e4 100644
--- a/meta-emenlow/conf/layer.conf
+++ b/meta-emenlow/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have recipes-* directories, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "emenlow"
diff --git a/meta-fri2/conf/layer.conf b/meta-fri2/conf/layer.conf
index 4d140f9..0bb29a1 100644
--- a/meta-fri2/conf/layer.conf
+++ b/meta-fri2/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "fri2"
diff --git a/meta-jasperforest/conf/layer.conf b/meta-jasperforest/conf/layer.conf
index 09f1647..b539733 100644
--- a/meta-jasperforest/conf/layer.conf
+++ b/meta-jasperforest/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES .= "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "jasperforest"
diff --git a/meta-n450/conf/layer.conf b/meta-n450/conf/layer.conf
index 4481121..ee53e54 100644
--- a/meta-n450/conf/layer.conf
+++ b/meta-n450/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have recipes-* directories, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "n450"
diff --git a/meta-nuc/conf/layer.conf b/meta-nuc/conf/layer.conf
index fb5b58a..174411f 100644
--- a/meta-nuc/conf/layer.conf
+++ b/meta-nuc/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "nuc"
diff --git a/meta-romley/conf/layer.conf b/meta-romley/conf/layer.conf
index 8ce1a4d..7b6a5bc 100644
--- a/meta-romley/conf/layer.conf
+++ b/meta-romley/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "romley"
diff --git a/meta-sugarbay/conf/layer.conf b/meta-sugarbay/conf/layer.conf
index eb8ec45..9576330 100644
--- a/meta-sugarbay/conf/layer.conf
+++ b/meta-sugarbay/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "sugarbay"
diff --git a/meta-sys940x/conf/layer.conf b/meta-sys940x/conf/layer.conf
index 5d588ad..b14be6d 100644
--- a/meta-sys940x/conf/layer.conf
+++ b/meta-sys940x/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "sys940x"
diff --git a/meta-tlk/conf/layer.conf b/meta-tlk/conf/layer.conf
index fc0da61..38b0e0c 100644
--- a/meta-tlk/conf/layer.conf
+++ b/meta-tlk/conf/layer.conf
@@ -1,6 +1,6 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have recipes-* directories, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
-- 
1.7.9.5



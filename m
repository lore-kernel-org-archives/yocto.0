Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D5BDE006AD
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2012 11:31:16 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so15459414pbb.35
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2012 11:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=SgL2+lQ10yzMdvs7n4w3OuTjCG8k+RbfXIMrEok2aPk=;
	b=Xt2LOJg2s3J9S8iK8URQgkL+mNP/R+xDEvBy18C+K9l5Cer3xa3ttN+DfPJ3RpodJD
	h5oMrQVS2v1NPph4QohuxQWkO/c4Yu4TU9CRDGdiWwe5iIxz+eIDxUv+TKMsAKsB3K8f
	hSbn3gmORaZouGP3i6+mqtmS95eEYCplMITI0CgoBCRj0IXiQBdVkdUBkHIJTF0aOog5
	yK3wPpbivGClgtEWrgq1u/sY3s5C0uBETSkvsQ9oShSFn2PKHnAKwscMa5/Of+l7XGw6
	CzfTuqxXNN0QCV9/+LoeEWF6aQl3iSQh9aCwluA3649XK+OCHLm4gajGChOkJ22cIjda
	1KgA==
Received: by 10.68.238.166 with SMTP id vl6mr29924658pbc.96.1341513076324;
	Thu, 05 Jul 2012 11:31:16 -0700 (PDT)
Received: from agate.agate.openembedded.org (oldbuilder.nslu2-linux.org.
	[140.211.169.168])
	by mx.google.com with ESMTPS id pe8sm16879763pbc.76.2012.07.05.11.31.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 Jul 2012 11:31:15 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Jul 2012 11:30:49 -0700
Message-Id: <1341513049-28921-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-fsl-ppc][PATCH] recipes: Bring bbappends in line with OE-Core/master
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
X-List-Received-Date: Thu, 05 Jul 2012 18:31:16 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-append/libxml/libxml2_2.7.8.bbappend |    3 ---
 recipes-append/libxml/libxml2_2.8.0.bbappend |    3 +++
 recipes-append/netbase/netbase_4.47.bbappend |   10 ----------
 recipes-append/netbase/netbase_5.0.bbappend  |   10 ++++++++++
 recipes-kernel/linux/linux-qoriq-sdk.bb      |    2 --
 5 files changed, 13 insertions(+), 15 deletions(-)
 delete mode 100644 recipes-append/libxml/libxml2_2.7.8.bbappend
 create mode 100644 recipes-append/libxml/libxml2_2.8.0.bbappend
 delete mode 100644 recipes-append/netbase/netbase_4.47.bbappend
 create mode 100644 recipes-append/netbase/netbase_5.0.bbappend

diff --git a/recipes-append/libxml/libxml2_2.7.8.bbappend b/recipes-append/libxml/libxml2_2.7.8.bbappend
deleted file mode 100644
index 9b3f7f6..0000000
--- a/recipes-append/libxml/libxml2_2.7.8.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-EXTRA_OECONF += "--with-fexceptions"
-
-PR .= "+${DISTRO}.0"
diff --git a/recipes-append/libxml/libxml2_2.8.0.bbappend b/recipes-append/libxml/libxml2_2.8.0.bbappend
new file mode 100644
index 0000000..9b3f7f6
--- /dev/null
+++ b/recipes-append/libxml/libxml2_2.8.0.bbappend
@@ -0,0 +1,3 @@
+EXTRA_OECONF += "--with-fexceptions"
+
+PR .= "+${DISTRO}.0"
diff --git a/recipes-append/netbase/netbase_4.47.bbappend b/recipes-append/netbase/netbase_4.47.bbappend
deleted file mode 100644
index 837cd20..0000000
--- a/recipes-append/netbase/netbase_4.47.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-SRC_URI += "file://71-fsl-dpaa-persistent-networking.rules"
-
-do_install_append () {
-	install -d ${D}${sysconfdir}/udev/rules.d/
-	install -m 0644 ${WORKDIR}/71-fsl-dpaa-persistent-networking.rules ${D}${sysconfdir}/udev/rules.d
-}
-
-PR .= "+${DISTRO}"
diff --git a/recipes-append/netbase/netbase_5.0.bbappend b/recipes-append/netbase/netbase_5.0.bbappend
new file mode 100644
index 0000000..837cd20
--- /dev/null
+++ b/recipes-append/netbase/netbase_5.0.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+SRC_URI += "file://71-fsl-dpaa-persistent-networking.rules"
+
+do_install_append () {
+	install -d ${D}${sysconfdir}/udev/rules.d/
+	install -m 0644 ${WORKDIR}/71-fsl-dpaa-persistent-networking.rules ${D}${sysconfdir}/udev/rules.d
+}
+
+PR .= "+${DISTRO}"
diff --git a/recipes-kernel/linux/linux-qoriq-sdk.bb b/recipes-kernel/linux/linux-qoriq-sdk.bb
index 6784f45..fb2ff4a 100644
--- a/recipes-kernel/linux/linux-qoriq-sdk.bb
+++ b/recipes-kernel/linux/linux-qoriq-sdk.bb
@@ -11,5 +11,3 @@ kernel_do_configure_prepend() {
 	# copy desired defconfig so we pick it up for the real kernel_do_configure
 	cp ${KERNEL_DEFCONFIG} ${B}/.config
 }
-
-require recipes-kernel/linux/linux-tools.inc
-- 
1.7.9.5



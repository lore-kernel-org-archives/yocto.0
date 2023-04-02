Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5155BC76196
	for <webhook@archiver.kernel.org>; Sun,  2 Apr 2023 20:00:00 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.53058.1680465590289380370
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Apr 2023 12:59:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=cWw+mUJp;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-54606036bb3so350074237b3.6
        for <yocto@lists.yoctoproject.org>; Sun, 02 Apr 2023 12:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680465589; x=1683057589;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=YG8dmJ6l3gqD0rkGTl0McnbQ9h+oKuI7xRzJ5D1xBuI=;
        b=cWw+mUJpbbiGyf8qufzADz5xS4cgxuvBPZoY0zfzhJ6jxw6LakTk/Md3PQkrMTF89e
         L8ECp8jPgN3Vb+ZXroYcedb2zlBf8DnFFBnjxb0lFzpiiKg0uNlQjNfgWmyvxj6q/aJJ
         cJ6zC0EzDDblN8LlrwRDlbn1tNgkGHJjqYQVMYU8MK5tNeKqSIwu9BJxN2Fb8wVbzrmG
         a7AAdI6fuRhAtw1Uf3VfmzQmOGGl3Dd/V+KxqCEZyKdZSRWSP+0CinGf/j9Ue0LO07SA
         q3OaAVvSveYvJ2PGLmAlo1nV3tSFj1j/WH39ovQVwIRb+Fu5Xj4V0VDUxchvQTKk9eeM
         gcvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680465589; x=1683057589;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YG8dmJ6l3gqD0rkGTl0McnbQ9h+oKuI7xRzJ5D1xBuI=;
        b=CbVU/9xwkg43T/DJoJkCTwQ9+UgD7kLnXa4a2fJSlhioUIgEGhlQg9QRu+e7Lccr/6
         SECQ5o4xf6Nbj17FHdg1Fa9R2PPljCJ/6Ra9QdkLBEnCbTgmb3s+fgaU6Z4QhDJjeLsf
         ynUzKNVJ3deEEnKcViXbDaPecN16d2kyLraRLvMHBfcudMcnsIvBEQmMFs4K8WwE2u3E
         zWmFI0vFwVd1cgMNufWV6mpmTEeK3W44sa2L8BiE+Unj4dANJhjn/s/juPB4zGycw4n0
         N745fS746sxHd+JWnWlU5NCRqhutE/DgnjwIxDfTesrhQyarBZsImlZgAIPZlzThqrup
         47Rw==
X-Gm-Message-State: AAQBX9cLL8luTIaGpTILcvG8h4nK1xljqBJvkiHYa9eE/6GMH772gA+B
	KK8Vk90m98mVPXzxewtCWj5tpOK9aYU1zg==
X-Google-Smtp-Source: AKy350b7gQfvFatov+eg4Wn7TOvesAwicZEg8aPI2ouWz5fZ6+EvemaHYLMYWuJcJ7Zo73YgmhiS8A==
X-Received: by 2002:a81:9211:0:b0:527:a383:9667 with SMTP id j17-20020a819211000000b00527a3839667mr33458748ywg.40.1680465589029;
        Sun, 02 Apr 2023 12:59:49 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:5721:594d:dca6:d109])
        by smtp.gmail.com with ESMTPSA id h30-20020a81b65e000000b00545a08184fesm2023056ywk.142.2023.04.02.12.59.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Apr 2023 12:59:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] checksecurity: update to 2.0.16
Date: Sun,  2 Apr 2023 15:59:45 -0400
Message-Id: <20230402195945.1782816-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Apr 2023 20:00:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59590

Drop setuid-log-folder.patch, using sed instead.
Refresh patch check-setuid-use-more-portable-find-args.patch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...rity_2.0.15.bb => checksecurity_2.0.16.bb} | 18 +++++--
 ...k-setuid-use-more-portable-find-args.patch | 16 +++---
 .../files/setuid-log-folder.patch             | 52 -------------------
 3 files changed, 21 insertions(+), 65 deletions(-)
 rename dynamic-layers/meta-perl/recipes-scanners/checksecurity/{checksecurity_2.0.15.bb => checksecurity_2.0.16.bb} (57%)
 delete mode 100644 dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/setuid-log-folder.patch

diff --git a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.15.bb b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb
similarity index 57%
rename from dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
rename to dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb
index e053a15..8006c9f 100644
--- a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
+++ b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.16.bb
@@ -4,14 +4,22 @@ SECTION = "security"
 LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"
 
-SRC_URI = "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/checksecurity_${PV}.tar.gz \
-           file://setuid-log-folder.patch \
-           file://check-setuid-use-more-portable-find-args.patch"
+SRC_URI = "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/checksecurity_${PV}+nmu1.tar.gz \
+           file://check-setuid-use-more-portable-find-args.patch \
+          "
 
-SRC_URI[md5sum] = "a30161c3e24d3be710b2fd13fcd1f32f"
-SRC_URI[sha256sum] = "67abe3d6391c96146e96f376d3fd6eb7a9418b0f7fe205b465219889791dba32"
+SRC_URI[sha256sum] = "9803b3760e9ec48e06ebaf48cec081db48c6fe72254a476224e4c5c55ed97fb0"
+
+S = "${WORKDIR}/checksecurity-${PV}+nmu1"
+
+
+# allow for anylocal, no need to patch
+LOGDIR="/etc/checksecurity"
 
 do_compile() {
+    sed -i -e "s;LOGDIR=/var/log/setuid;LOGDIR=${LOGDIR};g" ${B}/etc/check-setuid.conf
+    sed -i -e "s;LOGDIR=/var/log/setuid;LOGDIR=${LOGDIR};g" ${B}/plugins/check-setuid
+    sed -i -e "s;LOGDIR:=/var/log/setuid;LOGDIR:=${LOGDIR};g" ${B}/plugins/check-setuid
 }
 
 do_install() {
diff --git a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
index f1fe8ed..1a2f364 100644
--- a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
+++ b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
@@ -8,16 +8,16 @@ Signed-off-by: Christopher Larson <chris_larson@mentor.com>
  plugins/check-setuid | 6 +++---
  1 file changed, 3 insertions(+), 3 deletions(-)
 
-Index: checksecurity-2.0.15/plugins/check-setuid
+Index: checksecurity-2.0.16+nmu1/plugins/check-setuid
 ===================================================================
---- checksecurity-2.0.15.orig/plugins/check-setuid	2018-09-06 00:49:23.930934294 +0500
-+++ checksecurity-2.0.15/plugins/check-setuid	2018-09-06 00:49:49.694934757 +0500
-@@ -99,7 +99,7 @@
- ionice -t -c3 \
+--- checksecurity-2.0.16+nmu1.orig/plugins/check-setuid
++++ checksecurity-2.0.16+nmu1/plugins/check-setuid
+@@ -100,7 +100,7 @@ ionice -t -c3 \
  find `mount | grep -vE "$CHECKSECURITY_FILTER" | cut -d ' ' -f 3` \
+         -ignore_readdir_race  \
  	-xdev $PATHCHK \
--	\( -type f -perm +06000 -o \( \( -type b -o -type c \) \
-+	\( -type f \( -perm -4000 -o -perm -2000 \) -o \( \( -type b -o -type c \) \
+-	\( -type f -perm /06000 -o \( \( -type b -o -type c \) \
++    \( -type f \( -perm -4000 -o -perm -2000 \) -o \( \( -type b -o -type c \) \	
  	$DEVCHK \) \) \
-         -ignore_readdir_race  \
  	-printf "%8i %5m %3n %-10u %-10g %9s %t %h/%f\n" |
+ 	sort -k 12 >$TMPSETUID
diff --git a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/setuid-log-folder.patch b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/setuid-log-folder.patch
deleted file mode 100644
index 540ea9c..0000000
--- a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/setuid-log-folder.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From 24dbeec135ff83f2fd35ef12fe9842f02d6fd337 Mon Sep 17 00:00:00 2001
-From: Andrei Dinu <andrei.adrianx.dinu@intel.com>
-Date: Thu, 20 Jun 2013 15:14:55 +0300
-Subject: [PATCH] changed log folder for check-setuid
-
-check-setuid was creating logs in /var/log directory,
-which cannot be created persistently. To avoid errors
-the log folder was changed to /etc/checksecurity/.
-
-Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
----
- etc/check-setuid.conf |    2 +-
- plugins/check-setuid  |    6 +++---
- 2 files changed, 4 insertions(+), 4 deletions(-)
-
-diff --git a/etc/check-setuid.conf b/etc/check-setuid.conf
-index 621336f..e1532c0 100644
---- a/etc/check-setuid.conf
-+++ b/etc/check-setuid.conf
-@@ -116,4 +116,4 @@ CHECKSECURITY_PATHFILTER="-false"
- #
- # Location of setuid file databases. 
- #
--LOGDIR=/var/log/setuid
-+LOGDIR=/etc/checksecurity/
-diff --git a/plugins/check-setuid b/plugins/check-setuid
-index 8d6f90b..bdb21c1 100755
---- a/plugins/check-setuid
-+++ b/plugins/check-setuid
-@@ -44,8 +44,8 @@ if [ `/usr/bin/id -u` != 0 ] ; then
-    exit 1
- fi
- 
--TMPSETUID=${LOGDIR:=/var/log/setuid}/setuid.new.tmp
--TMPDIFF=${LOGDIR:=/var/log/setuid}/setuid.diff.tmp
-+TMPSETUID=${LOGDIR:=/etc/checksecurity/}/setuid.new.tmp
-+TMPDIFF=${LOGDIR:=/etc/checksecurity/}/setuid.diff.tmp
- 
- #
- # Check for NFS/AFS mounts that are not nosuid/nodev
-@@ -75,7 +75,7 @@ if [ "$CHECKSECURITY_NOFINDERRORS" = "TRUE" ] ; then
- fi
- 
- # Guard against undefined vars
--[ -z "$LOGDIR" ] && LOGDIR=/var/log/setuid
-+[ -z "$LOGDIR" ] && LOGDIR=/etc/checksecurity/
- if [ ! -e "$LOGDIR" ] ; then
-     echo "ERROR: Log directory $LOGDIR does not exist"
-     exit 1
--- 
-1.7.9.5
-
-- 
2.25.1



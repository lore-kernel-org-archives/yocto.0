Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0151E0140A;
	Wed, 15 May 2013 21:59:01 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id g10so1955915pdj.8
	for <multiple recipients>; Wed, 15 May 2013 21:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=J/+c5F8xQeo+RGW9Yql3Ym1CbNnXc6hKXPYrvwKZA08=;
	b=mglHe/+/LtG1xznVMBlhpe9KOYA5Ir1Y14rh2NketPlttwr6RrUB494HTIjJP7yMDx
	9LdvHwt2HsKmiFr3UBjTq/W82XcSN9E03KKJaTbCM0Mxm0FcWleZ9AFb5QG3uI1KqZzq
	8tC7NmLDKzfhG2cwUjel1dYaY3agwV29M4K0GJhycUHxIMS0lOzji8OFCMmaQ1h1mhG9
	S9l6BxTf7o4Vul/9ywhNhx2ja2sGGp91YhdtcWhLyobvpN2bsL0r/ZTQbJusgEQalBsz
	jIM8E3mhmVLmYLdLLv86ZJ+tf2OIv0LHVKnW9RQe6YQeoKZz0aZXAnK/QwnMKNJ/qOZK
	FB6w==
X-Received: by 10.66.148.201 with SMTP id tu9mr41596822pab.56.1368680341576;
	Wed, 15 May 2013 21:59:01 -0700 (PDT)
Received: from isis.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPSA id ov2sm5266994pbc.34.2013.05.15.21.59.00
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 15 May 2013 21:59:00 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: meta-intel@yoctoproject.org,
	yocto@yoctoproject.org
Date: Wed, 15 May 2013 21:57:19 -0700
Message-Id: <1368680239-26344-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [meta-intel][PATCH] tiny-init: Drop the bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 16 May 2013 04:59:01 -0000

init file which it was providing is ditto as meta-yocto
so bbappend is redundant plus it gets rid of following warning
for non poky distros.

WARNING: No recipes available for:
  /builds1/meta-intel/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend

Signed-off-by: Khem Raj <raj.khem@gmail.com>
CC: Darren Hart <dvhart@linux.intel.com>
---
 .../recipes-core/tiny-init/tiny-init.bbappend      |    6 -----
 meta-fri2/recipes-core/tiny-init/tiny-init/init    |   26 --------------------
 2 files changed, 32 deletions(-)
 delete mode 100644 meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
 delete mode 100644 meta-fri2/recipes-core/tiny-init/tiny-init/init

diff --git a/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend b/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
deleted file mode 100644
index 89416dc..0000000
--- a/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
+++ /dev/null
@@ -1,6 +0,0 @@
-# Update the init script for the tiny image to manually mount devtmpfs and
-# ensure the ttyPCH1 device is available for the console.
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
- 
-PRINC := "${@int(PRINC) + 1}"
diff --git a/meta-fri2/recipes-core/tiny-init/tiny-init/init b/meta-fri2/recipes-core/tiny-init/tiny-init/init
deleted file mode 100644
index 4b78f01..0000000
--- a/meta-fri2/recipes-core/tiny-init/tiny-init/init
+++ /dev/null
@@ -1,26 +0,0 @@
-#!/bin/sh
-
-# Mount the Linux kernel virtual filesystems
-mount none -t proc /proc
-mount none -t sysfs /sys
-
-# Ensure devtmpfs is mounted, it must be done manually with initramfs
-mount none -t devtmpfs /dev
-
-# Setup PTY infrastructure
-mkdir /dev/pts
-mount none -t devpts /dev/pts
-
-ifup lo
-
-# Allow for distro or local customizations
-if [ -f /etc/rc.local ] ; then
-	source /etc/rc.local
-fi
-
-# Become session leader and try to find a real tty (e.g. ttyS0)
-while true; do
-	setsid cttyhack sh
-	echo "Console sh exited with $?, respawning..."
-	sleep 1
-done
-- 
1.7.9.5



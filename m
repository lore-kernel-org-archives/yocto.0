Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66C02E00C64; Tue, 22 Dec 2015 17:41:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4852E00736
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 17:41:18 -0800 (PST)
Received: by mail-pa0-f45.google.com with SMTP id jx14so97728970pad.2
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 17:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=tUARGnAUWFIzomrYFmXIrI8qHslYYzCup3+WI/sKGjY=;
	b=broylQZk+9gEQQ6StGcEkz635q4zaM2p+mBqcAKg7BpRU4D9u38lsfwCP3MAjRcePO
	VLz19LrGZvP6D3C95U5AEjG6IJX0TiY45dzrr0x0LkpfU2/cl37/SS9cAYu418xQU/3B
	4xdfWVDxXAoW6e1Xnv8v5eoSbk4hYSYoRjoBT3RrGlFTEZFWp1+6USM+8GY+2JFPUPP5
	By3dFr4jDIbAZF6F8/BNZsnJwIKrtHN0T9sVPo+nk8E0vpIyvvwB8YU1Skdm27tGL4pl
	z7IG5jdrrWspwkofX5wLg2nZgBMuJv3zCsNKJ0KMEORbuJBjYr4ep1kDiuTBWp7lyhBV
	aC6A==
X-Received: by 10.66.102.37 with SMTP id fl5mr40116723pab.24.1450834878385;
	Tue, 22 Dec 2015 17:41:18 -0800 (PST)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	l80sm18441716pfi.76.2015.12.22.17.41.16 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 22 Dec 2015 17:41:17 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Dec 2015 17:41:13 -0800
Message-Id: <1450834875-4520-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH 1/3] Samhain: package update to 4.1.2
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
X-List-Received-Date: Wed, 23 Dec 2015 01:41:22 -0000

4.1.1 Changes:
 - Fix for broken libwrap support.
 - Fix for broken baseline update (-t update) on FreeBSD and maybe other non GNU/Linux systems.
 - Fix for ungraceful handling of rotated logiles if logfile content is always zero or constant.
 - Fix for timezone offset calculation on month rollover for timezones west of GMT.

4.1.2 Changes:
 - Fix for broken rpm / rpm-light makefile targets.
 - Fix for the failure to detect open UDP ports sometimes.
 - Fix for reporting file changes with the wrong policy if both inotify is
   used and the file change occurs during a configuration reload.
 - New configure options --enable-posix-acl and --enable-selinux to turn the
   soft failure (no support for checking compiled in) into a hard failure
   if required headers/libraries are missing for this feature.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/{samhain-server_4.1.0.bb => samhain-server_4.1.2.bb}      | 2 ++
 recipes-security/samhain/samhain.inc                                  | 4 ++--
 2 files changed, 4 insertions(+), 2 deletions(-)
 rename recipes-security/samhain/{samhain-server_4.1.0.bb => samhain-server_4.1.2.bb} (91%)

diff --git a/recipes-security/samhain/samhain-server_4.1.0.bb b/recipes-security/samhain/samhain-server_4.1.2.bb
similarity index 91%
rename from recipes-security/samhain/samhain-server_4.1.0.bb
rename to recipes-security/samhain/samhain-server_4.1.2.bb
index 41646e6..df78f63 100644
--- a/recipes-security/samhain/samhain-server_4.1.0.bb
+++ b/recipes-security/samhain/samhain-server_4.1.2.bb
@@ -16,6 +16,8 @@ PACKAGECONFIG[logwatch]  = "--enable-login-watch,"" , "
 PACKAGECONFIG[mounts]  = "--enable-mounts-check","" , "
 PACKAGECONFIG[userfiles]  = "--enable-userfiles","" , "
 PACKAGECONFIG[ipv6]  = "--enable-ipv6,"--disable-ipv6","
+PACKAGECONFIG[selinux] = "--enable-selinux, --disable-selinux"
+PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl"
 
 SRC_URI += "file://samhain-server-volatiles"
 
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 8114f42..9525229 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -9,8 +9,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.default \
 	  "
 
-SRC_URI[md5sum] = "fcb59c6c8a1d30cc6ffc21557a0046d3"
-SRC_URI[sha256sum] = "a8e10454782a7f3bb5f709dd05cee695ffbd052afc709668a3e7c4b629771189"
+SRC_URI[md5sum] = "9112612fe569a0c92c7479ed2ef3b6f0"
+SRC_URI[sha256sum] = "bb32321b3dc8450351d99e90d25182a029bef1e46b9a0439ade1ca0a744eadb8"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
2.3.5



Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82AA2E009F8; Sat, 18 Feb 2017 11:28:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 667B9E009F5
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 11:28:54 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id a123so5097480pgc.3
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 11:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=ewxfU21oEsTIj18tk6ZRa+TNdi+1WJZhjmEHcLesiFA=;
	b=VxtWrodzhwjXqzpPEevMIbD/XBSV7EYUvHbIX4EYBuONv4nRYaL2yCatWUNqJZJqun
	knkunraqncbtqxmQrQl2drOe9tB6GFlWqR+ZF4HviMhVRXk67i9a6SMf1z6PJNsks2I8
	BNDauCayBR3oRnvxXJAcjBABuY+6BT+I3kgKkxDDHmdBCPxBAQBlX/WpuYrcjhfqys/y
	m7kn+zOgOVNwW9+X1U4cxagtk3GQwC2m3P+QccFxhHRszOBtLx9xIcrlg6cNXJRyLygx
	EeJImPszVRcHhT67reTouAK6Ad2IAjqD/jIMTE72QDNDeYevlp/FTIcbv7bALTa15sUH
	tf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=ewxfU21oEsTIj18tk6ZRa+TNdi+1WJZhjmEHcLesiFA=;
	b=NS/bmAUOQiJdnPk8bVfi7tZ5NhyiM02XzGXd2kx3IpmbzZP3cOIuvbijuE2bAYKClZ
	W8PwYJnwIRQrKxXkK8dU2TRhBYNaDiW1Rw/Cno+oKJADS12AqnrhzVG/ShanGDmax32e
	HVkUtOSwHmo5JnDyhA+829bv88BeazY7CnTXK23kw25ka1CMvvsbrJiHUIsWJUgdYOrA
	OBCPMgpFyDMHOGbxnm1avSrTk7AnVCQTD153M9eddfenDxaO8NPS5xU5EBMFkpapxEk2
	NOofkd72Ba1JBpLIwlaJbkADDPh+T1r2YAHaIYHISO1HcVYAuSjABP2Xjvu/TsFjQ3dp
	qLSA==
X-Gm-Message-State: AMke39mjxWzhYzf1ITTQRJRrVRcKtzCClXkA8zfsVmQrJBzhQXzZ+revGkFeialuipbfrg==
X-Received: by 10.99.36.7 with SMTP id k7mr17810996pgk.199.1487446133482;
	Sat, 18 Feb 2017 11:28:53 -0800 (PST)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:1439:2a9a:604f:51bd])
	by smtp.gmail.com with ESMTPSA id
	p129sm26502475pfp.118.2017.02.18.11.28.52
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Feb 2017 11:28:52 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 11:28:51 -0800
Message-Id: <1487446131-3925-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] libtpm: Fix arm build issues
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
X-List-Received-Date: Sat, 18 Feb 2017 19:28:57 -0000

backport two upstream patches and remove local verison

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../Convert-another-vdprintf-to-dprintf.patch      | 26 +++++++++++++++++
 .../files/Use-format-s-for-call-to-dprintf.patch   | 33 ++++++++++++++++++++++
 recipes-tpm/libtpm/files/fix_dprintf_issue.patch   | 18 ------------
 recipes-tpm/libtpm/libtpm_1.0.bb                   |  3 +-
 4 files changed, 61 insertions(+), 19 deletions(-)
 create mode 100644 recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
 create mode 100644 recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
 delete mode 100644 recipes-tpm/libtpm/files/fix_dprintf_issue.patch

diff --git a/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch b/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
new file mode 100644
index 0000000..9e1021a
--- /dev/null
+++ b/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
@@ -0,0 +1,26 @@
+From 09e7dd42e5201d079bad70e9f7cc6033ce1c7cad Mon Sep 17 00:00:00 2001
+From: Stefan Berger <stefanb@linux.vnet.ibm.com>
+Date: Fri, 3 Feb 2017 10:58:22 -0500
+Subject: [PATCH] Convert another vdprintf to dprintf
+
+Signed-off-by: Stefan Berger <stefanb@linux.vnet.ibm.com>
+Upstream-Status: Backport
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+---
+ src/tpm_library.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+Index: git/src/tpm_library.c
+===================================================================
+--- git.orig/src/tpm_library.c
++++ git/src/tpm_library.c
+@@ -427,7 +427,7 @@ void TPMLIB_LogPrintfA(unsigned int inde
+             indent = sizeof(spaces) - 1;
+         memset(spaces, ' ', indent);
+         spaces[indent] = 0;
+-        vdprintf(debug_fd, spaces, NULL);
++        dprintf(debug_fd, "%s", spaces);
+     }
+ 
+     va_start(args, format);
diff --git a/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch b/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
new file mode 100644
index 0000000..a71b5c1
--- /dev/null
+++ b/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
@@ -0,0 +1,33 @@
+From 6a9b4e5d70f770aa9ca31e3e6d3b1ae72c192070 Mon Sep 17 00:00:00 2001
+From: Stefan Berger <stefanb@linux.vnet.ibm.com>
+Date: Tue, 31 Jan 2017 20:10:51 -0500
+Subject: [PATCH] Use format '%s' for call to dprintf
+
+Fix the dprintf call to use a format parameter that otherwise causes
+errors with gcc on certain platforms.
+
+Signed-off-by: Stefan Berger <stefanb@linux.vnet.ibm.com>
+
+Upstream-Status: Backport
+replaces local patch
+Signed-off-by: Armin Kuster <akuster@mvsita.com>
+
+---
+ src/tpm_library.c | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+Index: git/src/tpm_library.c
+===================================================================
+--- git.orig/src/tpm_library.c
++++ git/src/tpm_library.c
+@@ -405,8 +405,8 @@ int TPMLIB_LogPrintf(const char *format,
+     }
+ 
+     if (debug_prefix)
+-        dprintf(debug_fd, debug_prefix);
+-    dprintf(debug_fd, buffer);
++        dprintf(debug_fd, "%s", debug_prefix);
++    dprintf(debug_fd, "%s", buffer);
+ 
+     return i;
+ }
diff --git a/recipes-tpm/libtpm/files/fix_dprintf_issue.patch b/recipes-tpm/libtpm/files/fix_dprintf_issue.patch
deleted file mode 100644
index 25760bb..0000000
--- a/recipes-tpm/libtpm/files/fix_dprintf_issue.patch
+++ /dev/null
@@ -1,18 +0,0 @@
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: src/tpm_library.c
-===================================================================
---- git.orig/src/tpm_library.c
-+++ git/src/tpm_library.c
-@@ -405,8 +405,8 @@ int TPMLIB_LogPrintf(const char *format,
-     }
- 
-     if (debug_prefix)
--        dprintf(debug_fd, debug_prefix);
--    dprintf(debug_fd, buffer);
-+        dprintf(debug_fd, "%s" , debug_prefix);
-+    dprintf(debug_fd, "%s" , buffer);
- 
-     return i;
- }
diff --git a/recipes-tpm/libtpm/libtpm_1.0.bb b/recipes-tpm/libtpm/libtpm_1.0.bb
index 449e8c1..f9624f6 100644
--- a/recipes-tpm/libtpm/libtpm_1.0.bb
+++ b/recipes-tpm/libtpm/libtpm_1.0.bb
@@ -5,7 +5,8 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=97e5eea8d700d76b3ddfd35c4c96485f"
 SRCREV = "ad44846dda5a96e269ad2f78a532e01e9a2f02a1"
 SRC_URI = " \
 	git://github.com/stefanberger/libtpms.git \
-	file://fix_dprintf_issue.patch \
+	file://Convert-another-vdprintf-to-dprintf.patch \
+	file://Use-format-s-for-call-to-dprintf.patch \
 	"
 
 S = "${WORKDIR}/git"
-- 
2.7.4



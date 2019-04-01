Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BAFBE00CB9; Sun, 31 Mar 2019 17:38:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0185EE00C38
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 17:38:06 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id j26so3834063pgl.5
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 17:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=YMAUB4bUVUZ1RHD3JeIZwYdha84EBzbD12dXfqdmV+4=;
	b=szwyfZBHI3emOGvVA/u0dK7R2fX/L2OSNXrGs0ESNWFC0hGP35pi387t7u4sfwqMk1
	6F3o8MbKK3ttsAO1i/jZBM0mnZASP2mkjaDxlxOPJU+u/a7jyRDyR2g+sRRttCCrXXRZ
	dXC/oY0GcuIYpMo8QDABsHiujFZ3EiwjQ7wr1pdTvS/5QasNTad9huYWY7iWdvwnlBxF
	8dBittBQKPkzO8bBbJ4lIHHFHZnIBzBdDA++fviuATln9q791UOq+uCRHkN1IJV6V6M7
	7u6Q2Xc0QpfhU75HQqFOqmb/MG/dw3d4fFja+kkhD4485U7KJzZrQjW4sWF+1mnI9Rde
	FSgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=YMAUB4bUVUZ1RHD3JeIZwYdha84EBzbD12dXfqdmV+4=;
	b=FRHPyaMjzCuP84CbNQFDnGfhCzsnGxDT96p8Pbn+T+BAaUCsZXKBfXREeOyP0z22zm
	tmZ8I8xvVxbee4Ecq3065rVcAJdCJfVGwdv684OIhw5FEp41rU+T43xnhXrz27lKgUZ7
	5S5KkWsdCf/jAUe8fK5IE5B4Dwjzstsw9fJAGuLLppqYeASvzjFnPWnN/t/FHsf/6DPN
	amS6ahE5NDxLShPMGFqcwoDEgieLMV767pXJIGppwBnk0x6rr4tQEfPjCLYwiutz9Vpa
	mEOorj/rubW/gGrmAYdOoki804Biq3ju+lD2NR/raI3uDHzyOVLmkayXC+Hyjz6h0zZs
	yrsA==
X-Gm-Message-State: APjAAAUyWNMxZRnFlf6HWBILyZcTgv8OTPRAyg1UCDoS8CM0hgLLfB45
	pQGOzdSpJ4loExTpa8t9AOmWVnz7
X-Google-Smtp-Source: APXvYqyE8GEfniW3P4/PfVV3UvI2F6BBy1M8auXpu5b1I4niX8bBsXUWCMb77Wy6JKtADxjJtDbyDQ==
X-Received: by 2002:a63:5d04:: with SMTP id r4mr48313194pgb.117.1554079086146; 
	Sun, 31 Mar 2019 17:38:06 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	v19sm11662094pfn.62.2019.03.31.17.38.05 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Mar 2019 17:38:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 31 Mar 2019 17:38:03 -0700
Message-Id: <20190401003803.29785-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][v2][PATCH] linux-yocto: make bbappend version neutral
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
X-List-Received-Date: Mon, 01 Apr 2019 00:38:08 -0000

update apparmor configs

[v2]
Just update configs.

leave versions intact.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto/apparmor.cfg        | 12 +++++++-----
 .../linux/linux-yocto/apparmor_on_boot.cfg           |  1 +
 recipes-kernel/linux/linux-yocto_4.%.bbappend        |  1 +
 3 files changed, 9 insertions(+), 5 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg

diff --git a/recipes-kernel/linux/linux-yocto/apparmor.cfg b/recipes-kernel/linux/linux-yocto/apparmor.cfg
index 1dc4168..b5f9bb2 100644
--- a/recipes-kernel/linux/linux-yocto/apparmor.cfg
+++ b/recipes-kernel/linux/linux-yocto/apparmor.cfg
@@ -1,13 +1,15 @@
 CONFIG_AUDIT=y
-CONFIG_AUDITSYSCALL=y
-CONFIG_AUDIT_WATCH=y
-CONFIG_AUDIT_TREE=y
 # CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
+CONFIG_SECURITY_NETWORK=y
+# CONFIG_SECURITY_NETWORK_XFRM is not set
 CONFIG_SECURITY_PATH=y
 # CONFIG_SECURITY_SELINUX is not set
 CONFIG_SECURITY_APPARMOR=y
-CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
 CONFIG_SECURITY_APPARMOR_HASH=y
 CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
+# CONFIG_SECURITY_APPARMOR_DEBUG is not set
 CONFIG_INTEGRITY_AUDIT=y
-# CONFIG_DEFAULT_SECURITY_APPARMOR is not set
+CONFIG_DEFAULT_SECURITY_APPARMOR=y
+# CONFIG_DEFAULT_SECURITY_DAC is not set
+CONFIG_DEFAULT_SECURITY="apparmor"
+CONFIG_AUDIT_GENERIC=y
diff --git a/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg b/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
new file mode 100644
index 0000000..fc35740
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
@@ -0,0 +1 @@
+CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
diff --git a/recipes-kernel/linux/linux-yocto_4.%.bbappend b/recipes-kernel/linux/linux-yocto_4.%.bbappend
index 067be8f..321392c 100644
--- a/recipes-kernel/linux/linux-yocto_4.%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.%.bbappend
@@ -2,6 +2,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 SRC_URI += "\
         ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
+        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor_on_boot.cfg', '', d)} \
 "
 
 SRC_URI += "\
-- 
2.17.1



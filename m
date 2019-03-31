Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAD4FE00CE5; Sun, 31 Mar 2019 10:29:06 -0700 (PDT)
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
	*      [209.85.215.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 560CFE00CB9
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:29:05 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id z9so3537393pgu.10
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=2Mc22LFrnIV1c9qK3t1y44zvO4Prn+5hMAzbMm/F7qk=;
	b=PAkmbOrsMYyzY6cDgfPX0Rp+Uv92aCB07uOaPnvgaorb/tsQTEgPfPij6rz0IrFuT0
	sSVJabf7kds2XrSUc1sQPMP+M0/w5L2zuIAp5iLeOm6YYLKVya60in53jc9Sw8aXFxM/
	FKIxfLsi/3bF9v5lCoZzt3DyA71bFGK+PR2VdU8M9tbaGd/NdFkfGiWpedrGsIu7/wKl
	ziD/RA2jpSDPjXd9GUHqmGKmcl6hr4nrDKY4KTQPMyrt3T/cgsewCkMVLRm8DrBtz1eR
	QpvUG9nh6DlykTxBFjgfT2ubgfKmUB9gOn43bN2DMkpeLZMxMrBhw2FP6yQMVso6B57E
	kzQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=2Mc22LFrnIV1c9qK3t1y44zvO4Prn+5hMAzbMm/F7qk=;
	b=b+QwmDX8K6wPG43hQgtGelwdPkDpvYip6stJBi2J6FXgACebDl34Quh1lOu9iv2pna
	+RA8Td1sT8pV8meI2NXCz6zJaZBH36AMeWtODT7QeFIBO0z1mGTy60Up7JYy1INhGoUW
	shmGzhZY0DE68gSXlwJyKRxEoPG2sKJsR8xfavPyRS24cKK+vEm1ElMhANkWtRgca0aD
	HyPnTVKXrhKidDhpTUlpk7YDg+zmqup6GOvkJrDzpD9oOE21SxWZa1a+5lkD6QeHAkRO
	+ju+4zFCCvf/1W3rJa7qIUyOnaKWTG1zMYvVx2ZONlYWRARlDXFC8NSxf9StS/jUiHaq
	v08w==
X-Gm-Message-State: APjAAAVkosl5weqGtWJJdlLI0DFIeqd5kOv3Y5GOfrXCdOAjdsilDnKP
	svSIXylXOp763HO7WfDVcyHjO2jQ
X-Google-Smtp-Source: APXvYqzleYOkwESAvLpXUTs8uofwI9Z2QkdmrqoYwiQxtA0xHc/82O82qQchCMc2txzdZm4IATHhAQ==
X-Received: by 2002:a65:51c5:: with SMTP id i5mr29746262pgq.189.1554053345027; 
	Sun, 31 Mar 2019 10:29:05 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j16sm10333893pfi.58.2019.03.31.10.29.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Mar 2019 10:29:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 31 Mar 2019 10:29:00 -0700
Message-Id: <20190331172900.28894-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331172900.28894-1-akuster808@gmail.com>
References: <20190331172900.28894-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/4] linux-stable: add support for stable kernel bbappends
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
X-List-Received-Date: Sun, 31 Mar 2019 17:29:07 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-stable/apparmor.cfg    | 15 +++++++++++++++
 .../linux/linux-stable/apparmor_on_boot.cfg       |  1 +
 .../linux/linux-stable/smack-default-lsm.cfg      |  2 ++
 recipes-kernel/linux/linux-stable/smack.cfg       |  8 ++++++++
 recipes-kernel/linux/linux-stable_%.bbappend      | 11 +++++++++++
 5 files changed, 37 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-stable/apparmor.cfg
 create mode 100644 recipes-kernel/linux/linux-stable/apparmor_on_boot.cfg
 create mode 100644 recipes-kernel/linux/linux-stable/smack-default-lsm.cfg
 create mode 100644 recipes-kernel/linux/linux-stable/smack.cfg
 create mode 100644 recipes-kernel/linux/linux-stable_%.bbappend

diff --git a/recipes-kernel/linux/linux-stable/apparmor.cfg b/recipes-kernel/linux/linux-stable/apparmor.cfg
new file mode 100644
index 0000000..b5f9bb2
--- /dev/null
+++ b/recipes-kernel/linux/linux-stable/apparmor.cfg
@@ -0,0 +1,15 @@
+CONFIG_AUDIT=y
+# CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
+CONFIG_SECURITY_NETWORK=y
+# CONFIG_SECURITY_NETWORK_XFRM is not set
+CONFIG_SECURITY_PATH=y
+# CONFIG_SECURITY_SELINUX is not set
+CONFIG_SECURITY_APPARMOR=y
+CONFIG_SECURITY_APPARMOR_HASH=y
+CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
+# CONFIG_SECURITY_APPARMOR_DEBUG is not set
+CONFIG_INTEGRITY_AUDIT=y
+CONFIG_DEFAULT_SECURITY_APPARMOR=y
+# CONFIG_DEFAULT_SECURITY_DAC is not set
+CONFIG_DEFAULT_SECURITY="apparmor"
+CONFIG_AUDIT_GENERIC=y
diff --git a/recipes-kernel/linux/linux-stable/apparmor_on_boot.cfg b/recipes-kernel/linux/linux-stable/apparmor_on_boot.cfg
new file mode 100644
index 0000000..fc35740
--- /dev/null
+++ b/recipes-kernel/linux/linux-stable/apparmor_on_boot.cfg
@@ -0,0 +1 @@
+CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
diff --git a/recipes-kernel/linux/linux-stable/smack-default-lsm.cfg b/recipes-kernel/linux/linux-stable/smack-default-lsm.cfg
new file mode 100644
index 0000000..b5c4845
--- /dev/null
+++ b/recipes-kernel/linux/linux-stable/smack-default-lsm.cfg
@@ -0,0 +1,2 @@
+CONFIG_DEFAULT_SECURITY="smack"
+CONFIG_DEFAULT_SECURITY_SMACK=y
diff --git a/recipes-kernel/linux/linux-stable/smack.cfg b/recipes-kernel/linux/linux-stable/smack.cfg
new file mode 100644
index 0000000..62f465a
--- /dev/null
+++ b/recipes-kernel/linux/linux-stable/smack.cfg
@@ -0,0 +1,8 @@
+CONFIG_IP_NF_SECURITY=m
+CONFIG_IP6_NF_SECURITY=m
+CONFIG_EXT2_FS_SECURITY=y
+CONFIG_EXT3_FS_SECURITY=y
+CONFIG_EXT4_FS_SECURITY=y
+CONFIG_SECURITY=y
+CONFIG_SECURITY_SMACK=y
+CONFIG_TMPFS_XATTR=y
diff --git a/recipes-kernel/linux/linux-stable_%.bbappend b/recipes-kernel/linux/linux-stable_%.bbappend
new file mode 100644
index 0000000..321392c
--- /dev/null
+++ b/recipes-kernel/linux/linux-stable_%.bbappend
@@ -0,0 +1,11 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += "\
+        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
+        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor_on_boot.cfg', '', d)} \
+"
+
+SRC_URI += "\
+        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack.cfg', '', d)} \
+        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack-default-lsm.cfg', '', d)} \
+"
-- 
2.17.1



Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8521E00D44; Mon,  1 Apr 2019 08:00:36 -0700 (PDT)
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
	*      [209.85.210.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
	[209.85.210.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26C26E00D40
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 08:00:35 -0700 (PDT)
Received: by mail-pf1-f178.google.com with SMTP id 188so4706428pfd.8
	for <yocto@yoctoproject.org>; Mon, 01 Apr 2019 08:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=YMAUB4bUVUZ1RHD3JeIZwYdha84EBzbD12dXfqdmV+4=;
	b=gJJ/PvNfQHpkIanp1UHzxS7xRIUY6BchvjtyqxcGLXidUZJ4ORTMj5a1+oCZe+CT1k
	05RYxeB3P2o9eAYN+KntvL0Bk5vvxxGFryg8d/cCtSfAFdZelmEKG/+pZ3fGK/V1O2qu
	yHFtcDAd9NjgPqnzWqdoBsgTKNOxDSTzqDZuw0VZgue/syboKiiwxn7TA3RT0E5q2+7n
	eSdIFwgD9T4oEpXEc6ZK0bXdzCtlQOdUG58/uixe2SPDziV8Lpb5u8L8NX6BNhnmrpID
	//D9s4+vrakJJi5sW8GfaSqMv2PXT9LDDKBSFvc9B9CRq2NvWDyLUBwin2FaIGdKM6O4
	P/Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=YMAUB4bUVUZ1RHD3JeIZwYdha84EBzbD12dXfqdmV+4=;
	b=N+H4RUGZCHG+xZRaFDxIRICHWxueKsJIDW4+Pl5L1TIsikaYHjcRABxXSbHv3aoC7D
	t0V4+tuCvrh/6rguXb3Z1ft5O24UYMPX6l2rXTKW/YAgnK/Uo8IPsANVo3vbDy13GOGS
	ZxQ4jNQL+24ESsfo52HuwxCkpwuf3wLUGdQy1qiYNlHPITnrEOJy3yU0P9Jjbrro49JA
	I1Xz8Q5fXvBnr3DCgIk5t6PT0yR5URabMO0/NKxkNvJNGWZGstamHYDw0BmhYgdnb4KX
	no6hGAb+ChDOcvSarBcgCe+vx26wZ47fiMt9vZWHtpW5rdhbHicqYmoLwJNszrD5vP9j
	gS4A==
X-Gm-Message-State: APjAAAUsMJ9g2kGX0yjf8V+yCMazKhxGQbS+EFAdFjSsfTwNXrSJ+BlM
	bZFUTjoJzivAWvg5tUNGkQWcgjaC
X-Google-Smtp-Source: APXvYqyhPVUM3ovkUYzkp8LsrX9wI2aWkWWbWCJfIZ3YOBBrnhzw8Es0gqNF+BPHx9hPf1B5hN0B8Q==
X-Received: by 2002:a63:145b:: with SMTP id 27mr60108843pgu.74.1554130835303; 
	Mon, 01 Apr 2019 08:00:35 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	p26sm22517623pfa.49.2019.04.01.08.00.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 01 Apr 2019 08:00:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  1 Apr 2019 08:00:32 -0700
Message-Id: <20190401150033.13150-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][v2][PATCH 1/2] linux-yocto: make bbappend version neutral
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
X-List-Received-Date: Mon, 01 Apr 2019 15:00:36 -0000

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



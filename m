Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6290BE00D4A; Mon,  1 Apr 2019 08:00:37 -0700 (PDT)
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
	*      [209.85.215.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C9AE00D40
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 08:00:36 -0700 (PDT)
Received: by mail-pg1-f172.google.com with SMTP id q1so4889439pgv.13
	for <yocto@yoctoproject.org>; Mon, 01 Apr 2019 08:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=gyXk/tFwIhr0k/3kmrGwyFP3oPFM5k9m+8vIoqJDMxs=;
	b=I8SCcjvW0kEMHs1saO0/5Fu89EPeGkR7NJxu6btsDrkTUeHr2INs7b9op7kTm34GIG
	DwuwB/H5bNffBJeHBouSOpLG3W2FhcAmN9UFTTvW4XIVP+9b6t5a9yLZJUz2xFETqSSx
	xkgm7zFxnzSNStW8i7tdwoodz/+b+gc7PPrLXRkp3NW2MuczdTkNyIo2vMT3qY7UFIDh
	mF09bdwJG7kN8/YUpXn2ScMMnrGrtJXhdTwZipKOrO+yac/7f5zyZJtlX3MJcbfZZAko
	9UqYzHyt76v4GCjVNccP1mvTQ0C0yBSF7Yidw6MGif8BXOnGIhu0ZDPKIap6qSq8rqQ4
	ZG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=gyXk/tFwIhr0k/3kmrGwyFP3oPFM5k9m+8vIoqJDMxs=;
	b=g/SrpgZU0+mD6Fkda6rOA4EJnYkkwPNpuTJ0dm72p+1mn8QhA3ozXT6a/4QTkc/LDB
	rDk6HimdMzIDCHgXvu5blm6KSECVAh7+/nVCRK1ASFSJxd7t+AHYDD4QqUummmNQN1DM
	w8ZpaWlQDLZU3RIpBsNExbEecjF8vdaQH3yrrHHC70btL6zVSOLC/pWSoQsOx1mHsqy0
	gqX8sMKXBjLsenxSAMkldvz5LLIm51sXxwTGPJT9cw7CygpjLQ92bysG30p35dvL7h2T
	/4Wc209rurBw5B4FBxsXrJIjQUYYEmDhCiZ+zFTbedoNhe9vMgROnt4wrHuALnCmT2b0
	qAHw==
X-Gm-Message-State: APjAAAWLGfYrlyo8QJ/QKDD6ygLJtTy4DAWfzWo74DEcx8MVWWWFF58i
	vxnH+G++QxvXSpztUTv6lPhTXv0b
X-Google-Smtp-Source: APXvYqwKGK7t/JHVurv6uBK8pkWweZPR2ojcryDKh7EXeajabxapyEOxCJ3yeJJj/sb2ESJvNqm/7Q==
X-Received: by 2002:a65:63cd:: with SMTP id n13mr61691717pgv.193.1554130836147;
	Mon, 01 Apr 2019 08:00:36 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	p26sm22517623pfa.49.2019.04.01.08.00.35 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 01 Apr 2019 08:00:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  1 Apr 2019 08:00:33 -0700
Message-Id: <20190401150033.13150-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190401150033.13150-1-akuster808@gmail.com>
References: <20190401150033.13150-1-akuster808@gmail.com>
Subject: [meta-security][v2][PATCH 2/2] linux-yocto/5.0: add apparmor fragments
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
X-List-Received-Date: Mon, 01 Apr 2019 15:00:37 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-5.0/apparmor.cfg | 15 +++++++++++++++
 .../linux/linux-yocto-5.0/apparmor_on_boot.cfg    |  1 +
 .../linux/linux-yocto-5.0/smack-default-lsm.cfg   |  2 ++
 recipes-kernel/linux/linux-yocto-5.0/smack.cfg    |  8 ++++++++
 recipes-kernel/linux/linux-yocto_5.0.%.bbappend   | 11 +++++++++++
 5 files changed, 37 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto-5.0/apparmor.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-5.0/apparmor_on_boot.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-5.0/smack-default-lsm.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-5.0/smack.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto_5.0.%.bbappend

diff --git a/recipes-kernel/linux/linux-yocto-5.0/apparmor.cfg b/recipes-kernel/linux/linux-yocto-5.0/apparmor.cfg
new file mode 100644
index 0000000..b5f9bb2
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-5.0/apparmor.cfg
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
diff --git a/recipes-kernel/linux/linux-yocto-5.0/apparmor_on_boot.cfg b/recipes-kernel/linux/linux-yocto-5.0/apparmor_on_boot.cfg
new file mode 100644
index 0000000..fc35740
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-5.0/apparmor_on_boot.cfg
@@ -0,0 +1 @@
+CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
diff --git a/recipes-kernel/linux/linux-yocto-5.0/smack-default-lsm.cfg b/recipes-kernel/linux/linux-yocto-5.0/smack-default-lsm.cfg
new file mode 100644
index 0000000..b5c4845
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-5.0/smack-default-lsm.cfg
@@ -0,0 +1,2 @@
+CONFIG_DEFAULT_SECURITY="smack"
+CONFIG_DEFAULT_SECURITY_SMACK=y
diff --git a/recipes-kernel/linux/linux-yocto-5.0/smack.cfg b/recipes-kernel/linux/linux-yocto-5.0/smack.cfg
new file mode 100644
index 0000000..62f465a
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-5.0/smack.cfg
@@ -0,0 +1,8 @@
+CONFIG_IP_NF_SECURITY=m
+CONFIG_IP6_NF_SECURITY=m
+CONFIG_EXT2_FS_SECURITY=y
+CONFIG_EXT3_FS_SECURITY=y
+CONFIG_EXT4_FS_SECURITY=y
+CONFIG_SECURITY=y
+CONFIG_SECURITY_SMACK=y
+CONFIG_TMPFS_XATTR=y
diff --git a/recipes-kernel/linux/linux-yocto_5.0.%.bbappend b/recipes-kernel/linux/linux-yocto_5.0.%.bbappend
new file mode 100644
index 0000000..f810e21
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_5.0.%.bbappend
@@ -0,0 +1,11 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-5.0:"
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



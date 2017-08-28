Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1283FE00C89; Mon, 28 Aug 2017 10:00:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM, TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E8A0E00C7B
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 10:00:27 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id c28so682106pfe.0
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 10:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=KtiVCvM8ChBEEKBjYqkY0pf629ORuOWLKSvAnqtLGmg=;
	b=DDgovoAIsW9eH5fmbvkHPEu3Spz/AtFBXQnDvwKF7j+QrvOKyYT35vvHCnVOpUyk7a
	3rSg/yq7eMWqIwwthpn24fc2GvJd9dmI4LnSFg1YI3QeCQyvARR+zcriSBbgZDPyUuKn
	sswF8O8bDg+1n+k1ieb4MZYhab2QQgekAnOtWR/PaMqiPsxx0qSqyWfMrIUlTnS/YpHI
	t/jrZAdfCQ7Vx2yBJRRmnoWE8A+PJe/ftM/jJCG8EPKJga0ilsaeAZRnYf/AUvdbBuM5
	mXve0MnspN240nlTajBHXlnJ5Yg89M+q1i4hJijaej9JtyokiEuYUzOHt9mqOzTYOZ+b
	CedA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=KtiVCvM8ChBEEKBjYqkY0pf629ORuOWLKSvAnqtLGmg=;
	b=XkvwAX612eu7OjB4gNgzTXdlQ1ZGg8ydZlpHs6d7ITdHjR0zhVNEIendTzv+F/Yqh6
	7vqDCNu1BbzKmZedbf+BcK+7AANGnBjPUD+TqqVUFOk9mIN3VdXlvj+kQGYuJFRYJjue
	jLyc+bHTz5FWphZ3vPspYqCeVFW3pgYmVRWEFB/BAtV+BVaCJj23yOKTdZC5RFqPBuKc
	PzkNP9OyZ31blmU7hXeNXxMs3p/m5DHNqCqKARzqD5kgJioc+bNLY+GhqldXfq+3E5r2
	/Gjnx4trH9XbbP2viGVVnwqLyY+5P3AEHcu7uvYR76G29EveWcNfZiJmo0MxAqy/FRMU
	GteA==
X-Gm-Message-State: AHYfb5jQcrkhNkdYsIA9kVMI7yvzY6a+WVwCFnLi6DXvl2vUHFVLipF6
	cFlHKqzZj+TfOk1z
X-Received: by 10.84.217.221 with SMTP id d29mr1486457plj.197.1503939627144;
	Mon, 28 Aug 2017 10:00:27 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:6d19:bef7:4a8c:962])
	by smtp.gmail.com with ESMTPSA id
	23sm1352973pfh.183.2017.08.28.10.00.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 28 Aug 2017 10:00:26 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Mon, 28 Aug 2017 10:00:24 -0700
Message-Id: <1503939624-26193-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1503939624-26193-1-git-send-email-akuster808@gmail.com>
References: <1503939624-26193-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] linux-yocto: add 4.12 bbappends
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
X-List-Received-Date: Mon, 28 Aug 2017 17:00:28 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-4.12/apparmor.cfg          | 13 +++++++++++++
 recipes-kernel/linux/linux-yocto-4.12/smack-default-lsm.cfg |  2 ++
 recipes-kernel/linux/linux-yocto-4.12/smack.cfg             |  8 ++++++++
 recipes-kernel/linux/linux-yocto_4.12.bbappend              | 10 ++++++++++
 4 files changed, 33 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto-4.12/apparmor.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-4.12/smack-default-lsm.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-4.12/smack.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto_4.12.bbappend

diff --git a/recipes-kernel/linux/linux-yocto-4.12/apparmor.cfg b/recipes-kernel/linux/linux-yocto-4.12/apparmor.cfg
new file mode 100644
index 0000000..1dc4168
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.12/apparmor.cfg
@@ -0,0 +1,13 @@
+CONFIG_AUDIT=y
+CONFIG_AUDITSYSCALL=y
+CONFIG_AUDIT_WATCH=y
+CONFIG_AUDIT_TREE=y
+# CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
+CONFIG_SECURITY_PATH=y
+# CONFIG_SECURITY_SELINUX is not set
+CONFIG_SECURITY_APPARMOR=y
+CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
+CONFIG_SECURITY_APPARMOR_HASH=y
+CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
+CONFIG_INTEGRITY_AUDIT=y
+# CONFIG_DEFAULT_SECURITY_APPARMOR is not set
diff --git a/recipes-kernel/linux/linux-yocto-4.12/smack-default-lsm.cfg b/recipes-kernel/linux/linux-yocto-4.12/smack-default-lsm.cfg
new file mode 100644
index 0000000..b5c4845
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.12/smack-default-lsm.cfg
@@ -0,0 +1,2 @@
+CONFIG_DEFAULT_SECURITY="smack"
+CONFIG_DEFAULT_SECURITY_SMACK=y
diff --git a/recipes-kernel/linux/linux-yocto-4.12/smack.cfg b/recipes-kernel/linux/linux-yocto-4.12/smack.cfg
new file mode 100644
index 0000000..62f465a
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.12/smack.cfg
@@ -0,0 +1,8 @@
+CONFIG_IP_NF_SECURITY=m
+CONFIG_IP6_NF_SECURITY=m
+CONFIG_EXT2_FS_SECURITY=y
+CONFIG_EXT3_FS_SECURITY=y
+CONFIG_EXT4_FS_SECURITY=y
+CONFIG_SECURITY=y
+CONFIG_SECURITY_SMACK=y
+CONFIG_TMPFS_XATTR=y
diff --git a/recipes-kernel/linux/linux-yocto_4.12.bbappend b/recipes-kernel/linux/linux-yocto_4.12.bbappend
new file mode 100644
index 0000000..0e610d4
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.10:"
+
+SRC_URI += "\
+        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
+"
+
+SRC_URI += "\
+        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack.cfg', '', d)} \
+        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack-default-lsm.cfg', '', d)} \
+"
-- 
2.7.4



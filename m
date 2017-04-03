Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F6ABE00AD5; Sun,  2 Apr 2017 19:20:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48E5BE00A9A
	for <yocto@yoctoproject.org>; Sun,  2 Apr 2017 19:20:13 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id o123so26401318pga.1
	for <yocto@yoctoproject.org>; Sun, 02 Apr 2017 19:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=vLSRqB50kR/mAQN6T/O3+I4dx7Ua65w9ArIv9UT7BBE=;
	b=m9gq2WbLBANui/yuTcNUr2RIVE73uW/8LaAG6FhdxqR/0bbwMiFsiaChvCBmqzPlJG
	OPNycDdIkFSkCbGteF1jTgz3GA1fyRRxMRNgY+CdgfzDULnvJRB04e5Iy90yglNKQL1z
	M8Bi5zXMyC9i73Knc/abL+Etk94MuFXCkoIupTKJiW4wv9iYF7WMSfrxMbcSKckUOJBs
	HLO8rtnvASy5sg/kruNC0toGEmZxvO6rWwUS1CVA04aDUjYZXpdUVJoq/XafGp2W45s4
	yGx65vNH7JlBrGh3MtWCjuvvMYYUMMLZlIuvamhbywLbVUuDc6O1488awnGgs45sXl9l
	Lc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=vLSRqB50kR/mAQN6T/O3+I4dx7Ua65w9ArIv9UT7BBE=;
	b=KVr7klU9a642B6t0kT1Q+OLqcewjbSzdATfV4D+a61jYjhO72r5y1q9z686H1WNWlo
	Hgt63atfWeOqFNFTOm8vBYMVbrBn9dZUemPXGuPBX5KX43cwkAvGUPA8KcJDJW5SUu7u
	oo2O4FB5rsPHWafytHrw3PBqK6W+aEHicE5qjUUzsSKSn/vgcbNTT2cdGfkAYvRVifNh
	fLNLW4z8aztKTmD/pGMHTQN6CdUYPlel+SKyBG709C9cCrB3Ur4MYVkj4VhjvNhbU8Mk
	vxK9ATqF/5vybzFJgODVv+I/6+JnjH5aGs9sJ6mkd/GqGvssPFl2i+R+88KsA5bwV5NF
	yXmQ==
X-Gm-Message-State: AFeK/H2H3NKN6onT3/RUQE7o6wL6BmfjWR9QrmritcpGaw8QATwvnY212hjTDaM4gklNYA==
X-Received: by 10.84.229.2 with SMTP id b2mr18732257plk.154.1491186013238;
	Sun, 02 Apr 2017 19:20:13 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	a77sm22109468pfl.91.2017.04.02.19.20.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 02 Apr 2017 19:20:12 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  2 Apr 2017 19:20:09 -0700
Message-Id: <1491186010-5930-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1491186010-5930-1-git-send-email-akuster808@gmail.com>
References: <1491186010-5930-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] linux-yocto: add 4.10 kernel support
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
X-List-Received-Date: Mon, 03 Apr 2017 02:20:16 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-4.10/apparmor.cfg          | 13 +++++++++++++
 recipes-kernel/linux/linux-yocto-4.10/smack-default-lsm.cfg |  2 ++
 recipes-kernel/linux/linux-yocto-4.10/smack.cfg             |  8 ++++++++
 recipes-kernel/linux/linux-yocto_4.10.bbappend              | 13 +++++++++++++
 4 files changed, 36 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto-4.10/apparmor.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-4.10/smack-default-lsm.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-4.10/smack.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto_4.10.bbappend

diff --git a/recipes-kernel/linux/linux-yocto-4.10/apparmor.cfg b/recipes-kernel/linux/linux-yocto-4.10/apparmor.cfg
new file mode 100644
index 0000000..1dc4168
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.10/apparmor.cfg
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
diff --git a/recipes-kernel/linux/linux-yocto-4.10/smack-default-lsm.cfg b/recipes-kernel/linux/linux-yocto-4.10/smack-default-lsm.cfg
new file mode 100644
index 0000000..b5c4845
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.10/smack-default-lsm.cfg
@@ -0,0 +1,2 @@
+CONFIG_DEFAULT_SECURITY="smack"
+CONFIG_DEFAULT_SECURITY_SMACK=y
diff --git a/recipes-kernel/linux/linux-yocto-4.10/smack.cfg b/recipes-kernel/linux/linux-yocto-4.10/smack.cfg
new file mode 100644
index 0000000..62f465a
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.10/smack.cfg
@@ -0,0 +1,8 @@
+CONFIG_IP_NF_SECURITY=m
+CONFIG_IP6_NF_SECURITY=m
+CONFIG_EXT2_FS_SECURITY=y
+CONFIG_EXT3_FS_SECURITY=y
+CONFIG_EXT4_FS_SECURITY=y
+CONFIG_SECURITY=y
+CONFIG_SECURITY_SMACK=y
+CONFIG_TMPFS_XATTR=y
diff --git a/recipes-kernel/linux/linux-yocto_4.10.bbappend b/recipes-kernel/linux/linux-yocto_4.10.bbappend
new file mode 100644
index 0000000..35a32b6
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -0,0 +1,13 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.10:"
+
+# TPM kernel support
+KERNEL_FEATURES_append += "${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' features/tpm/tpm.scc', '', d)}"
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



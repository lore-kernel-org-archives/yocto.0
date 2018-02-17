Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81962E01070; Sat, 17 Feb 2018 09:45:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4DD6E00F3E
	for <yocto@yoctoproject.org>; Sat, 17 Feb 2018 09:45:58 -0800 (PST)
Received: by mail-pl0-f68.google.com with SMTP id f4so3405417plr.10
	for <yocto@yoctoproject.org>; Sat, 17 Feb 2018 09:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=0SEkdap6rXR5Oj7YlOufn//4Hp7sgx27pSAhX5Gx2r4=;
	b=p8zjHqYgRm4DupAanuQOvFv//KGoMWf017XYondwHQUccPJeaQkc82t4oN/M64pmV5
	Jn9LFG2VcbnMQAzGr+nsujSnbc/V4KIepFOpZCx2SZd3hpz7GhQJtgHlijClzXxhMgBE
	eH475TZDROFykn3aj45jy/ZgGHrM2iX1zAMc14xJ02OhJDP/LBEocCM4xqXvk6D3haFH
	RtQ1xxogxpmN0TRLpOTn1iisCZxazURAQtHTjnDoqEuGEFpkffZ4dF9cx5/RAeTG4f60
	jz4LMt2Mtaf+1Qxs5/Isq6+tBJlD2dRQcsDE7BwweGv4FazbeNMuagEEjH7ZFJeZkoyM
	uG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=0SEkdap6rXR5Oj7YlOufn//4Hp7sgx27pSAhX5Gx2r4=;
	b=Bnrm99xlGcb9gBZuxl0PYv0YDewtW0SYP58RWMf+C0UFIL685Yvp8qTGkGWuMwQLW/
	f3mmDLQ5iG1aw08TNev3gtPLUztTegsDsC/Dcb1HDe6R9M86e/kTe5uJzvGf5rzyXDQL
	0Jf8Ym2Lwosx/mw6KniMDeRFYFd2C9fvU//rEXNrs23bqsxLkY2EmlYwJENRSqtQ91Up
	U4IPqyeo1dw23c5SgCAMEQgUUdpucPY13sEeRyFQNxVX3Oem3dJbAwPDGSESFP3Zj47X
	DyZCiae5viF8EDdfaZLSk7SQjypYhKKqSUe60xVEozVfbVmlBDBqRt70JN+hi1T1mVhS
	dI3g==
X-Gm-Message-State: APf1xPCPKj1lA++aG8IFjQ8MankMnzfSRxqVMUA49OCmv2iAShTMOvbz
	YCMFpoY0cfm1Ba8lid/wHWCsHA==
X-Google-Smtp-Source: AH8x22688svdMmCBkz4WxGveym2HNnU8PXZ539UWZtFZZoepTqZ1w+F1DAp/zCx0HU33DimupHPNwg==
X-Received: by 2002:a17:902:8691:: with SMTP id
	g17-v6mr9479087plo.446.1518889558404; 
	Sat, 17 Feb 2018 09:45:58 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:1886:ab70:59d6:9e86])
	by smtp.gmail.com with ESMTPSA id
	z90sm60105451pfd.78.2018.02.17.09.45.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 17 Feb 2018 09:45:57 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sat, 17 Feb 2018 09:45:52 -0800
Message-Id: <1518889554-32605-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1518889554-32605-1-git-send-email-akuster808@gmail.com>
References: <1518889554-32605-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/5] linux-stable: drop old versions no longer in core
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
X-List-Received-Date: Sat, 17 Feb 2018 17:45:59 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-4.10/apparmor.cfg          | 13 -------------
 recipes-kernel/linux/linux-yocto-4.10/smack-default-lsm.cfg |  2 --
 recipes-kernel/linux/linux-yocto-4.10/smack.cfg             |  8 --------
 recipes-kernel/linux/linux-yocto-4.9/apparmor.cfg           | 13 -------------
 recipes-kernel/linux/linux-yocto-4.9/smack-default-lsm.cfg  |  2 --
 recipes-kernel/linux/linux-yocto-4.9/smack.cfg              |  8 --------
 recipes-kernel/linux/linux-yocto-4.9/tpm.cfg                |  9 ---------
 recipes-kernel/linux/linux-yocto-4.9/tpm.scc                |  4 ----
 recipes-kernel/linux/linux-yocto_4.10.bbappend              | 10 ----------
 recipes-kernel/linux/linux-yocto_4.9.bbappend               | 13 -------------
 10 files changed, 82 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto-4.10/apparmor.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto-4.10/smack-default-lsm.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto-4.10/smack.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto-4.9/apparmor.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto-4.9/smack-default-lsm.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto-4.9/smack.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto-4.9/tpm.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto-4.9/tpm.scc
 delete mode 100644 recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto_4.9.bbappend

diff --git a/recipes-kernel/linux/linux-yocto-4.10/apparmor.cfg b/recipes-kernel/linux/linux-yocto-4.10/apparmor.cfg
deleted file mode 100644
index 1dc4168..0000000
--- a/recipes-kernel/linux/linux-yocto-4.10/apparmor.cfg
+++ /dev/null
@@ -1,13 +0,0 @@
-CONFIG_AUDIT=y
-CONFIG_AUDITSYSCALL=y
-CONFIG_AUDIT_WATCH=y
-CONFIG_AUDIT_TREE=y
-# CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
-CONFIG_SECURITY_PATH=y
-# CONFIG_SECURITY_SELINUX is not set
-CONFIG_SECURITY_APPARMOR=y
-CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
-CONFIG_SECURITY_APPARMOR_HASH=y
-CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
-CONFIG_INTEGRITY_AUDIT=y
-# CONFIG_DEFAULT_SECURITY_APPARMOR is not set
diff --git a/recipes-kernel/linux/linux-yocto-4.10/smack-default-lsm.cfg b/recipes-kernel/linux/linux-yocto-4.10/smack-default-lsm.cfg
deleted file mode 100644
index b5c4845..0000000
--- a/recipes-kernel/linux/linux-yocto-4.10/smack-default-lsm.cfg
+++ /dev/null
@@ -1,2 +0,0 @@
-CONFIG_DEFAULT_SECURITY="smack"
-CONFIG_DEFAULT_SECURITY_SMACK=y
diff --git a/recipes-kernel/linux/linux-yocto-4.10/smack.cfg b/recipes-kernel/linux/linux-yocto-4.10/smack.cfg
deleted file mode 100644
index 62f465a..0000000
--- a/recipes-kernel/linux/linux-yocto-4.10/smack.cfg
+++ /dev/null
@@ -1,8 +0,0 @@
-CONFIG_IP_NF_SECURITY=m
-CONFIG_IP6_NF_SECURITY=m
-CONFIG_EXT2_FS_SECURITY=y
-CONFIG_EXT3_FS_SECURITY=y
-CONFIG_EXT4_FS_SECURITY=y
-CONFIG_SECURITY=y
-CONFIG_SECURITY_SMACK=y
-CONFIG_TMPFS_XATTR=y
diff --git a/recipes-kernel/linux/linux-yocto-4.9/apparmor.cfg b/recipes-kernel/linux/linux-yocto-4.9/apparmor.cfg
deleted file mode 100644
index 1dc4168..0000000
--- a/recipes-kernel/linux/linux-yocto-4.9/apparmor.cfg
+++ /dev/null
@@ -1,13 +0,0 @@
-CONFIG_AUDIT=y
-CONFIG_AUDITSYSCALL=y
-CONFIG_AUDIT_WATCH=y
-CONFIG_AUDIT_TREE=y
-# CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
-CONFIG_SECURITY_PATH=y
-# CONFIG_SECURITY_SELINUX is not set
-CONFIG_SECURITY_APPARMOR=y
-CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
-CONFIG_SECURITY_APPARMOR_HASH=y
-CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
-CONFIG_INTEGRITY_AUDIT=y
-# CONFIG_DEFAULT_SECURITY_APPARMOR is not set
diff --git a/recipes-kernel/linux/linux-yocto-4.9/smack-default-lsm.cfg b/recipes-kernel/linux/linux-yocto-4.9/smack-default-lsm.cfg
deleted file mode 100644
index b5c4845..0000000
--- a/recipes-kernel/linux/linux-yocto-4.9/smack-default-lsm.cfg
+++ /dev/null
@@ -1,2 +0,0 @@
-CONFIG_DEFAULT_SECURITY="smack"
-CONFIG_DEFAULT_SECURITY_SMACK=y
diff --git a/recipes-kernel/linux/linux-yocto-4.9/smack.cfg b/recipes-kernel/linux/linux-yocto-4.9/smack.cfg
deleted file mode 100644
index 62f465a..0000000
--- a/recipes-kernel/linux/linux-yocto-4.9/smack.cfg
+++ /dev/null
@@ -1,8 +0,0 @@
-CONFIG_IP_NF_SECURITY=m
-CONFIG_IP6_NF_SECURITY=m
-CONFIG_EXT2_FS_SECURITY=y
-CONFIG_EXT3_FS_SECURITY=y
-CONFIG_EXT4_FS_SECURITY=y
-CONFIG_SECURITY=y
-CONFIG_SECURITY_SMACK=y
-CONFIG_TMPFS_XATTR=y
diff --git a/recipes-kernel/linux/linux-yocto-4.9/tpm.cfg b/recipes-kernel/linux/linux-yocto-4.9/tpm.cfg
deleted file mode 100644
index fe1bb3f..0000000
--- a/recipes-kernel/linux/linux-yocto-4.9/tpm.cfg
+++ /dev/null
@@ -1,9 +0,0 @@
-CONFIG_HW_RANDOM_TPM=y
-CONFIG_TCG_TPM=y
-CONFIG_TCG_TIS_CORE=y
-CONFIG_TCG_TIS=y
-CONFIG_TCG_CRB=y
-CONFIG_TCG_VTPM_PROXY=y
-CONFIG_DEVPORT=y
-CONFIG_FUSE_FS=y
-CONFIG_CUSE=y
diff --git a/recipes-kernel/linux/linux-yocto-4.9/tpm.scc b/recipes-kernel/linux/linux-yocto-4.9/tpm.scc
deleted file mode 100644
index 7c7ec2d..0000000
--- a/recipes-kernel/linux/linux-yocto-4.9/tpm.scc
+++ /dev/null
@@ -1,4 +0,0 @@
-define KFEATURE_DESCRIPTION "TPM Kernel Support"
-define KFEATURE_COMPATIBILITY arch
-
-kconf non-hardware tpm.cfg
diff --git a/recipes-kernel/linux/linux-yocto_4.10.bbappend b/recipes-kernel/linux/linux-yocto_4.10.bbappend
deleted file mode 100644
index 0e610d4..0000000
--- a/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.10:"
-
-SRC_URI += "\
-        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
-"
-
-SRC_URI += "\
-        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack.cfg', '', d)} \
-        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack-default-lsm.cfg', '', d)} \
-"
diff --git a/recipes-kernel/linux/linux-yocto_4.9.bbappend b/recipes-kernel/linux/linux-yocto_4.9.bbappend
deleted file mode 100644
index adda041..0000000
--- a/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ /dev/null
@@ -1,13 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:"
-
-# TPM kernel support
-KERNEL_FEATURES_append += "${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' features/tpm/tpm.scc', '', d)}"
-
-SRC_URI += "\
-        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
-"
-
-SRC_URI += "\
-        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack.cfg', '', d)} \
-        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack-default-lsm.cfg', '', d)} \
-"
-- 
2.7.4



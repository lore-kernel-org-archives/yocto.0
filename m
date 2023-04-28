Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6690C7EE25
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 12:23:28 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.18039.1682684605790979896
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 05:23:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=c9aDSZ9b;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33SCMbPT021876
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : content-transfer-encoding
 : mime-version; s=pp1; bh=SKFWpfqel9gdTtxKxnqDaLiQViKLapUgvC85Mwsfh/I=;
 b=c9aDSZ9bLf0T4jxFJURq7Clznxt8hwvaQEVWW8JCuti2/xBFE2yARAUQrp0DzsJyLdcZ
 QAbc8jhLV/7x2HK2wcGBOkCi2yRvOrvLeKkZvZ35SqIHN1LjrOt6d2nJXS9qAmCRrJ81
 jWxC0BTS1+GuxEYRfhVE0dhiEpCuKL7mVxmmFP8Eb0Cb3Djtc4Hl92SRFhoX8EU1/a+/
 Yplv4UzCp5g8r5SWeZiGLfb1R+a2NLFlY3bktRT/JFSjCmKnPUlSKGk7i9x+pH74lP/a
 NJN8fK2OTxTwQiQ2cyQg8y3xvLQD1bGbaRQI1m7liS4FCVs572n8y+QJ99/+ti3ho2et Bw== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q89qnfxnm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:25 +0000
Received: from m0353726.ppops.net (m0353726.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 33SC9SjE027063
	for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:22 GMT
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com [169.55.85.253])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q89qnfxn8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:22 +0000
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
	by ppma01wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 33SA1JbW013008;
	Fri, 28 Apr 2023 12:23:21 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([9.208.129.118])
	by ppma01wdc.us.ibm.com (PPS) with ESMTPS id 3q4778fgps-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:23:21 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 33SCNJHV7995908
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Apr 2023 12:23:20 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id AB74058068;
	Fri, 28 Apr 2023 12:23:19 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5B4E95806E;
	Fri, 28 Apr 2023 12:23:19 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 28 Apr 2023 12:23:19 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH 3/8] ima: Fix the IMA kernel feature
Date: Fri, 28 Apr 2023 08:23:11 -0400
Message-Id: <20230428122316.521800-4-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230428122316.521800-1-stefanb@linux.ibm.com>
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: ahHGIfGQG_dFIs_YkgVO32ls7jpU5FVR
X-Proofpoint-GUID: RGfftzQGVK-3l7at-j-fJIZqIosFOXKW
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-28_04,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=999 lowpriorityscore=0 malwarescore=0 phishscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 mlxscore=0 spamscore=0
 clxscore=1015 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304280098
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59804

Fix the IMA kernel feature. Remove outdated patches and add ima.cfg holding
kernel configuration options for IMA and EVM.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 meta-integrity/classes/ima-evm-rootfs.bbclass |   5 +-
 .../0001-ima-fix-ima_inode_post_setattr.patch |  51 -------
 ...for-creating-files-using-the-mknodat.patch | 138 ------------------
 ...-file-hash-setting-by-user-to-fix-an.patch |  60 --------
 .../recipes-kernel/linux/linux/ima.cfg        |  46 ++++++
 .../recipes-kernel/linux/linux/ima.scc        |   4 +
 .../recipes-kernel/linux/linux_ima.inc        |  10 +-
 7 files changed, 63 insertions(+), 251 deletions(-)
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.cfg
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.scc

diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
index 57de2f6..3cb0d07 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -17,7 +17,7 @@ IMA_EVM_X509 ?= "${IMA_EVM_KEY_DIR}/x509_ima.der"
 # with a .x509 suffix. See linux-%.bbappend for details.
 #
 # ima-local-ca.x509 is what ima-gen-local-ca.sh creates.
-IMA_EVM_ROOT_CA ?= ""
+IMA_EVM_ROOT_CA ?= "${IMA_EVM_KEY_DIR}/ima-local-ca.pem"
 
 # Sign all regular files by default.
 IMA_EVM_ROOTFS_SIGNED ?= ". -type f"
@@ -31,6 +31,9 @@ IMA_EVM_ROOTFS_IVERSION ?= ""
 # Avoid re-generating fstab when ima is enabled.
 WIC_CREATE_EXTRA_ARGS:append = "${@bb.utils.contains('DISTRO_FEATURES', 'ima', ' --no-fstab-update', '', d)}"
 
+# Add necessary tools (e.g., keyctl) to image
+IMAGE_INSTALL:append = "${@bb.utils.contains('DISTRO_FEATURES', 'ima', ' ima-evm-utils', '', d)}"
+
 ima_evm_sign_rootfs () {
     cd ${IMAGE_ROOTFS}
 
diff --git a/meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch b/meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch
deleted file mode 100644
index 64016dd..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch
+++ /dev/null
@@ -1,51 +0,0 @@
-From 45ea681ebc0dd44aaec5d3cc4143b9722070d3ac Mon Sep 17 00:00:00 2001
-From: Mimi Zohar <zohar@linux.vnet.ibm.com>
-Date: Tue, 8 Mar 2016 16:43:55 -0500
-Subject: [PATCH] ima: fix ima_inode_post_setattr
-
-Changing file metadata (eg. uid, guid) could result in having to
-re-appraise a file's integrity, but does not change the "new file"
-status nor the security.ima xattr.  The IMA_PERMIT_DIRECTIO and
-IMA_DIGSIG_REQUIRED flags are policy rule specific.  This patch
-only resets these flags, not the IMA_NEW_FILE or IMA_DIGSIG flags.
-
-With this patch, changing the file timestamp will not remove the
-file signature on new files.
-
-Upstream-Status: Accepted [https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/security/integrity/ima/ima_appraise.c?id=42a4c603198f0d45b7aa936d3ac6ba1b8bd14a1b]
-
-Reported-by: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>
-Signed-off-by: Mimi Zohar <zohar@linux.vnet.ibm.com>
----
- security/integrity/ima/ima_appraise.c | 2 +-
- security/integrity/integrity.h        | 1 +
- 2 files changed, 2 insertions(+), 1 deletion(-)
-
-diff --git a/security/integrity/ima/ima_appraise.c b/security/integrity/ima/ima_appraise.c
-index 4df493e..a384ba1 100644
---- a/security/integrity/ima/ima_appraise.c
-+++ b/security/integrity/ima/ima_appraise.c
-@@ -327,7 +327,7 @@ void ima_inode_post_setattr(struct dentry *dentry)
- 	if (iint) {
- 		iint->flags &= ~(IMA_APPRAISE | IMA_APPRAISED |
- 				 IMA_APPRAISE_SUBMASK | IMA_APPRAISED_SUBMASK |
--				 IMA_ACTION_FLAGS);
-+				 IMA_ACTION_RULE_FLAGS);
- 		if (must_appraise)
- 			iint->flags |= IMA_APPRAISE;
- 	}
-diff --git a/security/integrity/integrity.h b/security/integrity/integrity.h
-index 0fc9519..f9decae 100644
---- a/security/integrity/integrity.h
-+++ b/security/integrity/integrity.h
-@@ -28,6 +28,7 @@
- 
- /* iint cache flags */
- #define IMA_ACTION_FLAGS	0xff000000
-+#define IMA_ACTION_RULE_FLAGS	0x06000000
- #define IMA_DIGSIG		0x01000000
- #define IMA_DIGSIG_REQUIRED	0x02000000
- #define IMA_PERMIT_DIRECTIO	0x04000000
--- 
-2.5.0
-
diff --git a/meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch b/meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch
deleted file mode 100644
index 6ab7ce2..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch
+++ /dev/null
@@ -1,138 +0,0 @@
-From baaec960e9e7be0b526eaf831b079ddfe5c15124 Mon Sep 17 00:00:00 2001
-From: Mimi Zohar <zohar@linux.vnet.ibm.com>
-Date: Thu, 10 Mar 2016 18:19:20 +0200
-Subject: [PATCH] ima: add support for creating files using the mknodat
- syscall
-
-Commit 3034a14 "ima: pass 'opened' flag to identify newly created files"
-stopped identifying empty files as new files.  However new empty files
-can be created using the mknodat syscall.  On systems with IMA-appraisal
-enabled, these empty files are not labeled with security.ima extended
-attributes properly, preventing them from subsequently being opened in
-order to write the file data contents.  This patch marks these empty
-files, created using mknodat, as new in order to allow the file data
-contents to be written.
-
-Files with security.ima xattrs containing a file signature are considered
-"immutable" and can not be modified.  The file contents need to be
-written, before signing the file.  This patch relaxes this requirement
-for new files, allowing the file signature to be written before the file
-contents.
-
-Upstream-Status: Accepted [https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/security/integrity/ima/ima_appraise.c?id=05d1a717ec0430c916a749b94eb90ab74bbfa356]
-
-Signed-off-by: Mimi Zohar <zohar@linux.vnet.ibm.com>
----
- fs/namei.c                            |  2 ++
- include/linux/ima.h                   |  7 ++++++-
- security/integrity/ima/ima_appraise.c |  3 +++
- security/integrity/ima/ima_main.c     | 32 +++++++++++++++++++++++++++++++-
- 4 files changed, 42 insertions(+), 2 deletions(-)
-
-diff --git a/fs/namei.c b/fs/namei.c
-index ccd7f98..19502da 100644
---- a/fs/namei.c
-+++ b/fs/namei.c
-@@ -3526,6 +3526,8 @@ retry:
- 	switch (mode & S_IFMT) {
- 		case 0: case S_IFREG:
- 			error = vfs_create(path.dentry->d_inode,dentry,mode,true);
-+			if (!error)
-+				ima_post_path_mknod(dentry);
- 			break;
- 		case S_IFCHR: case S_IFBLK:
- 			error = vfs_mknod(path.dentry->d_inode,dentry,mode,
-diff --git a/include/linux/ima.h b/include/linux/ima.h
-index 120ccc5..7f51971 100644
---- a/include/linux/ima.h
-+++ b/include/linux/ima.h
-@@ -20,7 +20,7 @@ extern void ima_file_free(struct file *file);
- extern int ima_file_mmap(struct file *file, unsigned long prot);
- extern int ima_module_check(struct file *file);
- extern int ima_fw_from_file(struct file *file, char *buf, size_t size);
--
-+extern void ima_post_path_mknod(struct dentry *dentry);
- #else
- static inline int ima_bprm_check(struct linux_binprm *bprm)
- {
-@@ -52,6 +52,11 @@ static inline int ima_fw_from_file(struct file *file, char *buf, size_t size)
- 	return 0;
- }
- 
-+static inline void ima_post_path_mknod(struct dentry *dentry)
-+{
-+	return;
-+}
-+
- #endif /* CONFIG_IMA */
- 
- #ifdef CONFIG_IMA_APPRAISE
-diff --git a/security/integrity/ima/ima_appraise.c b/security/integrity/ima/ima_appraise.c
-index 4df493e..20806ea 100644
---- a/security/integrity/ima/ima_appraise.c
-+++ b/security/integrity/ima/ima_appraise.c
-@@ -274,6 +274,11 @@ out:
- 		     xattr_value->type != EVM_IMA_XATTR_DIGSIG)) {
- 			if (!ima_fix_xattr(dentry, iint))
- 				status = INTEGRITY_PASS;
-+		} else if ((inode->i_size == 0) &&
-+			   (iint->flags & IMA_NEW_FILE) &&
-+			   (xattr_value &&
-+			    xattr_value->type == EVM_IMA_XATTR_DIGSIG)) {
-+			status = INTEGRITY_PASS;
- 		}
- 		integrity_audit_msg(AUDIT_INTEGRITY_DATA, inode, filename,
- 				    op, cause, rc, 0);
-diff --git a/security/integrity/ima/ima_main.c b/security/integrity/ima/ima_main.c
-index eeee00dc..705bf78 100644
---- a/security/integrity/ima/ima_main.c
-+++ b/security/integrity/ima/ima_main.c
-@@ -242,7 +242,8 @@ static int process_measurement(struct file *file, int mask, int function,
- 		ima_audit_measurement(iint, pathname);
- 
- out_digsig:
--	if ((mask & MAY_WRITE) && (iint->flags & IMA_DIGSIG))
-+	if ((mask & MAY_WRITE) && (iint->flags & IMA_DIGSIG) &&
-+	     !(iint->flags & IMA_NEW_FILE))
- 		rc = -EACCES;
- 	kfree(xattr_value);
- out_free:
-@@ -310,6 +311,35 @@ int ima_file_check(struct file *file, int mask, int opened)
- EXPORT_SYMBOL_GPL(ima_file_check);
- 
- /**
-+ * ima_post_path_mknod - mark as a new inode
-+ * @dentry: newly created dentry
-+ *
-+ * Mark files created via the mknodat syscall as new, so that the
-+ * file data can be written later.
-+ */
-+void ima_post_path_mknod(struct dentry *dentry)
-+{
-+	struct integrity_iint_cache *iint;
-+	struct inode *inode;
-+	int must_appraise;
-+
-+	if (!dentry || !dentry->d_inode)
-+		return;
-+
-+	inode = dentry->d_inode;
-+	if (inode->i_size != 0)
-+		return;
-+
-+	must_appraise = ima_must_appraise(inode, MAY_ACCESS, FILE_CHECK);
-+	if (!must_appraise)
-+		return;
-+
-+	iint = integrity_inode_get(inode);
-+	if (iint)
-+		iint->flags |= IMA_NEW_FILE;
-+}
-+
-+/**
-  * ima_module_check - based on policy, collect/store/appraise measurement.
-  * @file: pointer to the file to be measured/appraised
-  *
--- 
-2.5.0
-
diff --git a/meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch b/meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch
deleted file mode 100644
index 157c007..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch
+++ /dev/null
@@ -1,60 +0,0 @@
-From a34d61850b680c152e1dcc958ee83c3ab3261c3d Mon Sep 17 00:00:00 2001
-From: Patrick Ohly <patrick.ohly@intel.com>
-Date: Tue, 15 Nov 2016 10:10:23 +0100
-Subject: [PATCH] Revert "ima: limit file hash setting by user to fix and log
- modes"
-
-This reverts commit c68ed80c97d9720f51ef31fe91560fdd1e121533.
-
-The original motivation was security hardening ("File hashes are
-automatically set and updated and should not be manually set.")
-
-However, that hardening ignores and breaks some valid use cases:
-- File hashes might not be set because the file is currently
-  outside of the policy and therefore have to be set by the
-  creator. Examples:
-  - Booting into an initramfs with an IMA-enabled kernel but
-    without setting an IMA policy, then installing
-    the OS onto the target partition by unpacking a rootfs archive
-    which has the file hashes pre-computed.
-  - Unpacking a file into a staging area with meta data (like owner)
-    that leaves the file outside of the current policy, then changing
-    the meta data such that it becomes part of the current policy.
-- "should not be set manually" implies that the creator is aware
-  of IMA semantic, the current system's configuration, and then
-  skips setting file hashes in security.ima if (and only if) the
-  kernel would prevent it. That's not the case for standard, unmodified
-  tools. Example: unpacking an archive with security.ima xattrs with
-  bsdtar or GNU tar.
-
-Upstream-Status: Submitted [https://sourceforge.net/p/linux-ima/mailman/message/35492824/]
-
-Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
----
- security/integrity/ima/ima_appraise.c | 8 ++------
- 1 file changed, 2 insertions(+), 6 deletions(-)
-
-diff --git a/security/integrity/ima/ima_appraise.c b/security/integrity/ima/ima_appraise.c
-index 4b9b4a4..b8b2dd9 100644
---- a/security/integrity/ima/ima_appraise.c
-+++ b/security/integrity/ima/ima_appraise.c
-@@ -385,14 +385,10 @@ int ima_inode_setxattr(struct dentry *dentry, const char *xattr_name,
- 	result = ima_protect_xattr(dentry, xattr_name, xattr_value,
- 				   xattr_value_len);
- 	if (result == 1) {
--		bool digsig;
--
- 		if (!xattr_value_len || (xvalue->type >= IMA_XATTR_LAST))
- 			return -EINVAL;
--		digsig = (xvalue->type == EVM_IMA_XATTR_DIGSIG);
--		if (!digsig && (ima_appraise & IMA_APPRAISE_ENFORCE))
--			return -EPERM;
--		ima_reset_appraise_flags(d_backing_inode(dentry), digsig);
-+		ima_reset_appraise_flags(d_backing_inode(dentry),
-+			 (xvalue->type == EVM_IMA_XATTR_DIGSIG) ? 1 : 0);
- 		result = 0;
- 	}
- 	return result;
--- 
-2.1.4
-
diff --git a/meta-integrity/recipes-kernel/linux/linux/ima.cfg b/meta-integrity/recipes-kernel/linux/linux/ima.cfg
new file mode 100644
index 0000000..86fb3aa
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/ima.cfg
@@ -0,0 +1,46 @@
+CONFIG_SQUASHFS_XATTR=y
+CONFIG_KEYS=y
+CONFIG_ASYMMETRIC_KEY_TYPE=y
+CONFIG_SYSTEM_TRUSTED_KEYRING=y
+CONFIG_SYSTEM_TRUSTED_KEYS="${IMA_EVM_ROOT_CA}"
+CONFIG_SECONDARY_TRUSTED_KEYRING=y
+CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=y
+CONFIG_X509_CERTIFICATE_PARSER=y
+CONFIG_PKCS8_PRIVATE_KEY_PARSER=y
+CONFIG_CRYPTO_ECDSA=y
+CONFIG_SECURITY=y
+CONFIG_SECURITYFS=y
+CONFIG_INTEGRITY=y
+CONFIG_INTEGRITY_SIGNATURE=y
+CONFIG_INTEGRITY_ASYMMETRIC_KEYS=y
+CONFIG_INTEGRITY_TRUSTED_KEYRING=y
+CONFIG_IMA=y
+CONFIG_IMA_MEASURE_PCR_IDX=10
+CONFIG_IMA_LSM_RULES=y
+# CONFIG_IMA_TEMPLATE is not set
+# CONFIG_IMA_NG_TEMPLATE is not set
+CONFIG_IMA_SIG_TEMPLATE=y
+CONFIG_IMA_DEFAULT_TEMPLATE="ima-sig"
+# CONFIG_IMA_DEFAULT_HASH_SHA1 is not set
+CONFIG_IMA_DEFAULT_HASH_SHA256=y
+# CONFIG_IMA_DEFAULT_HASH_SHA512 is not set
+CONFIG_IMA_DEFAULT_HASH="sha256"
+CONFIG_IMA_WRITE_POLICY=y
+CONFIG_IMA_READ_POLICY=y
+CONFIG_IMA_APPRAISE=y
+CONFIG_IMA_ARCH_POLICY=y
+CONFIG_IMA_APPRAISE_BUILD_POLICY=y
+CONFIG_IMA_APPRAISE_REQUIRE_POLICY_SIGS=y
+# CONFIG_IMA_APPRAISE_BOOTPARAM is not set
+# CONFIG_IMA_APPRAISE_MODSIG is not set
+CONFIG_IMA_TRUSTED_KEYRING=y
+CONFIG_IMA_KEYRINGS_PERMIT_SIGNED_BY_BUILTIN_OR_SECONDARY=y
+# CONFIG_IMA_BLACKLIST_KEYRING is not set
+# CONFIG_IMA_LOAD_X509 is not set
+CONFIG_IMA_APPRAISE_SIGNED_INIT=y
+CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=y
+CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=y
+CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT=y
+# CONFIG_IMA_DISABLE_HTABLE is not set
+CONFIG_EVM=y
+# CONFIG_EVM_LOAD_X509 is not set
diff --git a/meta-integrity/recipes-kernel/linux/linux/ima.scc b/meta-integrity/recipes-kernel/linux/linux/ima.scc
new file mode 100644
index 0000000..6eb84b0
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/ima.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Enable IMA"
+
+kconf non-hardware ima.cfg
+
diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
index 3ab53e5..0b6f530 100644
--- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
+++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
@@ -1,4 +1,12 @@
-KERNEL_FEATURES:append = " ${@bb.utils.contains("DISTRO_FEATURES", "ima", " features/ima/ima.scc", "" ,d)}"
+FILESEXTRAPATHS:append := "${THISDIR}/linux:"
+
+SRC_URI += " \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'file://ima.scc', '', d)} \
+"
+
+do_configure() {
+    sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=.*|CONFIG_SYSTEM_TRUSTED_KEYS=\"${IMA_EVM_ROOT_CA}\"|" .config
+}
 
 KERNEL_FEATURES:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
 
-- 
2.34.1



Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web09.47891.1622485978194172268
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 11:32:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wlh0GpGB;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id e15so5615841plh.1
        for <yocto@lists.yoctoproject.org>; Mon, 31 May 2021 11:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=pKjfY/ZRN38Idkil5FWgfB7LMuh7ySlNC5RRgZUeSAA=;
        b=Wlh0GpGBN/xtZEe1gI0z4LGIbWlQsPSyLjuoqlYbTBAqD6iiS2Ml1tPBwRGJo2M0Th
         qzbTZ8VE4q2By3Lh74u9D1Jt8WjT+Q5FaiAiWnOwtMqIvt2IxLV3JrY/1CzJzcI4R14J
         KZDmHiMm+RFvN8xBhhVjj6DIaF139HbpJEczq6XgQWLKYLBG0GXNy6V6dcP3yZ/XIeX9
         93SQysjRWGqq2fa6jG8LJUdrS6xZi+Hve86GC6smrK0NzHV9j+QFohNAFRJHmPet93ij
         ljdixUKOTDEmMX+lCBl5tVv4NudIg+hcr841mVUvqMGRiMR/s6tIqgQM4LCJsXsM7qLd
         d1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pKjfY/ZRN38Idkil5FWgfB7LMuh7ySlNC5RRgZUeSAA=;
        b=APCixh/FR6z7+5GVNeAZ7BBzTiaW+NbIZvyUQ168UwJq90yxpsqFD5IspLEtCJm7oJ
         bKxB+Nnksqu0d7rdbj0s1gZGdowi6zhxkgHNqKWMibQZwkZjMe2QloZ8G0uQBpfTd0uk
         8LGMywkRMIh9hZaartSsRfdut3spsRw1J17KGNVSMr3hsbQ2DFxN5uy9+D5bI1sh2oCf
         Uda+3gtyXRLKEKiDpuZYb03UqSF1CDF93gdbXEeD1UqUuBwsb8UfMGdTKwDGnyy9AgD5
         +I9TLdmouDOU+qh5Gf6SIfD3fdD5uvrUpqNd94RZqevS5iuHoj79HTrkt+6hSK1ueyv2
         zxKw==
X-Gm-Message-State: AOAM531JFQZhZHD3+VV1CDdCnUnsYa0Yu1xR/lF5TE0Zr89n/phob/vV
	QNlzP7XVvqXPyim/MhmS1bjN8mkM9uXrlw==
X-Google-Smtp-Source: ABdhPJxIgVOdjNJ2PQAu115fBOMvl+aETLzFkF+U6PHup5vy03t6Ssk8vbb9D0sqfMJ+GT5FbnUynA==
X-Received: by 2002:a17:902:7047:b029:105:45f5:5271 with SMTP id h7-20020a1709027047b029010545f55271mr5330750plt.31.1622485977294;
        Mon, 31 May 2021 11:32:57 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x19sm11803957pgj.66.2021.05.31.11.32.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 11:32:56 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] meta-integrity: YCL fixups
Date: Mon, 31 May 2021 18:32:52 +0000
Message-Id: <20210531183253.963737-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210531183253.963737-1-akuster808@gmail.com>
References: <20210531183253.963737-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We wont need the linux-% once the kernel-feature class is included in
core.
Move the inherit into the image itself.
Drop kernel patches not being used.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../images/integrity-image-minimal.bb         |   2 +
 .../recipes-kernel/linux/linux-%.bbappend     |   5 -
 .../0001-ima-fix-ima_inode_post_setattr.patch |  51 -------
 ...for-creating-files-using-the-mknodat.patch | 138 ------------------
 ...-file-hash-setting-by-user-to-fix-an.patch |  60 --------
 5 files changed, 2 insertions(+), 254 deletions(-)
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux-%.bbappend
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch

diff --git a/meta-integrity/recipes-core/images/integrity-image-minimal.bb b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
index 1a3a30a..4e7895a 100644
--- a/meta-integrity/recipes-core/images/integrity-image-minimal.bb
+++ b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
@@ -13,6 +13,8 @@ IMAGE_INSTALL = "\
 LICENSE = "MIT"
 
 inherit core-image
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', 'kernel-modsign', '', d)}
+
 
 export IMAGE_BASENAME = "integrity-image-minimal"
 
diff --git a/meta-integrity/recipes-kernel/linux/linux-%.bbappend b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
deleted file mode 100644
index f9a48cd..0000000
--- a/meta-integrity/recipes-kernel/linux/linux-%.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "ima", " features/ima/ima.scc", "" ,d)}"
-
-KERNEL_FEATURES_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
-
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', 'kernel-modsign', '', d)}
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
-- 
2.25.1


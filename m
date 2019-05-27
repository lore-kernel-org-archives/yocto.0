Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFA02E00D4D; Sun, 26 May 2019 21:56:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35740E00C36
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:52 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id n27so8383282pgm.4
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=aEZqpCP6A+aSQu7t2eP3m57JH5G3XI2NrNqQ8FEUOBs=;
	b=UNyWSGoLAjPVykH46ZOKDxH77xb3VAkvyFsYZoSccs9EAL0TX4AbzR1ek9ZP4gBadr
	liUUhmqPFUQW91TABSn0fdERM+ozPLgDORAlJhc3N4IbwadnVpzSa6kx953gtzcKMzxN
	0441PjtM43YDq9XvhKZQGTPGfUkm96RP5PELj2LRVXGqPrS0VpxzPEVjl7GhNzXjHiEy
	07Pquf/lbWpWxiDn/JlcT9jGyd9oquRD7P/T0GAaMsbrCjxO1RH6nFYJrQYMKDRzwzNb
	tBSEeDjoEALcsEmcHSSHAsVNLVUAMVBPsuSP1veuyqb9WEsPwif5J2okhRXN96A7pj1S
	jmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=aEZqpCP6A+aSQu7t2eP3m57JH5G3XI2NrNqQ8FEUOBs=;
	b=YwS/tEfbt/a5j18y8/M3EST0tXODBCqKK6VLAGqCO1zxiEx1/39CWZ9FVCCLnTJOnK
	Z7RNVlOQS4Whvzr3ls1gR9GXUpueD6NRGzqU0cSfG1AAPCeoX8TbpMdFKXFr71qIGb9w
	VBFWY4ik1WddCGjdPvGZOOyUXVLQIVnhwoeQ1PGfDm9R6OUuvj0VyQqwETVajCHQSOhx
	2Ld9i0wHc0XPcBSon8vngDVdbXToYxdGw7o+1LtlwJKKAtOJOl74t2B7RGdwJQP5FPJj
	exEEl+q1r1TA2wrSVCvmUifWqw6RWrrG0Wv2i5WOud0oPd6iUtTt3yINEBlNOqNKs2YT
	nTjg==
X-Gm-Message-State: APjAAAUZaSRnPFI8b+GSO/Rf8pMku7/PwdQjIHQmwLMihJ/A+NFYYB2z
	GfaGXIwUyAc/Pr1BhiqvZIf0gEn9
X-Google-Smtp-Source: APXvYqy+uhR7PwZxvBLYTXw0/8CVh5y2jFh8Hay7vJh0yQTOs5QLB7eumVXtHItl9RpabHxQuME2vQ==
X-Received: by 2002:aa7:9ab0:: with SMTP id
	x16mr124268654pfi.201.1558933011591; 
	Sun, 26 May 2019 21:56:51 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.50 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:38 -0700
Message-Id: <20190527045641.18884-12-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 11/14] data: remove policies
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
X-List-Received-Date: Mon, 27 May 2019 04:56:52 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/data/ima_policy_appraise_all | 29 --------
 meta-integrity/data/ima_policy_hashed       | 77 ---------------------
 meta-integrity/data/ima_policy_simple       |  4 --
 3 files changed, 110 deletions(-)
 delete mode 100644 meta-integrity/data/ima_policy_appraise_all
 delete mode 100644 meta-integrity/data/ima_policy_hashed
 delete mode 100644 meta-integrity/data/ima_policy_simple

diff --git a/meta-integrity/data/ima_policy_appraise_all b/meta-integrity/data/ima_policy_appraise_all
deleted file mode 100644
index 36e71a7..0000000
--- a/meta-integrity/data/ima_policy_appraise_all
+++ /dev/null
@@ -1,29 +0,0 @@
-#
-# Integrity measure policy (http://sourceforge.net/p/linux-ima/wiki/Home/#measure-nothing-appraise-everything)
-# 
-# Do not measure anything, but appraise everything
-#
-# PROC_SUPER_MAGIC
-dont_appraise fsmagic=0x9fa0
-# SYSFS_MAGIC
-dont_appraise fsmagic=0x62656572
-# DEBUGFS_MAGIC
-dont_appraise fsmagic=0x64626720
-# TMPFS_MAGIC
-dont_appraise fsmagic=0x01021994
-# RAMFS_MAGIC
-dont_appraise fsmagic=0x858458f6
-# DEVPTS_SUPER_MAGIC
-dont_appraise fsmagic=0x1cd1
-# BIFMT
-dont_appraise fsmagic=0x42494e4d
-# SECURITYFS_MAGIC
-dont_appraise fsmagic=0x73636673
-# SELINUXFS_MAGIC
-dont_appraise fsmagic=0xf97cff8c
-# NSFS_MAGIC (introduced in 3.19, see cd025f7 and e149ed2 in the upstream Linux kernel)
-dont_appraise fsmagic=0x6e736673
-# EFIVARFS_MAGIC
-dont_appraise fsmagic=0xde5e81e4
-
-appraise
diff --git a/meta-integrity/data/ima_policy_hashed b/meta-integrity/data/ima_policy_hashed
deleted file mode 100644
index 7f89c8d..0000000
--- a/meta-integrity/data/ima_policy_hashed
+++ /dev/null
@@ -1,77 +0,0 @@
-# With this policy, all files on regular partitions are
-# appraised. Files with signed IMA hash and normal hash are
-# accepted. Signed files cannot be modified while hashed files can be
-# (which will also update the hash). However, signed files can
-# be deleted, so in practice it is still possible to replace them
-# with a modified version.
-#
-# Without EVM, this is obviously not very secure, so this policy is
-# just an example and/or basis for further improvements. For that
-# purpose, some comments show what could be added to make the policy
-# more secure.
-#
-# With EVM the situation might be different because access
-# to the EVM key can be restricted.
-#
-# Files which are appraised are also measured. This allows
-# debugging whether a file is in policy by looking at
-# /sys/kernel/security/ima/ascii_runtime_measurements
-
-# PROC_SUPER_MAGIC
-dont_appraise fsmagic=0x9fa0
-dont_measure fsmagic=0x9fa0
-# SYSFS_MAGIC
-dont_appraise fsmagic=0x62656572
-dont_measure fsmagic=0x62656572
-# DEBUGFS_MAGIC
-dont_appraise fsmagic=0x64626720
-dont_measure fsmagic=0x64626720
-# TMPFS_MAGIC
-dont_appraise fsmagic=0x01021994
-dont_measure fsmagic=0x01021994
-# RAMFS_MAGIC
-dont_appraise fsmagic=0x858458f6
-dont_measure fsmagic=0x858458f6
-# DEVPTS_SUPER_MAGIC
-dont_appraise fsmagic=0x1cd1
-dont_measure fsmagic=0x1cd1
-# BIFMT
-dont_appraise fsmagic=0x42494e4d
-dont_measure fsmagic=0x42494e4d
-# SECURITYFS_MAGIC
-dont_appraise fsmagic=0x73636673
-dont_measure fsmagic=0x73636673
-# SELINUXFS_MAGIC
-dont_appraise fsmagic=0xf97cff8c
-dont_measure fsmagic=0xf97cff8c
-# NSFS_MAGIC (introduced in 3.19, see cd025f7 and e149ed2 in the upstream Linux kernel)
-dont_appraise fsmagic=0x6e736673
-dont_measure fsmagic=0x6e736673
-# SMACK_MAGIC
-dont_appraise fsmagic=0x43415d53
-dont_measure fsmagic=0x43415d53
-# CGROUP_SUPER_MAGIC
-dont_appraise fsmagic=0x27e0eb
-dont_measure fsmagic=0x27e0eb
-# EFIVARFS_MAGIC
-dont_appraise fsmagic=0xde5e81e4
-dont_measure fsmagic=0xde5e81e4
-
-# Special partition, no checking done.
-# dont_measure  fsuuid=a11234...
-# dont_appraise fsuuid=a11243...
-
-# Special immutable group.
-# appraise appraise_type=imasig func=FILE_CHECK mask=MAY_READ fgroup=200
-
-# All executables must be signed - too strict, we need to
-# allow installing executables on the device.
-# appraise appraise_type=imasig func=FILE_MMAP mask=MAY_EXEC
-# appraise appraise_type=imasig func=BPRM_CHECK mask=MAY_EXEC
-
-# Default rule. Would be needed also when other rules were added that
-# determine what to do in case of reading (mask=MAY_READ or
-# mask=MAY_EXEC) because otherwise writing does not update the file
-# hash.
-appraise
-measure
diff --git a/meta-integrity/data/ima_policy_simple b/meta-integrity/data/ima_policy_simple
deleted file mode 100644
index 38ca8f5..0000000
--- a/meta-integrity/data/ima_policy_simple
+++ /dev/null
@@ -1,4 +0,0 @@
-# Very simple policy demonstrating the systemd policy loading bug
-# (policy with one line works, two lines don't).
-dont_appraise fsmagic=0x9fa0
-dont_appraise fsmagic=0x62656572
-- 
2.17.1



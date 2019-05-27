Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FB56E00D2C; Sun, 26 May 2019 21:56:52 -0700 (PDT)
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
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0201BE00D30
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:49 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id w34so3713429pga.12
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=opYcARXIiNuctlr/eV4EYQoEKHS26qWkfo3Ti8jeKcQ=;
	b=HClfiHaG1ocatnXsL+lOqJ0e+pYkMfvrRhLx6O1LYgzUDpb3TSbBUsGJgb3fnT40pO
	5/PRai8OryQAugAssGKN+aIBjhahDsfuF2FSfC92bK5MBierY51fNa2/ySaUdSD0Yhg9
	Wl/dxw/0q8xh7ZuzJz5y/45pG6G469wTjhM2/USAAqCdsbk9Njvyl0ALwGLKEPKGXjYM
	nrPpnetPxRHwk1/LAAG6Rw2h8JC/I3unFJsXlZwq8bldG9Fq7f930b2bxxeF5mVquNo7
	UwbJTmP2syCcIgv6TuYtVVTdWL5/sdF262AB1vGkjQumgHcXUsuira3G72Qnc5bjJtkR
	FcQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=opYcARXIiNuctlr/eV4EYQoEKHS26qWkfo3Ti8jeKcQ=;
	b=MBwTNGHuAeGyWQCv1WlMpJuUfbSqT85I5HiV5bZL2ycJAGqFV5nE0OGYbRTAtVwBlx
	r+Pnhrg27uRvZR3Yy+uA0ZeVAdIXdMMYgldvXE71ZXGspAQLMqMRg8ercSAPlv6X9B35
	9bIzZKk0U1+BLAADzHeT/dkBWs8nOvaM1pyOnWi+82/OccMM7xO2pa0ivOeXNCn20AJ+
	Hshsxc6kVt34dwkq+i7I1n9GwARbNk1MwPC4ia/uwYCRlSsDe1d0weGAkIkhpQ1rxIY4
	o2KvocZWCtXXfTKFcOz0w1mkbIRoU6fsTk5NVdioAl1Jq+RkSMd6z3XTq7gCmXLEAQT1
	G6fg==
X-Gm-Message-State: APjAAAWpIep9vkE95lyfeZHrRcOad63ro5P8PfY5mcjYpHZCAMrVQyRi
	SHyk9ey1WS885GeuPyDK2NvVGejc
X-Google-Smtp-Source: APXvYqy8oOEY+aqNhxWJMmt0NSKrf2xZj64YJvxjAWWuCjtVKV5T890DB/6vQLVh0wTfA6jDloZkfA==
X-Received: by 2002:a17:90a:a116:: with SMTP id
	s22mr28270018pjp.51.1558933009470; 
	Sun, 26 May 2019 21:56:49 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.48 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:35 -0700
Message-Id: <20190527045641.18884-9-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 08/14] ima-policy-hashed: add new recipe
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
 .../ima_policy_hashed/files/ima_policy_hashed | 77 +++++++++++++++++++
 .../ima-policy-hashed_1.0.bb                  | 20 +++++
 2 files changed, 97 insertions(+)
 create mode 100644 meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_hashed
 create mode 100644 meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb

diff --git a/meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_hashed b/meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_hashed
new file mode 100644
index 0000000..7f89c8d
--- /dev/null
+++ b/meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_hashed
@@ -0,0 +1,77 @@
+# With this policy, all files on regular partitions are
+# appraised. Files with signed IMA hash and normal hash are
+# accepted. Signed files cannot be modified while hashed files can be
+# (which will also update the hash). However, signed files can
+# be deleted, so in practice it is still possible to replace them
+# with a modified version.
+#
+# Without EVM, this is obviously not very secure, so this policy is
+# just an example and/or basis for further improvements. For that
+# purpose, some comments show what could be added to make the policy
+# more secure.
+#
+# With EVM the situation might be different because access
+# to the EVM key can be restricted.
+#
+# Files which are appraised are also measured. This allows
+# debugging whether a file is in policy by looking at
+# /sys/kernel/security/ima/ascii_runtime_measurements
+
+# PROC_SUPER_MAGIC
+dont_appraise fsmagic=0x9fa0
+dont_measure fsmagic=0x9fa0
+# SYSFS_MAGIC
+dont_appraise fsmagic=0x62656572
+dont_measure fsmagic=0x62656572
+# DEBUGFS_MAGIC
+dont_appraise fsmagic=0x64626720
+dont_measure fsmagic=0x64626720
+# TMPFS_MAGIC
+dont_appraise fsmagic=0x01021994
+dont_measure fsmagic=0x01021994
+# RAMFS_MAGIC
+dont_appraise fsmagic=0x858458f6
+dont_measure fsmagic=0x858458f6
+# DEVPTS_SUPER_MAGIC
+dont_appraise fsmagic=0x1cd1
+dont_measure fsmagic=0x1cd1
+# BIFMT
+dont_appraise fsmagic=0x42494e4d
+dont_measure fsmagic=0x42494e4d
+# SECURITYFS_MAGIC
+dont_appraise fsmagic=0x73636673
+dont_measure fsmagic=0x73636673
+# SELINUXFS_MAGIC
+dont_appraise fsmagic=0xf97cff8c
+dont_measure fsmagic=0xf97cff8c
+# NSFS_MAGIC (introduced in 3.19, see cd025f7 and e149ed2 in the upstream Linux kernel)
+dont_appraise fsmagic=0x6e736673
+dont_measure fsmagic=0x6e736673
+# SMACK_MAGIC
+dont_appraise fsmagic=0x43415d53
+dont_measure fsmagic=0x43415d53
+# CGROUP_SUPER_MAGIC
+dont_appraise fsmagic=0x27e0eb
+dont_measure fsmagic=0x27e0eb
+# EFIVARFS_MAGIC
+dont_appraise fsmagic=0xde5e81e4
+dont_measure fsmagic=0xde5e81e4
+
+# Special partition, no checking done.
+# dont_measure  fsuuid=a11234...
+# dont_appraise fsuuid=a11243...
+
+# Special immutable group.
+# appraise appraise_type=imasig func=FILE_CHECK mask=MAY_READ fgroup=200
+
+# All executables must be signed - too strict, we need to
+# allow installing executables on the device.
+# appraise appraise_type=imasig func=FILE_MMAP mask=MAY_EXEC
+# appraise appraise_type=imasig func=BPRM_CHECK mask=MAY_EXEC
+
+# Default rule. Would be needed also when other rules were added that
+# determine what to do in case of reading (mask=MAY_READ or
+# mask=MAY_EXEC) because otherwise writing does not update the file
+# hash.
+appraise
+measure
diff --git a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
new file mode 100644
index 0000000..3352daa
--- /dev/null
+++ b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
@@ -0,0 +1,20 @@
+SUMMARY = "IMA sample hash policy"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+# This policy file will get installed as /etc/ima/ima-policy.
+# It is located via the normal file search path, so a .bbappend
+# to this recipe can just point towards one of its own files.
+IMA_POLICY ?= "ima_policy_hashed"
+
+SRC_URI = " \
+    file://${IMA_POLICY} \
+"
+
+do_install () {
+    install -d ${D}/${sysconfdir}/ima
+    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
+}
+
+FILES_${PN} = "${sysconfdir}/ima"
+RDEPENDS_${PN} = "ima-evm-utils"
-- 
2.17.1



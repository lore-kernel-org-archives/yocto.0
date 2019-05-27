Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1419BE00D31; Sun, 26 May 2019 21:56:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 754D0E00C7D
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:51 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id d126so6654546pfd.2
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Jju11EbmHPS4cD1pYIcWEZnn5NaC7fMZoX6rhickhjk=;
	b=Ngse4yxjsnH/iI+oV2L847veItbCEFWaEkyW89XIihiAbKOVsYGSi47kjg7ihPAAM5
	oWNBlzdDFSh43WHGzE4IAzoKJNrqeYMw1XZ6zRB2Or0C5lWh+zsjki/nlgbtILedve/V
	AGPYeiJ6I/vaR6+fDqyp2crEk+UJtUv2uWozZ00ocyJYV/PSqyaPPzxCNkDikqYguiSS
	UQZNi9XDx67mmqIRF0fplbffWgG+5KuuF7fnmv2hI/EV2JnowMY1A/rRjjrCfXJjWF9h
	UpKKG8XudPzEiq68ap9wiopGhZRwkeD200P3uERGWHbO8M9FinsWm3iC+4zlUXWk29QB
	xnVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Jju11EbmHPS4cD1pYIcWEZnn5NaC7fMZoX6rhickhjk=;
	b=ipFRQk2+DP2upodYceK/cj+r0NSSBeDocouwvpD8GmUff/35nsb4FZWIA1owPqOHUU
	2E4UKHSYdtUFN6PQCrlleJeEYm/5c3weuQaOQpYNZIL6G/PsB+AIRhJfeLUHKVBCybvL
	RlSsbJwxk4DqlbOVn6/tpzOZ4OnXt8czaqEzXbtfWuwK8mzFB8WmO4ubIwZVy3aqQQ5Z
	vWGHZMDdjSCnlUQ08WhYdQZXVdE/put/FBkrRoSTU023Mq7L4Ugc19YHFLOPitsPcF7t
	y6SJ2vpx1S9hDBOlmPoPJEbnh6gxETiqGGvnmscatkrzMuQe8xslrejmVMyFmCXnUPlf
	bJIg==
X-Gm-Message-State: APjAAAW8x7PgS7Dl6EJEPHbtGf8gYBgIGf0d69u5hQUJrUzz3zXFAKVG
	D03OJbwhG9Ud4F18aWRXLXF41ZWZ
X-Google-Smtp-Source: APXvYqxZ1UIddDoL/VxK/zTw9x+P1sNWCf7E4RcW1c445RgMsyH9I4GA2rXOUV9tHRob7th9KgwP1g==
X-Received: by 2002:a63:1d02:: with SMTP id d2mr123133476pgd.26.1558933010927; 
	Sun, 26 May 2019 21:56:50 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.50 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:37 -0700
Message-Id: <20190527045641.18884-11-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 10/14] policy: add ima appraise all policy
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
 .../files/ima_policy_appraise_all             | 29 +++++++++++++++++++
 .../ima-policy-appraise-all_1.0.bb            | 18 ++++++++++++
 2 files changed, 47 insertions(+)
 create mode 100644 meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
 create mode 100644 meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb

diff --git a/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all b/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
new file mode 100644
index 0000000..36e71a7
--- /dev/null
+++ b/meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
@@ -0,0 +1,29 @@
+#
+# Integrity measure policy (http://sourceforge.net/p/linux-ima/wiki/Home/#measure-nothing-appraise-everything)
+# 
+# Do not measure anything, but appraise everything
+#
+# PROC_SUPER_MAGIC
+dont_appraise fsmagic=0x9fa0
+# SYSFS_MAGIC
+dont_appraise fsmagic=0x62656572
+# DEBUGFS_MAGIC
+dont_appraise fsmagic=0x64626720
+# TMPFS_MAGIC
+dont_appraise fsmagic=0x01021994
+# RAMFS_MAGIC
+dont_appraise fsmagic=0x858458f6
+# DEVPTS_SUPER_MAGIC
+dont_appraise fsmagic=0x1cd1
+# BIFMT
+dont_appraise fsmagic=0x42494e4d
+# SECURITYFS_MAGIC
+dont_appraise fsmagic=0x73636673
+# SELINUXFS_MAGIC
+dont_appraise fsmagic=0xf97cff8c
+# NSFS_MAGIC (introduced in 3.19, see cd025f7 and e149ed2 in the upstream Linux kernel)
+dont_appraise fsmagic=0x6e736673
+# EFIVARFS_MAGIC
+dont_appraise fsmagic=0xde5e81e4
+
+appraise
diff --git a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb b/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
new file mode 100644
index 0000000..b58d3fe
--- /dev/null
+++ b/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
@@ -0,0 +1,18 @@
+SUMMARY = "IMA sample simple appraise policy "
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+# This policy file will get installed as /etc/ima/ima-policy.
+# It is located via the normal file search path, so a .bbappend
+# to this recipe can just point towards one of its own files.
+IMA_POLICY ?= "ima_policy_appraise_all"
+
+SRC_URI = " file://${IMA_POLICY}"
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



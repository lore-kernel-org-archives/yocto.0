Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A973E00C54; Mon, 17 Oct 2016 17:02:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB8DBE00C38
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:43 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id qn10so9701262pac.2
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=NefMohOtk7zrqDH0hIfhbR3HfavOGSS4bpOgRxhLhzg=;
	b=oCIE+V8Ls9QH2fUWcoq4s11OI6kOR/5M5ax9bIO83Lr+ttwLhpDJ0TzNNYGEIc5uLJ
	bre+26frPk/DI6h4bTkRclzC/4Zenbi3Pe3ZA+9zuWNb9Q5C3YSN0PytMQUR1CjSB3+K
	1kneXt61dTQZ5VSwNnZP/L6fghXcztBJJEMLqqe0poSf6frjuhzDlcyjJmSpQw3dRJ0u
	zD5+lRHh2qxBQ517uy3fLxbrnTgDeWXWzEaqVS6WU1JGKOAJb359PCG2RVcqmmJdEECX
	TwVn+VXhlm7OaUTIy7tD7fYw68Yp9arhdRiFm+gIWaskyvLADdwd9clfDeRxD1dx7roy
	8kyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=NefMohOtk7zrqDH0hIfhbR3HfavOGSS4bpOgRxhLhzg=;
	b=VzsWF5sB6c+szsOexWKO+xTO2BaKyvIkk4JvyCdmuetFOcq51JCf5KZ0d2Y3GQjGCz
	3i930WVXI0wJayLsIxGvtEiHtU+YVaQZqh2dohPPMZ7rptSpBeCP75iWnj0ETRlzpM7R
	2N8KOmxnEQ8esOGc1DWqfLfgs9/BE1Ozp9u6tOEiqLxDDWmbf5fzqti1XiH1ReKKiWtY
	98GIHhajysm8XjHuPSalJPF9J5hn3gleZ9b0EjP/T9Yme/iVYhmcW8LDAkEb/IGoobSF
	HF3DjJH+29CSKEOUFzGsXlfNyfp/rVdaQRycl0avZzZK96G2F+sKytzcy5Fen/q3CPgu
	4ayw==
X-Gm-Message-State: AA6/9RmMIKDSWvV5PVprsoIiMnPs99lnzTm/23H8JnmHvktX4pOmom2T34ijOqjDjdLodQ==
X-Received: by 10.66.185.233 with SMTP id ff9mr174229pac.10.1476748963078;
	Mon, 17 Oct 2016 17:02:43 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:24 -0700
Message-Id: <1476748950-21342-11-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 11/17] linux-yocto-4.8: add tpm fragments
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:44 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-4.8/tpm.cfg  | 9 +++++++++
 recipes-kernel/linux/linux-yocto-4.8/tpm.scc  | 4 ++++
 recipes-kernel/linux/linux-yocto_4.8.bbappend | 7 +++++++
 3 files changed, 20 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto-4.8/tpm.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-4.8/tpm.scc
 create mode 100644 recipes-kernel/linux/linux-yocto_4.8.bbappend

diff --git a/recipes-kernel/linux/linux-yocto-4.8/tpm.cfg b/recipes-kernel/linux/linux-yocto-4.8/tpm.cfg
new file mode 100644
index 0000000..fe1bb3f
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.8/tpm.cfg
@@ -0,0 +1,9 @@
+CONFIG_HW_RANDOM_TPM=y
+CONFIG_TCG_TPM=y
+CONFIG_TCG_TIS_CORE=y
+CONFIG_TCG_TIS=y
+CONFIG_TCG_CRB=y
+CONFIG_TCG_VTPM_PROXY=y
+CONFIG_DEVPORT=y
+CONFIG_FUSE_FS=y
+CONFIG_CUSE=y
diff --git a/recipes-kernel/linux/linux-yocto-4.8/tpm.scc b/recipes-kernel/linux/linux-yocto-4.8/tpm.scc
new file mode 100644
index 0000000..7c7ec2d
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.8/tpm.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "TPM Kernel Support"
+define KFEATURE_COMPATIBILITY arch
+
+kconf non-hardware tpm.cfg
diff --git a/recipes-kernel/linux/linux-yocto_4.8.bbappend b/recipes-kernel/linux/linux-yocto_4.8.bbappend
new file mode 100644
index 0000000..0e6960e
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.8:"
+
+# TPM kernel support
+SRC_URI += "\
+        ${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' file://tpm.cfg', '', d)} \
+        ${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' file://tpm.scc', '', d)} \
+"
-- 
2.7.4



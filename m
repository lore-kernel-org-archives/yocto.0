Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 379D6E00B2E; Tue,  9 May 2017 07:47:11 -0700 (PDT)
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
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B923AE00B2E
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:10 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id i63so194244pgd.2
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Hx9WX0WdnqlrRKaHqWOaGowrJUG0bHctsqp+gKsS+V4=;
	b=N1tAULPv55J04EU2/hUO9SUwuOh9vxS01pzXrM63dkm8gRUdecejk8KEurNx+D0pWV
	Iv8lwCCKJJ6DsZHYQVSFEgV1/dXoU/1uBFr+ClmUWN503fhrxSWCwRAK6X7kE15PUOGQ
	s5ou+aPaKcwCSuVhPj8Yy9S1+Ib0F6FCr1comtXJKAKHBcBt0Dq90381Yhp2gJZtvrYo
	C8hiubtwIn6Dn5l5IJgm7/9PQLozWGfGXS3hYxokmGHzKafp5bQZAi2d//wSGiDfm+w7
	atUZNLNYVQbNkenK1MABmiCJsWKIYkOKIqvCb5J1rPWalNN3bAlQHXmvyBPaZbDGRRdr
	7hKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Hx9WX0WdnqlrRKaHqWOaGowrJUG0bHctsqp+gKsS+V4=;
	b=KzVOkBtkBivVH0k5DPNaqEdAs8CYBVKpXhFhx9qFQYVBQwRVs4A1PSNsLQk5FD2Cxi
	ReXpgmTrs3BAtF8XWtg8QNc9dckK8KACyoHoXiKQMuhhKxeS3vkrzzr69RjqNvkeA9jT
	V2cRT30eA1FslgP6kgqqTt7TY1I5d/Yoy5sEoidFo1CO5WHtuTWE59rp3fSgHab+NOVh
	bNGYoCz4mvlr6D14pbmx3PdSV6RwPPJv0ZPdMaEr8xE+Sb5CtjQcxnYG7q/8Qg4aOhE7
	bkfz191KNIPYg9/AlHMC7R3oL4j13KFprer4WmpjatUt+NjzJdD2+bQCKKt2ldf78BXQ
	/rdA==
X-Gm-Message-State: AODbwcAcQxw2EQTxzrrxi/6RMJdmh//392/lYhgSp92k4KR1I0aVVhF4
	toj9kX8IrrdouiZz
X-Received: by 10.99.124.75 with SMTP id l11mr502801pgn.211.1494341229911;
	Tue, 09 May 2017 07:47:09 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:09 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:46:58 -0700
Message-Id: <1494341221-17621-8-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 07/10] kernel tpm rework
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
X-List-Received-Date: Tue, 09 May 2017 14:47:11 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg       |  5 +++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc       |  3 +++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg   | 15 +++++++++++++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc   |  6 ++++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg   |  4 ++++
 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg      |  5 +++++
 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc      |  4 ++++
 meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend  | 11 +++++++++++
 meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend |  5 -----
 9 files changed, 53 insertions(+), 5 deletions(-)
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
new file mode 100644
index 0000000..e34b24e
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
@@ -0,0 +1,5 @@
+CONFIG_HW_RANDOM_TPM=y
+CONFIG_TCG_TPM=y
+CONFIG_TCG_TIS_CORE=y
+CONFIG_TCG_TIS=y
+CONFIG_SECURITYFS=y
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc
new file mode 100644
index 0000000..2949ed4
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc
@@ -0,0 +1,3 @@
+define KFEATURE_DESCRIPTION "Enable TPM"
+
+kconf hardware tpm.cfg
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg
new file mode 100644
index 0000000..59993f9
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg
@@ -0,0 +1,15 @@
+CONFIG_HW_RANDOM_TPM=y
+CONFIG_TCG_TPM=y
+CONFIG_TCG_TIS_CORE=y
+CONFIG_TCG_TIS=y
+CONFIG_SECURITYFS=y
+
+CONFIG_REGMAP_I2C=y
+CONFIG_I2C_BOARDINFO=y
+CONFIG_I2C_COMPAT=y
+CONFIG_RTC_I2C_AND_SPI=y
+
+CONFIG_TCG_TIS_I2C_ATMEL=m
+CONFIG_TCG_TIS_I2C_INFINEON=m
+CONFIG_TCG_TIS_I2C_NUVOTON=m
+CONFIG_TCG_TIS_ST33ZP24_I2C=m
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc
new file mode 100644
index 0000000..0e4eedb
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc
@@ -0,0 +1,6 @@
+define KFEATURE_DESCRIPTION "Enable TPM i2c"
+
+include features/i2c/i2c.scc
+
+kconf hardware tpm_i2c.cfg
+
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg
new file mode 100644
index 0000000..8be331a
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg
@@ -0,0 +1,4 @@
+CONFIG_TCG_NSC=m
+CONFIG_TCG_ATMEL=m
+CONFIG_TCG_INFINEON=m
+CONFIG_TCG_TIS_ST33ZP24=m
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg
new file mode 100644
index 0000000..a8b3758
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg
@@ -0,0 +1,5 @@
+CONFIG_HW_RANDOM_TPM=y
+CONFIG_TCG_TPM=y
+CONFIG_TCG_VTPM_PROXY=y
+CONFIG_SECURITYFS=y
+~                    
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc b/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc
new file mode 100644
index 0000000..e842da6
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Enable vTPM"
+
+kconf hardware vtpm.cfg
+
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
new file mode 100644
index 0000000..0eebf00
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
@@ -0,0 +1,11 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"
+
+# Enable tpm in kernel 
+SRC_URI_append_x86 = " \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
+    "
+
+SRC_URI += " \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm_i2c', 'file://tpm_i2c.scc', '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'vtpm', 'file://vtpm.scc', '', d)} \
+    "
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend
deleted file mode 100644
index 208d23f..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-#
-# TPM kernel support
-
-KERNEL_FEATURES_append += "${@bb.utils.contains('MACHINE_FEATURES', 'tpm', ' features/tpm/tpm.scc', '', d)}"
-
-- 
2.7.4



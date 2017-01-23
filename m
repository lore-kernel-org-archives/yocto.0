Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B049CE00839; Mon, 23 Jan 2017 06:11:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27DF3E00867
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 06:11:34 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id 203so63443651ith.0
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 06:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=HOMYSMaYJdWVCAkReMxRYol+QX/weNpd19oBjcWCvVs=;
	b=jRhjsr1c3SzIFc96nlqRzIADWkAHmt2ASbAEfNTdfRMwlIsVCETJCYozUckl+jE6G4
	705DivwdY4+TUtqQ088jKp8g/rH5Glq9GyMdD0mkDteORSQ407yXztWuWaoEeA78sNEy
	Ap/qHj1U+6tqmpBhi9GgCG/dt48DE5RnXuiGusvg2RA6etb8tXTbaq5VZc+6fhlaBBDS
	WsFl5TgwtAkK43nP1NufioC7PhWzQRn6jNvWuna+Ps+lYgTuTQidTu75e++ZvihCx+N9
	M8wGFsdXihoX+ySRpdzczu8zcZQKZiuVjNJKJiCCTllixqhjSwMhT+DY3rH1+vY16goq
	H+zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=HOMYSMaYJdWVCAkReMxRYol+QX/weNpd19oBjcWCvVs=;
	b=FW020HLHgM9IxKQI/bmsuwB0+2Pv77UJ8EvWCPXprLr4LVth49ubB3RK2B0rJMQfmO
	GX4HHylRZrQKPFQ2JhIPh6nqz7HoaZeP9cVjJgrGKaHzW5gur8LjmePTrmPdZZjKhQYL
	/oY3+++QjbAeiixtlX4RYXQlAyVgut9xABXKy/vJl08eGp4iui7vj7s3fSWzrnN4RXSn
	A1gisIwVUogh3xLw/ebET5My0Obw4fzJGztcjQ7S6Uu8sBEelMYuVVngqP4KjLH6cJXe
	e/FMgVnfrbg6P/vL8saTzPHWSU72rbTmVKhxLMlaIMAOfeacUgwcKOyvpwLVYKJIUmF/
	KuTw==
X-Gm-Message-State: AIkVDXKTfNn8s7xYgnUfLBNLphDp2AHks6ePK5Kf2sM7q9pqeIIr7t28T5MBlXQFvhjNhdbP
X-Received: by 10.36.236.3 with SMTP id g3mr15279194ith.56.1485180694168;
	Mon, 23 Jan 2017 06:11:34 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8FC12.dip0.t-ipconnect.de.
	[93.232.252.18]) by smtp.gmail.com with ESMTPSA id
	x197sm6462963ite.17.2017.01.23.06.11.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 23 Jan 2017 06:11:33 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Jan 2017 15:11:19 +0100
Message-Id: <c19c0e806114a43ea11774620e83a899a8f579f3.1485180600.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.d80eadf93cc834138baf753dee75bd75faefc003.1485180600.git-series.patrick.ohly@intel.com>
References: <cover.d80eadf93cc834138baf753dee75bd75faefc003.1485180600.git-series.patrick.ohly@intel.com>
Subject: [yocto-kernel-cache][PATCH 1/1] meta: add TPM feature
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
X-List-Received-Date: Mon, 23 Jan 2017 14:11:37 -0000

Some hardware has a TPM chip and in addition, qemu can emulate it
using swtpm.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 features/tpm/tpm.cfg | 18 ++++++++++++++++++
 features/tpm/tpm.scc |  4 ++++
 2 files changed, 22 insertions(+)
 create mode 100644 features/tpm/tpm.cfg
 create mode 100644 features/tpm/tpm.scc

diff --git a/features/tpm/tpm.cfg b/features/tpm/tpm.cfg
new file mode 100644
index 0000000..8b3f6d9
--- /dev/null
+++ b/features/tpm/tpm.cfg
@@ -0,0 +1,18 @@
+# Enable TPM device drivers.
+CONFIG_TCG_TPM=y
+CONFIG_HW_RANDOM_TPM=y
+CONFIG_TCG_TPM=y
+CONFIG_TCG_TIS_CORE=y
+CONFIG_TCG_TIS=y
+CONFIG_TCG_TIS_SPI=y
+CONFIG_TCG_TIS_I2C_ATMEL=y
+CONFIG_TCG_TIS_I2C_INFINEON=y
+CONFIG_TCG_TIS_I2C_NUVOTON=y
+CONFIG_TCG_NSC=y
+CONFIG_TCG_ATMEL=y
+CONFIG_TCG_INFINEON=y
+CONFIG_TCG_CRB=y
+CONFIG_TCG_VTPM_PROXY=y
+CONFIG_TCG_TIS_ST33ZP24=y
+CONFIG_TCG_TIS_ST33ZP24_I2C=y
+CONFIG_TCG_TIS_ST33ZP24_SPI=y
diff --git a/features/tpm/tpm.scc b/features/tpm/tpm.scc
new file mode 100644
index 0000000..eeddc31
--- /dev/null
+++ b/features/tpm/tpm.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Enable TCG TPM driver (Trusted Computing Group Trusted Platform Module)"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware tpm.cfg
-- 
git-series 0.9.1


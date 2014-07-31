Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65880E0056A; Thu, 31 Jul 2014 16:44:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F180E004E0
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 16:44:42 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id rd3so4587139pab.40
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 16:44:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=hR+/zYP/iSi5+fj2BpBI3ZXsSmjbMp1bwN6TgmsFEvE=;
	b=DzWsWaZ/QwcuTxa4e376MIZ8HGJeWpTe1nwGqWws3U5wiEqarfzlbXLaMQwhdFuMIO
	3BoY6WgTh7R76OYDYvj0ssp6r2LSlBnKy8/DSaOYRCjCOATnN03GjDWt8M60CnqZ22CO
	u5W5K9ytOGuKscmT4B/5K51Z6AmpAEbybEzP0XE7zVcFJfULjcjzy2mZPc9vVxnD0q81
	uM+I4Sd2KYhAgdhAaVFd/wTXmmnXv9R/crKwzSQlAc2MVaLtncsqoceOtFKoIbLUOeoL
	YsfswSPgXrPNwhv4qa6JJ7ZWt2u/HrmGMkq9y7BlW4P4C26cdjQHGRT2Xx1gAE3hV7/Z
	rBuw==
X-Gm-Message-State: ALoCoQkQFSVwl8DvDMJyAv97TLuJ9wfm9x7KWeX98TNKFXyn74j8buV3xgg/N10m928wFWxMxfQG
X-Received: by 10.68.57.165 with SMTP id j5mr1616191pbq.147.1406850281207;
	Thu, 31 Jul 2014 16:44:41 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	fx13sm1817856pdb.64.2014.07.31.16.44.40 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 31 Jul 2014 16:44:40 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Thu, 31 Jul 2014 16:44:38 -0700
Message-Id: <1406850278-28026-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] toyomo: Add kconfig
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
X-List-Received-Date: Thu, 31 Jul 2014 23:44:45 -0000

Add kernel config to enable toyomo

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-kernel/linux/linux-yocto/tomoyo.cfg    | 8 ++++++++
 recipes-kernel/linux/linux-yocto/tomoyo.scc    | 4 ++++
 recipes-kernel/linux/linux-yocto_3.14.bbappend | 4 ++++
 3 files changed, 16 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto/tomoyo.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/tomoyo.scc
 create mode 100644 recipes-kernel/linux/linux-yocto_3.14.bbappend

diff --git a/recipes-kernel/linux/linux-yocto/tomoyo.cfg b/recipes-kernel/linux/linux-yocto/tomoyo.cfg
new file mode 100644
index 0000000..9fb8228
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/tomoyo.cfg
@@ -0,0 +1,8 @@
+CONFIG_SECURITY_TOMOYO=y
+CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY=2048
+CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG=1024
+CONFIG_SECURITY_TOMOYO_POLICY_LOADER="/sbin/tomoyo-init"
+CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER="/sbin/init"
+CONFIG_DEFAULT_SECURITY_TOMOYO=y
+CONFIG_DEFAULT_SECURITY="tomoyo"
+
diff --git a/recipes-kernel/linux/linux-yocto/tomoyo.scc b/recipes-kernel/linux/linux-yocto/tomoyo.scc
new file mode 100644
index 0000000..9080934
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/tomoyo.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Toyomo Kernel Support"
+define KFEATURE_COMPATIBILITY arch
+
+kconf non-hardware toyomo.cfg
diff --git a/recipes-kernel/linux/linux-yocto_3.14.bbappend b/recipes-kernel/linux/linux-yocto_3.14.bbappend
new file mode 100644
index 0000000..0c742c1
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -0,0 +1,4 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+# Toyomo kernel support
+SRC_URI += "${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.cfg', '', d)}"
-- 
1.9.1



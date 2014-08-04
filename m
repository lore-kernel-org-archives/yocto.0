Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 079F7E004DD; Mon,  4 Aug 2014 10:08:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC0C3E0030B
	for <yocto@yoctoproject.org>; Mon,  4 Aug 2014 10:08:40 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id hz1so10331207pad.22
	for <yocto@yoctoproject.org>; Mon, 04 Aug 2014 10:08:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=BqrwvCWaVVSf/OhgUEHrgfB1pKj97VHGCRjYLHB51nI=;
	b=CdV+WY3Y1wgSTuh/xmOMUX0SxZdtjQhm5o5sxdfT4BaQnXzugtBOEizaekX8aPhTNX
	DmLQH7XfnPDwSuFVZshIj/+WMjieDwThvtkJsJfgbZUHnaCYjS14VmheeX5BQj5JUFR1
	mz5EVtuR4kxd9rWxaBxZAkGh2yrtVnV0ehrh9EuK4UJQ94LBeth6tWp/sQNc/mGIhU7f
	P6TtJ7OIyOv5TjXtVAx6ZffKDd2Dm2jKCRP46UspsmcmHM2k4X5y/QgotunKXZC/mau9
	++JOk1gqNQGprlXl8nGC4GXLoalfABBEfxsWvl0g+stJmXUZeqapp0BEudy703b0wLSs
	r1qw==
X-Gm-Message-State: ALoCoQlxC9dqgwQPafLNuItOaFQMD4dq1CmTD0BAtNFxaiKs7ixSCeyWP8mVma+6vvOMtC3I2PiV
X-Received: by 10.66.192.73 with SMTP id he9mr5418508pac.88.1407172119677;
	Mon, 04 Aug 2014 10:08:39 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id oq3sm5388355pbb.14.2014.08.04.10.08.37
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 04 Aug 2014 10:08:38 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Mon,  4 Aug 2014 10:08:34 -0700
Message-Id: <1407172114-23207-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH V2] tomoyo: Add kconfig
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
X-List-Received-Date: Mon, 04 Aug 2014 17:08:49 -0000

V2:
Fixed path to init program
Fix typo in name

Add kernel config to enable tomoyo

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-kernel/linux/linux-yocto/tomoyo.cfg    | 7 +++++++
 recipes-kernel/linux/linux-yocto/tomoyo.scc    | 4 ++++
 recipes-kernel/linux/linux-yocto_3.14.bbappend | 4 ++++
 3 files changed, 15 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto/tomoyo.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/tomoyo.scc
 create mode 100644 recipes-kernel/linux/linux-yocto_3.14.bbappend

diff --git a/recipes-kernel/linux/linux-yocto/tomoyo.cfg b/recipes-kernel/linux/linux-yocto/tomoyo.cfg
new file mode 100644
index 0000000..0caccf7
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/tomoyo.cfg
@@ -0,0 +1,7 @@
+CONFIG_SECURITY_TOMOYO=y
+CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY=2048
+CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG=1024
+CONFIG_SECURITY_TOMOYO_POLICY_LOADER="/sbin/ccs-init"
+CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER="/sbin/init"
+CONFIG_DEFAULT_SECURITY_TOMOYO=y
+CONFIG_DEFAULT_SECURITY="tomoyo"
diff --git a/recipes-kernel/linux/linux-yocto/tomoyo.scc b/recipes-kernel/linux/linux-yocto/tomoyo.scc
new file mode 100644
index 0000000..9080934
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/tomoyo.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Tomoyo Kernel Support"
+define KFEATURE_COMPATIBILITY arch
+
+kconf non-hardware toyomo.cfg
diff --git a/recipes-kernel/linux/linux-yocto_3.14.bbappend b/recipes-kernel/linux/linux-yocto_3.14.bbappend
new file mode 100644
index 0000000..b46419c
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -0,0 +1,4 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+# Tomoyo kernel support
+SRC_URI += "${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.cfg', '', d)}"
-- 
1.9.1



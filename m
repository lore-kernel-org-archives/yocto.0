Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F8DAE006EF; Wed, 14 May 2014 15:31:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pa0-f43.google.com (unknown [209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE074E0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:31:44 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id hz1so182518pad.16
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=FbrQbqoMEM1Czn8/lpMHncwyRnjsIOuE8mrDiiEFiME=;
	b=WFo+8iODrWHgH+8sf2pnkcNjR8ljo5+3g/LgTBhBAELWAtcM7OVbMOMkjdOE7lmSkP
	ba3sBPMdDXq8wkkad6jvd1LhTtN8gA1kpyxUtwhIrn+mIzrf6bVZykMi8ozzvgPtUV/x
	ThPwsTfZFGfFLgClwdyFBNfRfmPw468odp0reIfTyPzh/8PQFtxTXSf13t/ZSZ70/xOi
	QnC2nIDyfMprJ95HsJHMhyOfSuUABWltoUuSMIkYrZ7RBAV1i3Gg7qDOcOIYymkMQXIR
	XJdzCZqSOtuo50CDh329Z/5WZ93JUKpa/dtHe9zxZI5Us6ab5H2cP8lz3y4q98Iy8wSw
	/nEg==
X-Received: by 10.66.254.166 with SMTP id aj6mr7763549pad.11.1400106275045;
	Wed, 14 May 2014 15:24:35 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id jd5sm5364684pbb.18.2014.05.14.15.24.33
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 May 2014 15:24:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Wed, 14 May 2014 15:24:18 -0700
Message-Id: <1400106263-25100-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 4/9] Use wildcard in kernel bbappend name
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
X-List-Received-Date: Wed, 14 May 2014 22:31:48 -0000

    linux-kernel: Use wildcard in version to minimize keeping
    in-sync with Poky.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto_3.%.bbappend | 7 +++++++
 recipes-kernel/linux/linux-yocto_3.8.bbappend | 7 -------
 2 files changed, 7 insertions(+), 7 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-yocto_3.%.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_3.%.bbappend b/recipes-kernel/linux/linux-yocto_3.%.bbappend
new file mode 100644
index 0000000..f9487f2
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_3.%.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+# Enable selinux support in the kernel if the feature is enabled
+SRC_URI += "${@base_contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
+# For inconsistent kallsyms data bug on ARM
+# http://lists.infradead.org/pipermail/linux-arm-kernel/2012-March/thread.html#89718 
+EXTRA_OEMAKE += "${@base_contains('TARGET_ARCH', 'arm', ' KALLSYMS_EXTRA_PASS=1', '', d)}"
diff --git a/recipes-kernel/linux/linux-yocto_3.8.bbappend b/recipes-kernel/linux/linux-yocto_3.8.bbappend
deleted file mode 100644
index f9487f2..0000000
--- a/recipes-kernel/linux/linux-yocto_3.8.bbappend
+++ /dev/null
@@ -1,7 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-# Enable selinux support in the kernel if the feature is enabled
-SRC_URI += "${@base_contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
-# For inconsistent kallsyms data bug on ARM
-# http://lists.infradead.org/pipermail/linux-arm-kernel/2012-March/thread.html#89718 
-EXTRA_OEMAKE += "${@base_contains('TARGET_ARCH', 'arm', ' KALLSYMS_EXTRA_PASS=1', '', d)}"
-- 
1.9.1



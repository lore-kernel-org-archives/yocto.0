Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6997E00BEF; Mon,  4 Jan 2016 10:31:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02C9CE00A7D
	for <yocto@yoctoproject.org>; Mon,  4 Jan 2016 10:31:47 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id l65so173006233wmf.1
	for <yocto@yoctoproject.org>; Mon, 04 Jan 2016 10:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=mWLTqVozjM65ZKbSK+QHats4ilsbUieCYbufYZMhVLY=;
	b=YoN1+jSykB6GVolqyLEziEikIEDXmrO3h/mSAJTS+MZ5zeYaESX/ousBVOLCEhveg1
	jjTwamICJKRliUY5JzxtPfOSn2FhAQxL+r1GwAGe1+LvqzcgLor9mAUkfdbFlEY4Lk5t
	iK6bc39/lHkqQuR0n7tI4DAN73LOH5TwVj29TC6OZdWUhKSEDz2XwSPBzottpL9FBSej
	f2qjBreR8Wn1/VmazT3mVbkl91b6mU53WDWjGaGscAxnz2+I94H18HiBKNTRjXzMH40R
	e9BjD7q4xYHwpOI6qJFRcGOT4AjLN8MpK2E7thC2IEcdlI3DIA3smA1xqpMP/h95EmWq
	PANA==
X-Received: by 10.28.52.213 with SMTP id b204mr104556046wma.32.1451932306989; 
	Mon, 04 Jan 2016 10:31:46 -0800 (PST)
Received: from sgxcmp131.intra.sigfox.io ([217.114.201.133])
	by smtp.gmail.com with ESMTPSA id
	z3sm76241534wjx.38.2016.01.04.10.31.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 04 Jan 2016 10:31:46 -0800 (PST)
Sender: Thomas PERROT <vomegaz@gmail.com>
From: Thomas Perrot <thomas.perrot@tupi.fr>
To: yocto@yoctoproject.org
Date: Mon,  4 Jan 2016 19:31:44 +0100
Message-Id: <1451932304-25824-1-git-send-email-thomas.perrot@tupi.fr>
X-Mailer: git-send-email 2.1.4
Subject: [meta-selinux][PATCH] Remove recipes for kernel 3.14 and 3.19 from master branch, to fix a build error. ERROR: No recipes available for: meta-selinux/recipes-kernel/linux/linux-yocto_3.19.bbappend meta-selinux/recipes-kernel/linux/linux-yocto_3.14.bbappend
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
X-List-Received-Date: Mon, 04 Jan 2016 18:31:52 -0000

Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
---
 recipes-kernel/linux/linux-yocto_3.14.bbappend | 8 --------
 recipes-kernel/linux/linux-yocto_3.19.bbappend | 8 --------
 2 files changed, 16 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto_3.19.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_3.14.bbappend b/recipes-kernel/linux/linux-yocto_3.14.bbappend
deleted file mode 100644
index 65c79ef..0000000
--- a/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-# Enable selinux support in the kernel if the feature is enabled
-SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
-
-# For inconsistent kallsyms data bug on ARM
-# http://lists.infradead.org/pipermail/linux-arm-kernel/2012-March/thread.html#89718 
-EXTRA_OEMAKE += "${@bb.utils.contains('TARGET_ARCH', 'arm', ' KALLSYMS_EXTRA_PASS=1', '', d)}"
diff --git a/recipes-kernel/linux/linux-yocto_3.19.bbappend b/recipes-kernel/linux/linux-yocto_3.19.bbappend
deleted file mode 100644
index a8c0647..0000000
--- a/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-# Enable selinux support in the kernel if the feature is enabled
-SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
-
-# For inconsistent kallsyms data bug on ARM
-# http://lists.infradead.org/pipermail/linux-arm-kernel/2012-March/thread.html#89718
-EXTRA_OEMAKE += "${@bb.utils.contains('TARGET_ARCH', 'arm', ' KALLSYMS_EXTRA_PASS=1', '', d)}"
-- 
2.1.4



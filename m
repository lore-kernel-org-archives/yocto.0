Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04025E00861; Mon,  8 Sep 2014 05:39:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA271E00847
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 05:39:37 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=scrapper.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1XQxaH-0000L8-DO; Mon, 08 Sep 2014 11:58:14 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Mon,  8 Sep 2014 12:03:37 +0000
Message-Id: <1410177817-19839-4-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1410177817-19839-1-git-send-email-flihp@twobit.us>
References: <1410177817-19839-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 3/3] linux-yocto: Remove bbappend for old 3.4 kernel.
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
X-List-Received-Date: Mon, 08 Sep 2014 12:39:41 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-kernel/linux/linux-yocto_3.4.bbappend |    7 -------
 1 file changed, 7 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_3.4.bbappend b/recipes-kernel/linux/linux-yocto_3.4.bbappend
deleted file mode 100644
index f9487f2..0000000
--- a/recipes-kernel/linux/linux-yocto_3.4.bbappend
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
1.7.10.4



Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89790E00BA1; Thu, 15 May 2014 18:32:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pb0-f48.google.com (unknown [209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 086DDE00BA0
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:12 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rr13so1846499pbb.21
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=YEesLNALeg2IM1oWfn4lo2G8E0X7yg++5ZANPpHmu8o=;
	b=yNTDKKhyCgfdckuza0NQWr8VSLTeJiE7TGZxbGL+TZixbMB6yiRfDS4WiaHugpBErV
	nmqTKZ+c3w3jG+UlyC8KcBEsZ+PyL7Gd0RSL27TyrqKDX/s/kIXNNfk8DylyAiKQFYq2
	1/PWTpiYA9UlNCrWu5G6B41a87s4grA+lw5e7OnhZehO8JGbYY+OXq6B7KgayLJi/PXL
	o6HaA05RoFKuf05Bb5QTzQ7BiP3nLFRjK8HFBxHQ2EWznmYc2+qbiu1LtbZDqlQMHFuv
	7/hcHMQbTf8gAVqqgH9ggfD2Ff8JSnGorTrEFN61Gy+ZCXjznB/rdMlPQcBsaWFElfob
	CMmQ==
X-Received: by 10.66.184.239 with SMTP id ex15mr16698873pac.122.1400203932399; 
	Thu, 15 May 2014 18:32:12 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	ph1sm27579744pac.14.2014.05.15.18.32.10 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 May 2014 18:32:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Thu, 15 May 2014 18:31:26 -0700
Message-Id: <1400203891-30912-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
References: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
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
X-List-Received-Date: Fri, 16 May 2014 01:32:15 -0000

    linux-kernel: Use wildcard in version to minimize keeping in-sync with Poky.

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



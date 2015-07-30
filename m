Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E956E00ABE; Thu, 30 Jul 2015 04:27:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A126E00A7E
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 04:27:48 -0700 (PDT)
Received: by pdrg1 with SMTP id g1so23211892pdr.2
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 04:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=J0WG669ts8xyKuwiXzK7vAG0i4Z/81UoVW2/ZDF09j8=;
	b=UcS7lnziVMve60Gg5IpVve7E9zFbGtaOcYUai+76kYLgpNa+4jsE3InsSiOKVVOpV0
	54h0R2YAZEyadvT74W105gkRW0APek5NxWUnt+IF3oVqOYHHbVMd9Hr9BVfkzcpA6L2H
	bk4XD6l7mkJhr+WAMdTC9UPqqtnsLrGbcZ4TRz5alAW0yQ1OUqAnAf5q+BGs9bkmrU8J
	9U1rZh1O0aG2pBVA2KcrwJaoNNVYxyxh5KbZiObeKLPdsseRRMARy4P8BDf+BsAH+C7I
	4yI0XVVKQSD+4jFFkW9gEnKEO86gbaLomc/gL5rK9i7ajC+euKQv1ubBIL2/YVgvNokb
	/wVw==
X-Received: by 10.70.119.73 with SMTP id ks9mr106258762pdb.131.1438255668507; 
	Thu, 30 Jul 2015 04:27:48 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id j4sm1693237pdo.62.2015.07.30.04.27.46
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jul 2015 04:27:48 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Jul 2015 16:58:15 +0530
Message-Id: <1438255695-10644-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 1/2] linux-yocto: enable selinux support for kernel v4.1
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
X-List-Received-Date: Thu, 30 Jul 2015 11:27:50 -0000

From: Shrikant Bobade <Shrikant_Bobade@mentor.com>

The default kernel is now v4.1. So we need the selinux support
for kernel v4.1, inorder to get selinux enabled images out of box.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-kernel/linux/linux-yocto_4.1.bbappend |    8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto_4.1.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_4.1.bbappend b/recipes-kernel/linux/linux-yocto_4.1.bbappend
new file mode 100644
index 0000000..a8c0647
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+# Enable selinux support in the kernel if the feature is enabled
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
+
+# For inconsistent kallsyms data bug on ARM
+# http://lists.infradead.org/pipermail/linux-arm-kernel/2012-March/thread.html#89718
+EXTRA_OEMAKE += "${@bb.utils.contains('TARGET_ARCH', 'arm', ' KALLSYMS_EXTRA_PASS=1', '', d)}"
-- 
1.7.9.5



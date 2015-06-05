Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74E1AE009DF; Fri,  5 Jun 2015 01:40:12 -0700 (PDT)
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
	*      [209.85.192.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0E8DE0098D
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 01:40:09 -0700 (PDT)
Received: by qgf75 with SMTP id 75so25320998qgf.1
	for <yocto@yoctoproject.org>; Fri, 05 Jun 2015 01:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=H898ppiY+1AZfD9SyhkEQkppidFELrQ5/EJM8oDYsG0=;
	b=RyMuuO7Ry/uk2Rv2A4yFXlY2wI7aJG7gI1w/YcL4HdgAyA1Kc1mAKqhJwrgSxBIZwB
	m6TMEFd6AYDa3oCKUPa8beclirWq+Nx1Wdf7VRxwn700clAZ3SwTPHP8WzDfBHlgK988
	toXG5NfFdcXtdy9Xab67CUsoljk73c4zW+nGC4neZ2i1+vFmYzWT1OxQdWuTevQFLR4T
	uJXITJRnZRk53lHEXpIlelQhTKF6gbtMPOXylseynI+0ZqiQEZYdjUaV+D0UJeAUb8GR
	1oUKsmbbQYbjRvlDN0vOPuL2qFZRKYvxHO6n2W/obcJgm+6RhURP43h0r1HwtV7IoBVO
	FDfA==
X-Received: by 10.55.43.130 with SMTP id r2mr4596309qkr.14.1433493608259;
	Fri, 05 Jun 2015 01:40:08 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by mx.google.com with ESMTPSA id 69sm3679221qhv.17.2015.06.05.01.40.06
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jun 2015 01:40:07 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Jun 2015 14:10:43 +0530
Message-Id: <1433493643-13785-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: [meta-selinux][PATCH] linux-yocto: enable selinux support for kernel v3.19
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
X-List-Received-Date: Fri, 05 Jun 2015 08:40:12 -0000

From: Shrikant Bobade <Shrikant_Bobade@mentor.com>

The default kernel is now v3.19. So we need the selinux support
for kernel v3.19, inorder to get selinux enabled images out of box.

Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
---
 recipes-kernel/linux/linux-yocto_3.19.bbappend |    8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto_3.19.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_3.19.bbappend b/recipes-kernel/linux/linux-yocto_3.19.bbappend
new file mode 100644
index 0000000..65c79ef
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_3.19.bbappend
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



Return-Path: <tom.rini@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9A92E0044D
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 10:34:57 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so3818453ghb.35
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 10:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=ZdUkepFiZsvpLRvS1noiTyYMmPL03UQwTf/5TAiMp7c=;
	b=wSCR5aQqb8mLABcq3qKrP58PEHNY1JxH3q1ByYANj2QMWwAfR1tOwgNBzM15gPe+oO
	VG1UWX+onsdIDQUV8VC5+bbq6eQLf5m+ToNEEfsi7GWESOW4I88rKoysYJP9ZrrTnqaP
	kCD7d/b7IFQ7t7+Jq+EIwkCkMWgXHo/2V8Z2xyc8nTZuAj2a6zADduMJrOIRC2wFH2TD
	okcnBV28xHuZDl4ocO+wAuGxYg2B2i0r3pCxGX4lD3+Zo5F2JJ4KZzCJOzz8Un24L9qT
	JyM9oM9uO47RhwNdQtlX5zzBdWpbBLiwzSel4jBaOsWW1W5Izjx4V/miv5IqBeMAfZoM
	doqQ==
Received: by 10.60.8.103 with SMTP id q7mr15033740oea.61.1332524096521;
	Fri, 23 Mar 2012 10:34:56 -0700 (PDT)
Received: from localhost.localdomain (ip68-230-54-74.ph.ph.cox.net.
	[68.230.54.74])
	by mx.google.com with ESMTPS id r7sm8307063obc.15.2012.03.23.10.34.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 23 Mar 2012 10:34:55 -0700 (PDT)
Sender: Tom Rini <tom.rini@gmail.com>
From: Tom Rini <trini@ti.com>
To: yocto@yoctoproject.org
Date: Fri, 23 Mar 2012 10:34:55 -0700
Message-Id: <1332524095-8135-1-git-send-email-trini@ti.com>
X-Mailer: git-send-email 1.7.0.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] ia32-base.inc: Use '=' for IMAGE_FSTYPES
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 23 Mar 2012 17:34:57 -0000

As per
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-March/019772.html
a machine conf file should use '=' to set IMAGE_FSTYPES.

Cc: Kishore Bodke <kishore.k.bodke@intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Signed-off-by: Tom Rini <trini@ti.com>
---
 conf/machine/include/ia32-base.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 9b2ef5a..74ab5a5 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -11,7 +11,7 @@ MACHINE_FEATURES += "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules eee-acpi-scripts"
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "grub"
 
-IMAGE_FSTYPES += "ext3 cpio.gz live"
+IMAGE_FSTYPES = "ext3 cpio.gz live"
 
 KERNEL_IMAGETYPE ?= "bzImage"
 
-- 
1.7.0.4



Return-Path: <tom.rini@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95E82E00747
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 11:16:45 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so1239297ggc.35
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 11:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=Kvvo+cuuOQKOuKbT8te+9ygk7h6GJojjsHEu40O4+dI=;
	b=Pe+Y3eFumH0+ryFHAOcY98XzF/XDmmN6ffZmQQhmDqmt1Po9yN8AXA/tvwdU2icWf+
	t8cv10m1xg2EXqYvNhqy7nqHnhdP4Y9X1LcYHy2eqXY+KmtPeayvjRV7Itr3QRAKitVs
	vOdAccktv4RF08JwKqUmv1MmsLgwTDNzMdgkSu09qUS4yw/3WKyCOX6t1JoDNtwAleOQ
	BWRvFGkTDDFzWhxZ35fbxnEu0/oF6rDcmqDODG2NJ6d/6xOehWZJM3ZxylLeABTVxycE
	jIkPSthlsBzh9R3t0MjuprkW2ysIt+NN+OtY6OUd81p0dnIApqKuPzrNWa/BBuI/5J5j
	P+GA==
Received: by 10.60.9.102 with SMTP id y6mr40558153oea.46.1332958604968;
	Wed, 28 Mar 2012 11:16:44 -0700 (PDT)
Received: from localhost.localdomain (ip68-230-54-74.ph.ph.cox.net.
	[68.230.54.74])
	by mx.google.com with ESMTPS id 8sm3700014obv.19.2012.03.28.11.16.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 28 Mar 2012 11:16:42 -0700 (PDT)
Sender: Tom Rini <tom.rini@gmail.com>
From: Tom Rini <trini@ti.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Mar 2012 11:16:41 -0700
Message-Id: <1332958601-24500-1-git-send-email-trini@ti.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1332524095-8135-1-git-send-email-trini@ti.com>
References: <1332524095-8135-1-git-send-email-trini@ti.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [meta-intel][PATCH v2] ia32-base.inc: Use '=+' for IMAGE_FSTYPES
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
X-List-Received-Date: Wed, 28 Mar 2012 18:16:45 -0000

As per
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-March/020053.html
a machine conf file should use '=+' to set IMAGE_FSTYPES.

Cc: Kishore Bodke <kishore.k.bodke@intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Signed-off-by: Tom Rini <trini@ti.com>
---
 conf/machine/include/ia32-base.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 9b2ef5a..817ee2d 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -11,7 +11,7 @@ MACHINE_FEATURES += "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules eee-acpi-scripts"
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "grub"
 
-IMAGE_FSTYPES += "ext3 cpio.gz live"
+IMAGE_FSTYPES =+ "ext3 cpio.gz live"
 
 KERNEL_IMAGETYPE ?= "bzImage"
 
-- 
1.7.0.4



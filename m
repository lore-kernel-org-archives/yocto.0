Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A480E0093F; Mon,  2 Jan 2017 05:20:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5AA5E00932
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2017 05:20:05 -0800 (PST)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 15F774876A5
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2017 14:20:04 +0100 (CET)
Received: from mfilter27-d.gandi.net (mfilter27-d.gandi.net [217.70.178.155])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id 35EE141C0B1;
	Mon,  2 Jan 2017 14:20:02 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter27-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter27-d.gandi.net (mfilter27-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id C2d4ccJfVzYp; Mon,  2 Jan 2017 14:20:00 +0100 (CET)
X-Originating-IP: 5.9.142.21
Received: from autobuilder.betafive.co.uk (srv1.betafive.co.uk [5.9.142.21])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 8217A41C0BA;
	Mon,  2 Jan 2017 14:20:00 +0100 (CET)
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon,  2 Jan 2017 13:20:11 +0000
Message-Id: <1483363213-27822-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1483363213-27822-1-git-send-email-paul@paulbarker.me.uk>
References: <1483363213-27822-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 1/3] Remove True option to getVar calls
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
X-List-Received-Date: Mon, 02 Jan 2017 13:20:09 -0000

getVar() now defaults to expanding by default.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 classes/linux-raspberrypi-base.bbclass     | 4 ++--
 recipes-kernel/linux/linux-raspberrypi.inc | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
index dc2330a..e925d4e 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -3,8 +3,8 @@ inherit linux-kernel-base
 def get_dts(d, ver=None):
     import re
 
-    staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
-    dts = d.getVar("KERNEL_DEVICETREE", True)
+    staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR")
+    dts = d.getVar("KERNEL_DEVICETREE")
 
     # d.getVar() might return 'None' as a normal string
     # leading to 'is None' check isn't enough.
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 98229d9..19ebefb 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -32,8 +32,8 @@ KERNEL_MODULE_AUTOLOAD += "${@bb.utils.contains("MACHINE_FEATURES", "pitft28r",
 # Set programmatically some variables during recipe parsing
 # See http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#anonymous-python-functions
 python __anonymous () {
-    kerneltype = d.getVar('KERNEL_IMAGETYPE', True)
-    kerneldt = get_dts(d, d.getVar('LINUX_VERSION', True))
+    kerneltype = d.getVar('KERNEL_IMAGETYPE')
+    kerneldt = get_dts(d, d.getVar('LINUX_VERSION'))
     d.setVar("KERNEL_DEVICETREE", kerneldt)
 }
 
-- 
2.1.4



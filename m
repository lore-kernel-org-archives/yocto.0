Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6A4FE01405
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2013 08:20:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Aug 2013 08:20:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,991,1367996400"; d="scan'208";a="353890307"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 30 Aug 2013 08:20:55 -0700
Received: from thunderbird.rb.intel.com (thunderbird.rb.intel.com
	[10.237.105.57])
	by linux.intel.com (Postfix) with ESMTP id 880B56A4092;
	Fri, 30 Aug 2013 08:20:52 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Aug 2013 18:20:06 +0300
Message-Id: <1377876006-13796-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [PATCH][yocto-autobuilder] buildsteps/RunSanityTests: use boot timeout option for testimage
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
X-List-Received-Date: Fri, 30 Aug 2013 15:20:56 -0000

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
index a27cdcb..209fb2a 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
@@ -49,6 +49,7 @@ class RunSanityTests(ShellCommand):
         command = command + 'if [ $? -ne 0 ]; then echo "Starting a VNC server on :1"; vncserver :1; else echo "Will use a VNC server already running on :1"; fi;'
         if layerversion and int(layerversion) > 1:
             command = command + "echo 'INHERIT += \"testimage\"' >> ./conf/auto.conf;"
+            command = command + "echo 'TEST_QEMUBOOT_TIMEOUT = \"1500\"' >> ./conf/auto.conf;"
             if self.suites:
                 command = command + "echo 'TEST_SUITES = \"" + self.suites + "\"'" + " >> ./conf/auto.conf;"
             if self.suitesappend:
-- 
1.8.1.4



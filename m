Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9A60E00C61; Fri, 18 Dec 2015 03:33:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D77EE00C5F
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 03:32:34 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 18 Dec 2015 03:32:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,445,1444719600"; d="scan'208";a="863890927"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2015 03:32:34 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.51])
	by linux.intel.com (Postfix) with ESMTP id 2B26C6A4007;
	Fri, 18 Dec 2015 04:20:34 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Dec 2015 13:00:09 +0200
Message-Id: <f18b11b79acb05136e1bfd61161b0066c90b55be.1450436004.git.ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1450436004.git.ed.bartosh@linux.intel.com>
References: <cover.1450436004.git.ed.bartosh@linux.intel.com>
In-Reply-To: <cover.1450436004.git.ed.bartosh@linux.intel.com>
References: <cover.1450436004.git.ed.bartosh@linux.intel.com>
Cc: srifenbark@gmail.com
Subject: [PATCH 2/2] toaster-manual: Add some details to section 3.1
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
X-List-Received-Date: Fri, 18 Dec 2015 11:33:01 -0000

From: Belen Barros Pena <belen.barros.pena@intel.com>

The sentence explaining how to run builds was not very specific. Make
explicit that you can run builds both using the command line and the
Toaster web interface.

Signed-off-by: Belen Barros Pena <belen.barros.pena@intel.com>
Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 documentation/toaster-manual/toaster-manual-setup-and-use.xml | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/documentation/toaster-manual/toaster-manual-setup-and-use.xml b/documentation/toaster-manual/toaster-manual-setup-and-use.xml
index cf9de31..fdaf8fa 100644
--- a/documentation/toaster-manual/toaster-manual-setup-and-use.xml
+++ b/documentation/toaster-manual/toaster-manual-setup-and-use.xml
@@ -33,12 +33,15 @@
             <literallayout class='monospaced'>
      $ source ../bitbake/bin/toaster
             </literallayout>
-            You can now run builds normally.
+            You can now run your builds from the command line, or with
+            Toaster as explained in section
+            "<link linkend='using-the-toaster-web-interface'>3.7 Using
+            the Toaster Web Interface</link>".
         </para>
 
         <para>
-            To see the build information provided by Toaster, open your
-            favorite browser and enter the following:
+            To access the Toaster web interface, open your favorite
+            browser and enter the following:
             <literallayout class='monospaced'>
      http://127.0.0.1:8000
             </literallayout>
-- 
2.1.4



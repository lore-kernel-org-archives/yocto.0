Return-Path: <javier.b.perez.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 987ACE00922; Fri,  9 Jan 2015 09:07:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 768DBE007C1
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 09:07:27 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2015 09:07:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="438588870"
Received: from unknown (HELO jbperezh-mobl4.amr.corp.intel.com)
	([10.255.34.120])
	by FMSMGA003.fm.intel.com with ESMTP; 09 Jan 2015 08:54:51 -0800
From: "Javier B. Perez" <javier.b.perez.hernandez@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  9 Jan 2015 11:07:08 -0600
Message-Id: <1420823230-6148-3-git-send-email-javier.b.perez.hernandez@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1420823230-6148-1-git-send-email-javier.b.perez.hernandez@linux.intel.com>
References: <1420823230-6148-1-git-send-email-javier.b.perez.hernandez@linux.intel.com>
X-Mailman-Approved-At: Sun, 11 Jan 2015 22:02:59 -0800
Cc: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>
Subject: [PATCH 2/4] Added support for the custom_images property of the force build GUI
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
X-List-Received-Date: Fri, 09 Jan 2015 17:07:29 -0000

From: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>

BuildImages.py: Changed 'start' to support the custom_images property
of the force build GUI and set 'images' variable.

Signed-off-by: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
index 4e8a650..9b9fae9 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
@@ -36,6 +36,8 @@ class BuildImages(ShellCommand):
         self.layerversion_yoctobsp = self.getProperty("layerversion_yoctobsp")
         self.layerversion_core = self.getProperty("layerversion_core")
         self.machine = self.getProperty("MACHINE")
+        if self.getProperty("custom_images") is not None:
+            self.images = " ".join(self.getProperty("custom_images"))
         # core-image-basic rename
         # See: http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=b7f1cca517bbd4191828c6bae32e0c5041f1ff19
         # I hate making people change their configs, so support both.
-- 
1.9.3



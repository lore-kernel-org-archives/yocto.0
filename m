Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67926E00AB7; Mon,  2 Nov 2015 03:55:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40ECEE00AAA
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 03:55:22 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Nov 2015 03:55:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,234,1444719600"; d="scan'208";a="841050624"
Received: from theory.fi.intel.com ([10.237.72.196])
	by fmsmga002.fm.intel.com with ESMTP; 02 Nov 2015 03:55:22 -0800
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Nov 2015 13:58:23 +0200
Message-Id: <1446465503-23774-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH][yocto-autobuilder] buildset-config.controller: Workaround module dependency issue
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
X-List-Received-Date: Mon, 02 Nov 2015 11:55:24 -0000

Dynamically loaded modules are a problem for multilib builds: 32-bit
Pango and Gdk-Pixbuf modules in particular do not get included in the
image when 32-bit versions of the libraries get included.

Proper fix may require extensive changes to dependency handling:
Include the required modules manually in the test configuration as a
workaround for 2.0.

Fixes [YOCTO #8624].
The underlying issue is [YOCTO #8570]

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 buildset-config.controller/nightly-multilib.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/buildset-config.controller/nightly-multilib.conf b/buildset-config.controller/nightly-multilib.conf
index 7cf75c3..bc63c39 100644
--- a/buildset-config.controller/nightly-multilib.conf
+++ b/buildset-config.controller/nightly-multilib.conf
@@ -24,13 +24,13 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
                             'buildhistory' : False, 'multilib': 'lib32',
                             'distro': 'poky',
-                            'atextappend' : '\nRPM_PREFER_ELF_ARCH = "1"\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
+                            'atextappend' : '\nRPM_PREFER_ELF_ARCH = "1"\nIMAGE_INSTALL_append = " lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc"\n'}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'multilib'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
                             'buildhistory' : False, 'multilib': 'lib32',
                             'distro': 'poky', 'packages' : 'ipk',
-                            'atextappend' : '\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
+                            'atextappend' : '\nIMAGE_INSTALL_append = " lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc"\n'}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'multilib'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686',
-- 
2.1.4



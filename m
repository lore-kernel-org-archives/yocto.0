Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8744E00A84; Mon, 10 Aug 2015 16:06:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4B95E00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 16:06:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 10 Aug 2015 16:06:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,648,1432623600"; d="scan'208";a="781526820"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga002.jf.intel.com with ESMTP; 10 Aug 2015 16:06:08 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Aug 2015 16:02:01 -0700
Message-Id: <1439247721-8895-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-darwin][PATCH] README: steps to create OSX-sdk.zip
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
X-List-Received-Date: Mon, 10 Aug 2015 23:06:12 -0000

osx-runtime requires the file OSX-sdk.zip. This file must be created by the user.
This patch describes the typical steps to create this file using a Mac computer.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 README | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/README b/README
index b7243cb..6e8d500 100644
--- a/README
+++ b/README
@@ -10,7 +10,31 @@ The odcctools2 version should be 64 bit safe and not need those workarounds.
 You also need a OS-X sysroot tarball/zip file generated (copied) from a target OS-X
 system. This is placed in the osx-runtime files directory and is used to compile the SDK
 against it. It needs to contain the system libraries (/usr/lib) and include files 
-(/usr/include).
+(/usr/include). This tarball is not part of this meta-darwin layer and must be
+created by the user. To create it, the user is required to have a legitimate Mac computer
+with OSX 10.8 or later and with Xcode 5.1.0 or later installed.
+
+To create the SDK tarball, perform the following steps using your Mac computer:
+
+1. Install Xcode 5.1.0 or later using App Store.
+
+2. Install the command-line development tools
+    (Preferences -> Downloads -> Command-line tools)
+
+3. Use Terminal to create the file OSX-sdk.zip from the OSX SDK (this sample assumes
+   OSX 10.10):
+
+    $ mkdir ~/Desktop/OSX-sdk
+    $ cd ~/Desktop/OSX-sdk
+    $ ditto `xcrun --sdk macosx10.10 --show-sdk-path` .
+    $ cd ..
+    $ zip -yr OSX-sdk OSX-sdk
+
+4. Copy the created OSX-sdk.zip file to your Yocto development machine, placing it into
+   meta-darwin layer:
+
+    <...>/meta-darwin/recipes-devtools/osx-runtime/files
+
 
 This layer depends on:
 
-- 
1.9.1



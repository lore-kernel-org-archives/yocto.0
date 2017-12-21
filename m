Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09F53E00EAA; Thu, 21 Dec 2017 08:33:22 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6B3FE00E92
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:21 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761473"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:20 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:24 +0200
Message-Id: <3aa77b9538e94d746811015cd8c4170ac3b087d6.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 16/21] upgradehelper.py: do not include testimage information in maintainer email messages
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:22 -0000

There's some logic to ascribe failures to specific recipe upgrade commits; it's prone
to mismatches and is lacking context about what else was upgraded. Let's make testimage
support available for local maintainer use only - unattended mass-upgrades will not
try to run testimages.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 upgradehelper.py | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 5659735..1170ca5 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -290,17 +290,6 @@ class Updater(object):
             "you can fill RECIPE_NO_UPDATE_REASON in respective recipe file so that\n" \
             "automatic upgrades would no longer be attempted.\n\n"
 
-        testimage_integration_error = \
-            "The recipe *FAILED* in testimage integration. Attached is the log file.\n\n"
-
-        testimage_ptest_info = \
-            "The recipe has ptest enabled and has been tested with core-image-minimal/ptest \n" \
-            "with the next machines %s. Attached is the log file.\n\n"
-
-        testimage_info = \
-            "The recipe has been tested using %s testimage and succeeded with \n" \
-            "the next machines %s. Attached is the log file.\n\n" \
-
         mail_footer = \
             "Please review the attached files for further information and build/update failures.\n" \
             "Any problem please file a bug at https://bugzilla.yoctoproject.org/enter_bug.cgi?product=Automated%20Update%20Handler\n\n" \
@@ -342,18 +331,6 @@ class Updater(object):
         if 'patch_file' in pkg_ctx and pkg_ctx['patch_file'] != None:
             msg_body += next_steps_info % (os.path.basename(pkg_ctx['patch_file']))
 
-        if self.opts['testimage']:
-            if 'integration_error' in pkg_ctx:
-                msg_body += testimage_integration_error
-            else:
-                if 'ptest' in pkg_ctx:
-                    machines = pkg_ctx['ptest'].keys()
-                    msg_body += testimage_ptest_info % machines
-                if 'testimage' in pkg_ctx:
-                    machines = pkg_ctx['testimage'].keys()
-                    msg_body += testimage_info % (settings.get('testimage_name', \
-                        DEFAULT_TESTIMAGE), machines)
-
         msg_body += mail_footer
 
         # Add possible attachments to email
-- 
2.15.1



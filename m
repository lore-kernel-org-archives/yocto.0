Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 422A5E00D3B; Fri, 29 Jul 2016 09:12:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94ADCE00CED
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 09:12:48 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP; 29 Jul 2016 09:12:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,440,1464678000"; d="scan'208";a="741551196"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.54])
	by FMSMGA003.fm.intel.com with ESMTP; 29 Jul 2016 09:12:47 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 11:13:11 -0500
Message-Id: <1469808791-17092-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [PATCHv2][yocto-autobuilder] lib/buildsteps.py: fix report creation in nigthly-oecore
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
X-List-Received-Date: Fri, 29 Jul 2016 16:12:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

nightly-oecore buildset doesn't prove got_revision property
so when got_revision is None use got_revision_oecore instead.

[YOCTO #10051]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/lib/buildsteps.py | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
index eee0c1b..f7b1921 100644
--- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
+++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
@@ -118,8 +118,15 @@ class BitbakeShellCommand(ShellCommand):
         report['target_sys'] = vrs['TARGET_SYS']
 
         report['component'] = 'bitbake'
-        report['branch_commit'] = self.getProperty('branch') + ': ' + \
-                self.getProperty('got_revision')
+        try:
+            branch = self.getProperty('branch')
+            revision = self.getProperty('got_revision')
+            if not revision:
+                revision = self.getProperty('got_revision_oecore')
+        except:
+            branch = "unknown_branch"
+            revision = "unknown_revision"
+        report['branch_commit'] = branch + ': ' + revision
 
         failure = {}
         failure['package'] = "bitbake-%s" % vrs['BB_VERSION']
-- 
2.1.4



Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 854B3E00E0C; Mon, 11 Jul 2016 14:37:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5A4DE00E0C
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 14:37:35 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 11 Jul 2016 14:37:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,348,1464678000"; d="scan'208";a="732758253"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2016 14:37:33 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2016 16:37:52 -0500
Message-Id: <1468273073-8178-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [[PATCH][yocto-autobuilder] 1/2] buildbot/steps/transfer.py: Fix typo in DirectoryDownload step.
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
X-List-Received-Date: Mon, 11 Jul 2016 21:37:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

DirectoryDownload step is based on UploadDirectory and i miss
to upgrade the error log when the buildslave don't support
downloadDirectory previously said uploadDirectory.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/transfer.py   | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/transfer.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/transfer.py
index fb49597..a2f7007 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/transfer.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/transfer.py
@@ -487,7 +487,7 @@ class DirectoryDownload(_TransferBuildStep):
         version = self.slaveVersion("downloadDirectory")
 
         if not version:
-            m = "slave is too old, does not know about uploadDirectory"
+            m = "slave is too old, does not know about downloadDirectory"
             raise BuildSlaveTooOldError(m)
 
         # we rely upon the fact that the buildmaster runs chdir'ed into its
-- 
2.1.4



Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E682E00824; Wed, 20 Aug 2014 03:52:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD45FE00814
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 03:52:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 20 Aug 2014 03:44:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,901,1400050800"; d="scan'208";a="579247054"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2014 03:52:04 -0700
Received: from localhost.localdomain (unknown [10.237.112.162])
	by linux.intel.com (Postfix) with ESMTP id 3D5976A4007;
	Wed, 20 Aug 2014 03:51:24 -0700 (PDT)
From: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Aug 2014 15:57:30 +0300
Message-Id: <1408539450-17081-1-git-send-email-corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [yocto-autobuilder] buildsteps/RunOeSelftest.py: change the way oe-selftest is called
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
X-List-Received-Date: Wed, 20 Aug 2014 10:52:12 -0000

A recent patch went in poky master that added command line parsing and options to the oe-selftest script.
Changing the way oe-selftest is called by the autobuilder to account for these changes.

Signed-off-by: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
index 0efddd7..3d95583 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
@@ -22,5 +22,5 @@ class RunOeSelftest(ShellCommand):
         self.description = "Running oe-selftest"
         self.timeout = 100000
         kwargs['timeout']=self.timeout
-        self.command = "if [ -d meta-selftest ]; then . ./oe-init-build-env; oe-selftest; else echo 'Skipping step - no meta-selftest layer here'; fi"
+        self.command = "if [ -d meta-selftest ]; then . ./oe-init-build-env; oe-selftest --run-all-tests; else echo 'Skipping step - no meta-selftest layer here'; fi"
         ShellCommand.__init__(self, **kwargs)
-- 
1.8.3.2



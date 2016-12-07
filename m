Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12E96E009A4; Wed,  7 Dec 2016 14:55:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4E5BE008E4
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 14:55:29 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 07 Dec 2016 14:55:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,316,1477983600"; d="scan'208";a="909866648"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.142])
	by orsmga003.jf.intel.com with ESMTP; 07 Dec 2016 14:55:27 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Dec 2016 16:57:34 -0600
Message-Id: <1481151454-30018-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[PATCH][yocto-autobuilder]] autobuilder/lib/buildsteps.py: BitbakeShellCommand fix errors on cmdComplete
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
X-List-Received-Date: Wed, 07 Dec 2016 22:55:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

In some cases commandComplete could be executed before stdio log
observer creates a errors attribute. In order to avoid a crash adds
hasattr validation.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/lib/buildsteps.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
index af7d334..717fcf2 100644
--- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
+++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
@@ -145,7 +145,7 @@ class BitbakeShellCommand(ShellCommand):
 
     def commandComplete(self, cmd):
         if cmd.didFail():
-            if self.errors['bitbake']:
+            if hasattr(self, 'errors') and self.errors['bitbake']:
                 buildername = self.getProperty('buildername')
                 buildnumber = self.getProperty('buildnumber')
 
-- 
2.1.4



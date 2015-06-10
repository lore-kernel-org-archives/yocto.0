Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C40F6E00A25; Wed, 10 Jun 2015 09:30:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 847DAE009C2
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 09:30:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 10 Jun 2015 09:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,588,1427785200"; d="scan'208";a="585476978"
Received: from yctb03.ostc.intel.com (HELO yctb03.otcr.jf.intel.com)
	([10.23.219.52])
	by orsmga003.jf.intel.com with ESMTP; 10 Jun 2015 09:30:14 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Jun 2015 16:28:49 +0000
Message-Id: <1433953732-29963-9-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
In-Reply-To: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 08/11][auh] upgradehelper.py: Fix interactive mode when recipe upgrade finish.
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
X-List-Received-Date: Wed, 10 Jun 2015 16:30:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The validation for dropping changes needs to be defined only when
interactive mode is true if not this causes to drop the changes
for every failure.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 19753a6..b1f075d 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -335,11 +335,10 @@ class Updater(object):
 
     # this function will be called at the end of each recipe upgrade
     def pkg_upgrade_handler(self, err):
-        if err and self.patch_file:
+        if err and self.patch_file and self.interactive:
             answer = "N"
-            if self.interactive:
-                I(" %s: Do you want to keep the changes? (y/N)" % self.pn)
-                answer = sys.stdin.readline().strip().upper()
+            I(" %s: Do you want to keep the changes? (y/N)" % self.pn)
+            answer = sys.stdin.readline().strip().upper()
 
             if answer == '' or answer == 'N':
                 I(" %s: Dropping changes from git ..." % self.pn)
-- 
1.8.4.5



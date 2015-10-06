Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23897E00CA7; Tue,  6 Oct 2015 13:11:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1EBAE00AB3
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 13:11:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Oct 2015 13:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,645,1437462000"; d="scan'208";a="820849606"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.68])
	by fmsmga002.fm.intel.com with ESMTP; 06 Oct 2015 13:11:40 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Oct 2015 15:11:44 -0500
Message-Id: <1444162305-1864-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH 1/2][auh] upgradehelper.py: Display error when git commit fails.
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
X-List-Received-Date: Tue, 06 Oct 2015 20:11:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Don't hide error if git commit fails this helps to debug git
problems.

Git commit fail if isn't configured with user name and email.

[YOCTO #8390]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/upgradehelper.py b/upgradehelper.py
index 31f8f14..b5a8abd 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -427,6 +427,7 @@ class Updater(object):
                     I(" %s: Nothing to commit!" % self.pn)
                     return
 
+            I(" %s: %s" % (self.pn, e.stdout))
             raise e
 
     def _order_list(self, package_list):
-- 
1.9.1



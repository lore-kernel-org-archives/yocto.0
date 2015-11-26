Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F71FE00B5D; Wed, 25 Nov 2015 16:00:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F724E00AC5
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:15 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847189062"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:14 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:43 -0600
Message-Id: <1448496046-13186-15-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 14/17] upgradehelper.py: Changed retry failure build to 30 days.
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When build fails is stored into history fail that enables
to don't try to build again in a period of time, so
change that period to 30 days since the work patches will
be publish in web server.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 18db9eb..6cf8dd0 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -738,12 +738,12 @@ class UniverseUpdater(Updater):
                     date.toordinal(date.today()) - \
                     date.toordinal(datetime.strptime(self.history[pn][2], '%Y-%m-%d'))
                 # retry recipes that had fetch errors or other errors after
-                # more than 7 days
+                # more than 30 days
                 if (self.history[pn][3] == str(FetchError()) or
-                        self.history[pn][3] == str(Error())) and retry_delta > 7:
+                        self.history[pn][3] == str(Error())) and retry_delta > 30:
                     return True
 
-                D(" Skipping upgrade of %s: is in history and not 7 days passed" % pn)
+                D(" Skipping upgrade of %s: is in history and not 30 days passed" % pn)
                 return False
 
         # drop native/cross/cross-canadian recipes. We deal with native
-- 
2.1.4



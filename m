Return-Path: <edwin.plauchu.camacho@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD48EE00503; Thu,  1 Dec 2016 08:18:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C0BBE0049D
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 08:18:55 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 01 Dec 2016 08:18:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,282,1477983600"; d="scan'208";a="197932686"
Received: from pianodaemon-contraption.zpn.intel.com ([10.219.128.75])
	by fmsmga004.fm.intel.com with ESMTP; 01 Dec 2016 08:18:44 -0800
From: Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Dec 2016 10:20:03 -0600
Message-Id: <20161201162003.7147-1-edwin.plauchu.camacho@linux.intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [PATCH] AUH: status email indicates the URL of the log folder
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
X-List-Received-Date: Thu, 01 Dec 2016 16:18:58 -0000

Upgrade status email should indicate the URL of the log folder instead of the tar URL

[YOCTO #10670]

Signed-off-by: Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>
---
 upgradehelper.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 239fd88..3954e1f 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -616,7 +616,7 @@ class Updater(object):
                     publish_work_url = ''
 
             statistics_summary = self.statistics.get_summary(
-                    publish_work_url, os.path.basename(work_tarball))
+                    publish_work_url, self.uh_work_dir)
 
             statistics_file = os.path.join(self.uh_work_dir,
                     "statistics_summary")
-- 
2.9.3



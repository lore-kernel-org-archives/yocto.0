Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47C37E00E92; Thu, 21 Dec 2017 08:33:20 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0ED7E00E88
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:19 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761456"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:18 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:22 +0200
Message-Id: <a835b22df6608f9ad5d120a1fa0f9497a4e45232.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 14/21] upgradehelper.py: do not include absolute paths in the generated tarball
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:20 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 upgradehelper.py | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 9110efc..cb48c47 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -555,9 +555,11 @@ class Updater(object):
                     os.path.basename(self.uh_work_dir) + '.tar.gz')
             if publish_work_url:
                 I(" Generating work tarball in %s ..." % work_tarball)
+                tar_cmd = ["tar", "-chzf", work_tarball, "-C", self.uh_base_work_dir, os.path.basename(self.uh_work_dir)]
                 import subprocess
-                if subprocess.call(["tar", "-chzf", work_tarball, self.uh_work_dir]):
+                if subprocess.call(tar_cmd):
                     E(" Work tarball (%s) generation failed..." % (work_tarball))
+                    E(" Tar command: %s" % (" ".join(tar_cmd)))
                     publish_work_url = ''
 
             statistics_summary = self.statistics.get_summary(
-- 
2.15.1



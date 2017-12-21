Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7F1BE00E88; Thu, 21 Dec 2017 08:33:16 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3345DE00E82
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:16 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761419"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:14 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:19 +0200
Message-Id: <e2c927fb8a6f49cc2b2013bcbceef327f7be64fd.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 11/21] weeklyjob.sh: set up a temporary branch and clean up afterwards
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:16 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 weeklyjob.sh | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/weeklyjob.sh b/weeklyjob.sh
index e2c4b1a..8dd0a1c 100755
--- a/weeklyjob.sh
+++ b/weeklyjob.sh
@@ -7,11 +7,23 @@
 #
 # 00 8   * * 6   auh  /home/auh/bin/weeklyjob.sh
 
+# Re-assign these to match your setup!
 auh_dir=~/auto-upgrade-helper
 poky_dir=~/poky
 build_dir=~/build
+sstate_dir=~/sstate-cache
+
+pushd $poky_dir
+
+# Base the upgrades on poky master
+git fetch origin
+git checkout -B tmp-auh-upgrades origin/master
 
 source $poky_dir/oe-init-build-env $build_dir
 $auh_dir/upgradehelper.py all
 
-#/usr/bin/rsync --delete --password-file /home/auh/rsync.passwd --copy-unsafe-links -zaHS /home/auh/work/ auh@downloads.yoctoproject.org::auh/
+# clean up to avoid the disk filling up
+rm -rf $build_dir/tmp/
+find $sstate_dir -atime +10 -delete
+
+popd
-- 
2.15.1



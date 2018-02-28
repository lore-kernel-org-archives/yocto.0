Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AD6EE00EBA; Wed, 28 Feb 2018 07:00:33 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C97EE00A61
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 07:00:32 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Feb 2018 07:00:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,406,1515484800"; d="scan'208";a="207740805"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 28 Feb 2018 07:00:30 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Feb 2018 16:54:32 +0200
Message-Id: <20180228145432.10621-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
Subject: [auh][PATCH] weeklyjob.sh: also clean up the workspace source directory
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
X-List-Received-Date: Wed, 28 Feb 2018 15:00:33 -0000

As devtool does not always remove it.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 weeklyjob.sh | 1 +
 1 file changed, 1 insertion(+)

diff --git a/weeklyjob.sh b/weeklyjob.sh
index 2e8c434..412685e 100755
--- a/weeklyjob.sh
+++ b/weeklyjob.sh
@@ -24,6 +24,7 @@ $auh_dir/upgradehelper.py -e all
 
 # clean up to avoid the disk filling up
 rm -rf $build_dir/tmp/
+rm -rf $build_dir/workspace/sources/*
 find $sstate_dir -atime +10 -delete
 
 popd
-- 
2.15.1



Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3B07E00E96; Wed, 17 Jan 2018 09:05:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 618D0E00DFB
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 09:05:36 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Jan 2018 09:05:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,372,1511856000"; d="scan'208";a="11328955"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga006.jf.intel.com with ESMTP; 17 Jan 2018 09:05:35 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Jan 2018 18:59:35 +0200
Message-Id: <20180117165935.3369-2-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <20180117165935.3369-1-alexander.kanavin@linux.intel.com>
References: <20180117165935.3369-1-alexander.kanavin@linux.intel.com>
Subject: [auh 2/2] upgradehelper.py: add a reference to License-Update: tag.
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
X-List-Received-Date: Wed, 17 Jan 2018 17:05:36 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 upgradehelper.py | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 1170ca5..b22b915 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -276,7 +276,9 @@ class Updater(object):
 
         license_change_info = \
             "*LICENSE CHANGED* please review the %s file, update the LICENSE\n" \
-            "variable in the recipe and summarize the changes in the commit message.\n\n"
+            "variable in the recipe if needed and summarize the changes\n" \
+            "in the commit message via 'License-Update:' tag.\n" \
+            "(example: 'License-Update: copyright years updated.')\n\n"
 
         next_steps_info = \
             "Next steps:\n" \
-- 
2.15.1



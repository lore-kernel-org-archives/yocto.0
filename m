Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD050E00839; Tue,  4 Apr 2017 10:09:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4684AE00655
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 10:09:15 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 04 Apr 2017 10:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,275,1486454400"; d="scan'208";a="82880158"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.121])
	by orsmga005.jf.intel.com with ESMTP; 04 Apr 2017 10:09:14 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Apr 2017 12:09:11 -0500
Message-Id: <1491325751-11146-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH] parsemail.py: Improve clean_subject function
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
X-List-Received-Date: Tue, 04 Apr 2017 17:09:18 -0000

PATCH prefix is not appropriately identified as such if it is not
sepparated from following word in an email Subject line. This leads to
wrong patch naming.

This change allows for appropriate patch naming by checking during
clean_subject function if "PATCH" prefix in Subject line is not
sepparated from following word and adding a space between them.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/bin/parsemail.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index 3c3046d..2f5aecb 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -633,6 +633,12 @@ def clean_subject(subject, drop_prefixes=None):
     in the subject. If drop_prefixes is provided, remove those too,
     comparing case-insensitively."""
 
+    # Check if PATCH prefix is followed by anoter word without a sepparation
+    # space. Add missing space to allow appropriate parsing
+    if patch_pref.match(subject):
+        index = subject.find(patch_pref.match(subject).group(1))
+        subject = subject[:index + 5] + ' ' + subject[index + 5:]
+
     subject = clean_header(subject)
 
     if drop_prefixes is None:
-- 
2.7.4



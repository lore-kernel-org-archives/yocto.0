Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A1F7E0059B; Wed, 11 Nov 2015 14:33:59 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34655E0076A
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 14:33:57 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2015 14:33:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,278,1444719600"; d="scan'208";a="598559614"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Nov 2015 14:33:58 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Nov 2015 16:34:22 -0600
Message-Id: <1447281269-18444-7-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
References: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] PATCHv2 06/13] buildhistory.py: Add missing warning import. git.py: Fix last_commit method.
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
X-List-Received-Date: Wed, 11 Nov 2015 22:33:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildhistory.py | 3 ++-
 git.py          | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/buildhistory.py b/buildhistory.py
index 59566c8..842efc3 100644
--- a/buildhistory.py
+++ b/buildhistory.py
@@ -20,8 +20,9 @@
 
 import os
 import logging as log
-from logging import info as I
 from logging import debug as D
+from logging import info as I
+from logging import warning as W
 from logging import error as E
 from logging import critical as C
 import sys
diff --git a/git.py b/git.py
index 3eebac3..9661364 100644
--- a/git.py
+++ b/git.py
@@ -88,7 +88,7 @@ class Git(object):
         return self._cmd("clean -fd")
 
     def last_commit(self, branch_name):
-        return self._cmd("log --pretty=format:\"%H\" -1" + branch_name)
+        return self._cmd("log --pretty=format:\"%H\" -1 " + branch_name)
 
     def ls_remote(self, repo_url=None, options=None, refs=None):
         cmd = "ls-remote"
-- 
2.1.4



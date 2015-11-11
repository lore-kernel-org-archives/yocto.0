Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB903E00A81; Wed, 11 Nov 2015 14:34:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FC08E006F3
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 14:33:55 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2015 14:33:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,278,1444719600"; d="scan'208";a="598559595"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Nov 2015 14:33:56 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Nov 2015 16:34:20 -0600
Message-Id: <1447281269-18444-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
References: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] PATCHv2 04/13] buildhistory.py: Don't modify BB_ENV_EXTRAWHITE before init.
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
X-List-Received-Date: Wed, 11 Nov 2015 22:34:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Move code for add BUILDHISTORY_DIR to __init__ method because
it fails when import in early step.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildhistory.py | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/buildhistory.py b/buildhistory.py
index 1732f23..59566c8 100644
--- a/buildhistory.py
+++ b/buildhistory.py
@@ -30,9 +30,6 @@ from errors import *
 from bitbake import *
 from git import Git
 
-os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
-                                    " BUILDHISTORY_DIR"
-
 class BuildHistory(object):
     def __init__(self, bb, pn, workdir):
         self.bb = bb
@@ -46,6 +43,8 @@ class BuildHistory(object):
 
         self.git = Git(self.buildhistory_dir)
 
+        os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
+                                    " BUILDHISTORY_DIR"
         os.environ["BUILDHISTORY_DIR"] = self.buildhistory_dir
 
     def init(self, machines):
-- 
2.1.4



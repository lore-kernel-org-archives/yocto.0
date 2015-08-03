Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1CCEE00A75; Mon,  3 Aug 2015 12:04:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AF88E00A31
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 12:04:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Aug 2015 12:04:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,603,1432623600"; d="scan'208";a="775902931"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2015 12:04:40 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 14:04:35 -0500
Message-Id: <1438628679-8626-8-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
References: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCHv2 07/11][auh] upgradehelper.py: UniverseUpdate don't abort if recipe checkpkg fails.
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
X-List-Received-Date: Mon, 03 Aug 2015 19:04:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When try to detect upstream version of recipes if one fails don't abort
all the execution.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 8d6c6f6..d4a5360 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -285,10 +285,7 @@ class Updater(object):
                     C(" \"distrodata.bbclass\" not inherited. Consider adding "
                       "the following to your local.conf:\n\n"
                       "INHERIT =+ \"distrodata\"\n")
-                else:
-                    C(line)
-
-            exit(1)
+                    exit(1)
 
     def _parse_checkpkg_file(self, file_path):
         import csv
-- 
1.9.1



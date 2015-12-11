Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09B58E00B60; Fri, 11 Dec 2015 13:14:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 848E7E00AD2
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 13:14:08 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Dec 2015 13:14:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,415,1444719600"; d="scan'208";a="839480681"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.48])
	by orsmga001.jf.intel.com with ESMTP; 11 Dec 2015 13:14:07 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Dec 2015 15:15:05 -0600
Message-Id: <1449868505-9291-4-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1449868505-9291-1-git-send-email-anibal.limon@linux.intel.com>
References: <1449868505-9291-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 4/4] utils/bitbake.py: Preserve runs in error log.
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
X-List-Received-Date: Fri, 11 Dec 2015 21:14:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When AUH is trying to do upgrades every time that fails the error
log is overwrite so now append the errors this provides better
complete error info to the Maintainer.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/utils/bitbake.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/modules/utils/bitbake.py b/modules/utils/bitbake.py
index cdbce2b..55e69a4 100644
--- a/modules/utils/bitbake.py
+++ b/modules/utils/bitbake.py
@@ -68,7 +68,7 @@ class Bitbake(object):
             D("%s returned:\n%s" % (cmd, e.__str__()))
 
             if self.log_dir is not None and os.path.exists(self.log_dir):
-                with open(os.path.join(self.log_dir, BITBAKE_ERROR_LOG), "w+") as log:
+                with open(os.path.join(self.log_dir, BITBAKE_ERROR_LOG), "a+") as log:
                     log.write(e.stdout)
 
             raise Error("\'" + cmd + "\' failed", e.stdout, e.stderr)
-- 
2.1.4



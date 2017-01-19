Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5F40E006C6; Thu, 19 Jan 2017 07:46:18 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33EF3E0033D
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 07:46:17 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP; 19 Jan 2017 07:46:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,254,1477983600"; d="scan'208";a="924402824"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.143])
	by orsmga003.jf.intel.com with ESMTP; 19 Jan 2017 07:46:16 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 09:49:09 -0600
Message-Id: <1484840950-6292-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: richard.purdie@intel.com, joshua.g.lock@intel.com
Subject: [[PATCHv2][yocto-autobuilder] 1/2] buildsteps/CreateAutoConf.py: Add support for specify MACHINE by build prop
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
X-List-Received-Date: Thu, 19 Jan 2017 15:46:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Sometimes is a good idea to could specify a machine to build via a build
property/web interface input.

Without this patch if you specify the machine via a build property/web
interface input, the machine is overwrite taking only into account the
default machine set in the buildset.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../site-packages/autobuilder/buildsteps/CreateAutoConf.py          | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index 021f542..7915dd5 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -174,7 +174,11 @@ class CreateAutoConf(ShellCommand):
                     fout = fout + 'baselib = \\042${@d.getVar(\\047BASE_LIB_tune-\\047 + (d.getVar(\\047DEFAULTTUNE\\047, True) or \\047INVALID\\047), True) or \\047lib\\047}\\042 \n'
             if self.distro == "poky-rt":
                 fout = fout + 'PREFERRED_PROVIDER_virtual/kernel="linux-yocto-rt" \n'
-            machine=self.machine
+            machine=self.getProperty('custom_machine')
+            if machine:
+                self.machine = machine
+            else:
+                machine = self.machine
             if layerversion is not None and int(layerversion) > 1:
                 if self.machine == "atom-pc":
                     machine = self.machine.replace("atom-pc", "genericx86")
-- 
2.1.4



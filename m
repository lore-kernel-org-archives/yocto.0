Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94034E00A44; Wed, 10 Jun 2015 09:30:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70041E009BD
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 09:30:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 10 Jun 2015 09:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,588,1427785200"; d="scan'208";a="585476975"
Received: from yctb03.ostc.intel.com (HELO yctb03.otcr.jf.intel.com)
	([10.23.219.52])
	by orsmga003.jf.intel.com with ESMTP; 10 Jun 2015 09:30:14 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Jun 2015 16:28:48 +0000
Message-Id: <1433953732-29963-8-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
In-Reply-To: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 07/11][auh] upgradehelper.py: Move recipe work into upgradehelper work dir.
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
X-List-Received-Date: Wed, 10 Jun 2015 16:30:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[YOCTO #7489]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 266435d..19753a6 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -126,10 +126,14 @@ def parse_config_file(config_file):
 class Updater(object):
     def __init__(self, auto_mode=False, send_email=False, skip_compilation=False):
 
-        self.uh_dir = get_build_dir() + "/upgrade-helper"
+        self.uh_dir = os.path.join(get_build_dir(), "upgrade-helper")
         if not os.path.exists(self.uh_dir):
             os.mkdir(self.uh_dir)
 
+        self.uh_work_dir = os.path.join(self.uh_dir, "work")
+        if not os.path.exists(self.uh_work_dir):
+            os.mkdir(self.uh_work_dir)
+
         self.bb = Bitbake(get_build_dir())
         self.buildhistory = BuildHistory(get_build_dir())
         self.git = None
@@ -192,7 +196,7 @@ class Updater(object):
             return "Succeeded"
 
     def _create_workdir(self):
-        self.workdir = self.uh_dir + "/" + self.pn
+        self.workdir = os.path.join(self.uh_work_dir, self.pn)
 
         if not os.path.exists(self.workdir):
             os.mkdir(self.workdir)
-- 
1.8.4.5



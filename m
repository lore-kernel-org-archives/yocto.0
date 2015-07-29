Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A8FEE009E4; Wed, 29 Jul 2015 13:51:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A47A5E00A64
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 13:50:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 29 Jul 2015 13:50:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,572,1432623600"; d="scan'208";a="757672239"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2015 13:50:57 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 29 Jul 2015 15:50:47 -0500
Message-Id: <1438203053-7909-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
References: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 04/10][auh] bitbake.py: Improve performance on env() call
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
X-List-Received-Date: Wed, 29 Jul 2015 20:51:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When AUH load recipe enviroment use bitbake -e call and parses the
output using regex VAR=VALUE.

For improve performance discard all the comments on cmd output adding
a output_filter using grep.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 bitbake.py | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/bitbake.py b/bitbake.py
index 3631896..54389fb 100644
--- a/bitbake.py
+++ b/bitbake.py
@@ -42,7 +42,7 @@ class Bitbake(object):
         self.log_dir = None
         super(Bitbake, self).__init__()
 
-    def _cmd(self, recipe, options=None, env_var=None):
+    def _cmd(self, recipe, options=None, env_var=None, output_filter=None):
         cmd = ""
         if env_var is not None:
             cmd += env_var + " "
@@ -52,6 +52,9 @@ class Bitbake(object):
 
         cmd += recipe
 
+        if output_filter is not None:
+            cmd += ' |  grep ' + output_filter
+
         os.chdir(self.build_dir)
 
         try:
@@ -74,7 +77,7 @@ class Bitbake(object):
         return os.path.join(self.log_dir, "bitbake_log.txt")
 
     def env(self, recipe):
-        return self._cmd(recipe, "-e")
+        return self._cmd(recipe, "-e", output_filter="-v \"^#\"")
 
     def fetch(self, recipe):
         return self._cmd(recipe, "-c fetch")
-- 
1.9.1



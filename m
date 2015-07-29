Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71C38E00A9A; Wed, 29 Jul 2015 13:51:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A303E00A92
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 13:50:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 29 Jul 2015 13:50:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,572,1432623600"; d="scan'208";a="757672272"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2015 13:50:58 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 29 Jul 2015 15:50:50 -0500
Message-Id: <1438203053-7909-8-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
References: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 07/10][auh] bitbake.py: Rename bitbake_log.txt to bitbake_error_log
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

Bitbake log only is written when error appears, rename it to be
consistent with information into the log.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 bitbake.py | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/bitbake.py b/bitbake.py
index 54389fb..e23dc28 100644
--- a/bitbake.py
+++ b/bitbake.py
@@ -36,6 +36,8 @@ for path in os.environ["PATH"].split(':'):
         sys.path.insert(0, os.path.join(path, "../lib"))
         import bb
 
+BITBAKE_ERROR_LOG = 'bitbake_error_log.txt'
+
 class Bitbake(object):
     def __init__(self, build_dir):
         self.build_dir = build_dir
@@ -63,7 +65,7 @@ class Bitbake(object):
             D("%s returned:\n%s" % (cmd, e.__str__()))
 
             if self.log_dir is not None and os.path.exists(self.log_dir):
-                with open(os.path.join(self.log_dir, "bitbake_log.txt"), "w+") as log:
+                with open(os.path.join(self.log_dir, BITBAKE_ERROR_LOG), "w+") as log:
                     log.write(e.stdout)
 
             raise Error("\'" + cmd + "\' failed", e.stdout, e.stderr)
@@ -74,7 +76,7 @@ class Bitbake(object):
         self.log_dir = dir
 
     def get_stdout_log(self):
-        return os.path.join(self.log_dir, "bitbake_log.txt")
+        return os.path.join(self.log_dir, BITBAKE_ERROR_LOG)
 
     def env(self, recipe):
         return self._cmd(recipe, "-e", output_filter="-v \"^#\"")
-- 
1.9.1



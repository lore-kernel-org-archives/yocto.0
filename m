Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82F7CE00DD3; Tue,  9 Feb 2016 14:43:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD92E00DD0
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:43:20 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2016 14:43:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="743319830"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by orsmga003.jf.intel.com with ESMTP; 09 Feb 2016 14:43:19 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:45:19 -0600
Message-Id: <1455057920-11174-6-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 15/16] toaster/helpers.py: Fix ToasterHelper setup method git checkout.
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
X-List-Received-Date: Tue, 09 Feb 2016 22:43:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When try to checkout from branch to another branch it fails because
this operation isn't permited.

So first create a branch before checkout.

Example:

git checkout jethro -b tmp
fatal: Cannot update paths and switch to branch 'tmp' at the same time.
Did you intend to checkout 'jethro' which can not be resolved as commit?

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 toaster/helpers.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/toaster/helpers.py b/toaster/helpers.py
index dca594f..489a60f 100644
--- a/toaster/helpers.py
+++ b/toaster/helpers.py
@@ -66,8 +66,8 @@ class ToasterHelper(object):
 
         subprocess.check_output([SHELL_CMD, "-c", "git clone %s %s" % \
             (self.repo, self.directory)], stderr=subprocess.STDOUT)
-        self._execute_command("git checkout %s -b %s" % \
-            (self.repo_ref, TOASTER_TEST_BRANCH))
+        self._execute_command("git checkout %s; git branch %s; git checkout %s;" \
+            % (self.repo_ref, TOASTER_TEST_BRANCH, TOASTER_TEST_BRANCH))
 
     def setup(self):
         self._execute_command("virtualenv %s" % VENV_NAME)
-- 
2.1.4



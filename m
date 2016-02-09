Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4F0EE00DF2; Tue,  9 Feb 2016 14:43:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF98E00DC9
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:43:19 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2016 14:43:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="743319818"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by orsmga003.jf.intel.com with ESMTP; 09 Feb 2016 14:43:18 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:45:18 -0600
Message-Id: <1455057920-11174-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 14/16] toaster/toaster.py: Add command line options.
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
X-List-Received-Date: Tue, 09 Feb 2016 22:43:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now toaster script can receive options from command line like
the repository/branch and the work directory to use.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 toaster/toaster.py | 39 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/toaster/toaster.py b/toaster/toaster.py
index 8afd286..4b5b077 100755
--- a/toaster/toaster.py
+++ b/toaster/toaster.py
@@ -18,13 +18,25 @@ sys.path.insert(0, os.path.join(os.path.dirname(
     os.path.abspath(__file__)), '../'))
 from toaster.helpers import ToasterHelper
 
-WORK_DIRECTORY = '/tmp/toaster'
-POKY_URL = 'http://git.yoctoproject.org/git/poky.git'
+DEFAULT_WORK_DIRECTORY = '/tmp/toaster'
+DEFAULT_POKY_URL = 'http://git.yoctoproject.org/git/poky.git'
+DEFAULT_POKY_BRANCH = 'master'
 
-class InitToaster(unittest.TestCase):
+args = None
+help_text = """Usage examples:
+
+* To execute the Toaster test suite over poky master:
+    $ ./toaster/toaster.py
+
+* To execute the Toaster test suite over poky release:
+    $ ./toaster/toaster.py -r jethro
+"""
+
+class ToasterTests(unittest.TestCase):
     @classmethod
     def setUpClass(self):
-        self.toaster_helper = ToasterHelper(WORK_DIRECTORY, POKY_URL)
+        self.toaster_helper = ToasterHelper(args.work_directory,
+            args.url_repository, repo_ref=args.revision)
         self.toaster_helper.clone(rm=True)
         self.toaster_helper.setup()
         self.toaster_helper.start()
@@ -128,4 +140,21 @@ class InitToaster(unittest.TestCase):
         print "Builds complete!"
 
 if __name__ == "__main__":
-    unittest.main()
+    parser = argparse.ArgumentParser(description='Toaster Test suite',
+                                     formatter_class=argparse.RawTextHelpFormatter,
+                                     epilog=help_text)
+    parser.add_argument("-d", "--work-directory", default=DEFAULT_WORK_DIRECTORY,
+                        help="Directory for setup toaster")
+    parser.add_argument("-u", "--url-repository", default=DEFAULT_POKY_URL,
+                        help="GIT repository for setup toaster")
+    parser.add_argument("-r", "--revision", default=DEFAULT_POKY_BRANCH,
+                        help="GIT repository revision (branch, tag, hash) for setup toaster")
+
+    parser.add_argument("-v", "--verbose", type=int, default=1, choices=range(1, 6),
+                        help="Verbose level")
+
+    args = parser.parse_args()
+
+    runner = unittest.TextTestRunner(verbosity=args.verbose)
+    suite = unittest.TestLoader().loadTestsFromTestCase(ToasterTests)
+    runner.run(suite)
-- 
2.1.4



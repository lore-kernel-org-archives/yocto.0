Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ED78E00DAC; Tue,  9 Feb 2016 14:41:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0455E00D9E
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:41:20 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 09 Feb 2016 14:41:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="45244001"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by fmsmga004.fm.intel.com with ESMTP; 09 Feb 2016 14:41:20 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:43:18 -0600
Message-Id: <1455057798-3213-10-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 09/16] toaster/__init__.py: Update toaster test to match new ToasterHelper.
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
X-List-Received-Date: Tue, 09 Feb 2016 22:41:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 tests/toaster/__init__.py | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/tests/toaster/__init__.py b/tests/toaster/__init__.py
index 3762094..d3c5fff 100755
--- a/tests/toaster/__init__.py
+++ b/tests/toaster/__init__.py
@@ -10,7 +10,7 @@ from selenium.webdriver.support.ui import Select
 
 sys.path.insert(0, os.path.join(os.path.dirname(
     os.path.abspath(__file__)), '../'))
-from toaster.helpers import *
+from toaster.helpers import ToasterHelper
 
 WORK_DIRECTORY = '/tmp/toaster'
 POKY_URL = 'http://git.yoctoproject.org/git/poky.git'
@@ -18,17 +18,18 @@ POKY_URL = 'http://git.yoctoproject.org/git/poky.git'
 class InitToaster(unittest.TestCase):
     @classmethod
     def setUpClass(self):
-        toaster_clone(WORK_DIRECTORY, POKY_URL, rm=True)
-        toaster_setup(WORK_DIRECTORY)
-        toaster_start(WORK_DIRECTORY)
+        self.toaster_helper = ToasterHelper(WORK_DIRECTORY, POKY_URL)
+        self.toaster_helper.clone(rm=True)
+        self.toaster_helper.setup()
+        self.toaster_helper.start()
 
         self.driver = webdriver.Firefox()
         self.timeout = 320
 
     @classmethod
     def tearDownClass(self):
+        self.toaster_helper.stop(force=True)
         self.driver.close()
-        toaster_stop(WORK_DIRECTORY)
 
     def is_text_present (self, patterns):
         for pattern in patterns:
-- 
2.1.4



Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A37AE00DED; Tue,  9 Feb 2016 14:43:24 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9083DE00DBA
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:43:17 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2016 14:43:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="743319785"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by orsmga003.jf.intel.com with ESMTP; 09 Feb 2016 14:43:15 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:45:15 -0600
Message-Id: <1455057920-11174-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 11/16] README.md: Update with information about setup, toaster and maintainence.
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
X-List-Received-Date: Tue, 09 Feb 2016 22:43:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 README.md | 34 +++++++++++++++++++++++++++++++---
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/README.md b/README.md
index 4efe1a8..a07e27f 100644
--- a/README.md
+++ b/README.md
@@ -2,18 +2,46 @@
 
 Scripts used by Yocto QA Team for automatize QA process.
 
-= Host requirements =
+== Host requirements ==
 
 All the test components REQUIRE bash as your default shell, you
 need to review if /bin/sh points to bash because some problems are
 detected when use dash.
 
-== Toaster ==
+=== General ===
 
 - virtualenv for python
 - pip for python
+
+=== Toaster ===
+
 - firefox web browser for use selenium
 
-=== Debian install ===
+=== Debian INSTALL ===
 
 # apt-get install iceweasel python-virtualenv python-pip
+
+== Setup ==
+
+For run any of the tests scripts you need to setup virtualenv and install
+requirements with pip.
+
+$ virtualenv venv
+$ source venv/bin/activate
+$ pip install -r requirements.txt
+
+== Toaster ==
+
+For run toaster tests a python script is located at toaster/toaster.py,
+it can take sometime because it setup a toaster instance and run testsuite
+over it.
+
+$ ./toaster/toaster.py
+
+== Maintenance ==
+
+The GIT repository is here [1], if you want to contribute please send patches
+to ML yocto@yoctoproject.org with "[qa-tools]" in the subject also CC the current
+maintainer; Aníbal Limón <anibal.limon@linux.intel.com>.
+
+[1] http://git.yoctoproject.org/cgit/cgit.cgi/qa-tools/
-- 
2.1.4



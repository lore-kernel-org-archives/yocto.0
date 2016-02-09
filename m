Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB076E00DBF; Tue,  9 Feb 2016 14:43:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8452CE00DC6
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:43:21 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2016 14:43:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="743319843"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by orsmga003.jf.intel.com with ESMTP; 09 Feb 2016 14:43:20 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:45:20 -0600
Message-Id: <1455057920-11174-7-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 16/16] README.md: Add recommendation to use vncserver for run Toaster tests.
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

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 README.md | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/README.md b/README.md
index a07e27f..4ffc021 100644
--- a/README.md
+++ b/README.md
@@ -16,11 +16,16 @@ detected when use dash.
 === Toaster ===
 
 - firefox web browser for use selenium
+- vncserver (optional)
 
 === Debian INSTALL ===
 
 # apt-get install iceweasel python-virtualenv python-pip
 
+Optional:
+
+# apt-get install vnc4server
+
 == Setup ==
 
 For run any of the tests scripts you need to setup virtualenv and install
@@ -38,6 +43,14 @@ over it.
 
 $ ./toaster/toaster.py
 
+Optional: Toaster test suite uses selenium and spawn Firefox web browser for
+run the tests, if you are in a development machine may be is a good idea to
+start vncserver and set DISPLAY before run to don't interfer with your tasks,
+example:
+
+$ vncserver :10
+$ export DISPLAY=:10
+
 == Maintenance ==
 
 The GIT repository is here [1], if you want to contribute please send patches
-- 
2.1.4



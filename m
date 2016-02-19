Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFC0FE00CFD; Fri, 19 Feb 2016 08:12:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6E51E00CF8
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 08:12:39 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 19 Feb 2016 08:12:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,471,1449561600"; d="scan'208";a="655723890"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.35])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2016 08:12:38 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Feb 2016 10:14:49 -0600
Message-Id: <1455898489-10556-9-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455898489-10556-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455898489-10556-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Subject: [[PATCH][autobuilder] 8/8] buildsteps/ToasterRunTests.py: Now call run tests with verbose.
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
X-List-Received-Date: Fri, 19 Feb 2016 16:12:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

In order to avoid kill by timeout call the toaster run tests with
verbose option.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py
index 392b600..141768c 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ToasterRunTests.py
@@ -24,7 +24,7 @@ class ToasterRunTests(ShellCommandCleanEnv):
 
         oe_cmd = "source ./oe-init-build-env;"
         venv_cmd = "source venv/bin/activate;"
-        cmd = "DISPLAY=:1 toaster-test --run-all-tests;"
+        cmd = "DISPLAY=:1 toaster-test --run-all-tests --verbose"
 
         self.command = oe_cmd + venv_cmd + cmd
 
-- 
2.1.4



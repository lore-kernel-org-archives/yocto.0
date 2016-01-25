Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DB99E00BEB; Mon, 25 Jan 2016 14:56:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9B8BE00BE9
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 14:56:53 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 25 Jan 2016 14:56:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,346,1449561600"; d="scan'208";a="641322244"
Received: from mrsafer-mobl.amr.corp.intel.com (HELO
	alimonb-mobl1.zpn.intel.com) ([10.254.48.62])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Jan 2016 14:56:52 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: openembedded.core@lists.openembedded.org
Date: Mon, 25 Jan 2016 16:58:38 -0600
Message-Id: <1453762718-13024-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1453762718-13024-1-git-send-email-anibal.limon@linux.intel.com>
References: <1453762718-13024-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, srifenbark@gmail.com
Subject: [PATCH 2/2] Revert "dev-manual: Updated "Running ptset" section"
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
X-List-Received-Date: Mon, 25 Jan 2016 22:56:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Due to now we use the same name for the new recipe ptest-runner instead
of ptest-runner2 for maintain compatibility with old instructions/code.

This reverts commit afc6cbaa80907b20b1e76cdd1620d98e1d51b976.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 767f51c..dbf493a 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -7488,8 +7488,8 @@
                 <title>Running ptest</title>
 
                 <para>
-                    The <filename>ptest-runner2</filename> package installs a
-                    program that loops through all installed ptest test
+                    The <filename>ptest-runner</filename> package installs a
+                    shell script that loops through all installed ptest test
                     suites and runs them in sequence.
                     Consequently, you might want to add this package to
                     your image.
-- 
2.1.4



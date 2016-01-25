Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AC03E00BEA; Mon, 25 Jan 2016 14:56:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA077E00BE3
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 14:56:53 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 25 Jan 2016 14:56:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,346,1449561600"; d="scan'208";a="641322239"
Received: from mrsafer-mobl.amr.corp.intel.com (HELO
	alimonb-mobl1.zpn.intel.com) ([10.254.48.62])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Jan 2016 14:56:52 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: openembedded.core@lists.openembedded.org
Date: Mon, 25 Jan 2016 16:58:37 -0600
Message-Id: <1453762718-13024-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, srifenbark@gmail.com
Subject: [PATCH 1/2] ptest-runner_2.0: Add ptest-runner_2.0 recipe.
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

The ptest-runner 2.0 is C written program for run ptests of
Yocto/Openembedded, is fully compatible with previous version of
ptest-runner that was a shell script that runs ptests sequencially.

The mainly reason for the new ptest-runner in C is because is designed
for run in tiny systems also the old shell script version have problems
when certain ptest hang it becomes blocked indefinitely.

Now the ptest-runner 2.0 support the next features:

	- Specify the directory for search ptests.
	- List available ptests.
	- Specify the timeout for avoid blocking indefinetly.
	- Only run certain ptests.

Proposed features:

	- Adds support for per ptest output file.
	- Adds support for run ptests in parallel (review possible
	  colisions in ptests).

[YOCTO #8021]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../ptest-runner/ptest-runner_2.0.bb               | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 meta/recipes-support/ptest-runner/ptest-runner_2.0.bb

diff --git a/meta/recipes-support/ptest-runner/ptest-runner_2.0.bb b/meta/recipes-support/ptest-runner/ptest-runner_2.0.bb
new file mode 100644
index 0000000..7b89636
--- /dev/null
+++ b/meta/recipes-support/ptest-runner/ptest-runner_2.0.bb
@@ -0,0 +1,24 @@
+SUMMARY = "A C program to run all installed ptests"
+DESCRIPTION = "The ptest-runner2 package installs a ptest-runner \
+program which loops through all installed ptest test suites and \
+runs them in sequence."
+HOMEPAGE = "https://github.com/alimon/ptest-runner2"
+
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=751419260aa954499f7abaabaa882bbe"
+
+SRC_URI = "git://github.com/alimon/ptest-runner2.git;protocol=https;tag=v0.1"
+PV = "2.0+git${SRCPV}"
+S = "${WORKDIR}/git"
+
+FILES_${PN} = "${bindir}/ptest-runner"
+
+RCONFLICTS_${PN} = "ptest-runner"
+
+do_compile () {
+	oe_runmake
+}
+
+do_install () {
+	install -D -m 0755 ${WORKDIR}/git/ptest-runner ${D}${bindir}/ptest-runner
+}
-- 
2.1.4



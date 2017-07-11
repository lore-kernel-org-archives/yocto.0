Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11F41E00BB7; Tue, 11 Jul 2017 14:09:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8316EE00BAA
	for <yocto@yoctoproject.org>; Tue, 11 Jul 2017 14:09:30 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jul 2017 14:09:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,347,1496127600"; d="scan'208";a="125348699"
Received: from liberta1-mobl1.zpn.intel.com ([10.219.128.130])
	by fmsmga005.fm.intel.com with ESMTP; 11 Jul 2017 14:09:28 -0700
From: libertad.cruz@intel.com
To: yocto@yoctoproject.org
Date: Tue, 11 Jul 2017 16:16:51 -0500
Message-Id: <1499807811-16165-1-git-send-email-libertad.cruz@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [qa-tools][PATCH] qa-tools: Modified current supported distributions for OE-Core testing
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
X-List-Received-Date: Tue, 11 Jul 2017 21:09:33 -0000

From: Libertad Cruz <libertad.cruz@intel.com>

Added OpenSuse 42.3, Fedora 26 and Ubuntu 17.04 distributions.
Removed unsupported distribution OpenSuse 13.2, Ubuntu 16.10.

Signed-off-by: Libertad Cruz <libertad.cruz@intel.com>
---
 scripts/full-test-cycle-wrapper.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/full-test-cycle-wrapper.sh b/scripts/full-test-cycle-wrapper.sh
index 6b62d7f..23b8f57 100755
--- a/scripts/full-test-cycle-wrapper.sh
+++ b/scripts/full-test-cycle-wrapper.sh
@@ -197,8 +197,8 @@ create_test_cycle(){
 		       ;;
             "OE-Core")
 	               ENVIRONMENTS=("CentOS 7.1 x86_64" "Debian 8 x86_64" "Fedora 25 x86_64" "Fedora 24 x86_64" \
-			            "OpenSuse 13.2 x86_64" "OpenSuse421 x86_64" "ubuntu 16.04 x86_64" \
-				    "Ubuntu 16.10 x86-64")
+			            "OpenSuse 42.3 x86_64" "OpenSuse421 x86_64" "ubuntu 16.04 x86_64" \
+				    "Ubuntu 17.04 x86-64" "Fedora 26 x86_64" )
 		       EXECUTION_TYPE="AUTO"
 		       create_test_run "${1}"
 		       ;;
-- 
2.1.4



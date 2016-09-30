Return-Path: <monserratx.sedeno.bustos@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 184F4E00DDE; Fri, 30 Sep 2016 13:29:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A1B5E00DCA
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 13:29:40 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga104.fm.intel.com with ESMTP; 30 Sep 2016 13:29:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,274,1473145200"; d="scan'208";a="15043140"
Received: from msedeno.gv.intel.com ([10.219.106.154])
	by fmsmga006.fm.intel.com with ESMTP; 30 Sep 2016 13:29:40 -0700
From: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Sep 2016 15:29:51 -0500
Message-Id: <1475267391-19357-1-git-send-email-monserratx.sedeno.bustos@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: joshua.g.lock@intel.com,
	Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Subject: [[yocto-autobuilder][PATCHv2]] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Fri, 30 Sep 2016 20:29:44 -0000

As part of the process to set new OS distribution as supported on Yoctoc Project
a new patch was created with the list of build sets that should be executed.

Detailed information:
https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_Sets

Fixes [YOCTO #9905]

Note:In order to add a new distro as supported all the build sets should be PASS

Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
---
 buildset-config.autobuilder-qa/nightly-qa-distro.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
index 0fcdbef..6c02a91 100644
--- a/buildset-config.autobuilder-qa/nightly-qa-distro.conf
+++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
@@ -25,7 +25,6 @@ steps: [{'SetDest':{}},
 		           	'nightly-deb': {},
                            	'nightly-ipk': {},
                           	'nightly-world': {}, 
-			   	'buildtools': {},
                            	'nightly-arm': {}, 
                            	'nightly-mips': {},
                            	'nightly-wic':{},
@@ -37,8 +36,9 @@ steps: [{'SetDest':{}},
                            	'nightly-qa-systemd': {},
                            	'nightly-qa-extras': {}, 
                            	'nightly-qa-targetbuilds': {},
-				'nightly-qa-skeleton': {}},
+				'nightly-qa-skeleton': {},
                            	'nightly-qa-logrotate': {}, 
                            	'nightly-qa-pam': {},
+				'buildtools': {}},
                            'schedulerNames_nowait': {}}},]
 
-- 
2.7.4



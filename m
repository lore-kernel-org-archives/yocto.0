Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2191E009CF; Fri, 17 Mar 2017 15:49:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AF89E009B9;
	Fri, 17 Mar 2017 15:49:36 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 17 Mar 2017 15:49:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,178,1486454400"; d="scan'208";a="1143934609"
Received: from unknown (HELO speedy.jf.intel.com) ([10.54.74.100])
	by fmsmga002.fm.intel.com with ESMTP; 17 Mar 2017 15:49:35 -0700
From: Todor Minchev <todor.minchev@linux.intel.com>
To: yocto@yoctoproject.org,
	meta-intel@yoctoproject.org
Date: Fri, 17 Mar 2017 15:49:16 -0700
Message-Id: <20170317224916.34971-1-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.12.0
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH 1/1][meta-intel][rmc] rmc: update SRCREV for rmc recipe
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
X-List-Received-Date: Fri, 17 Mar 2017 22:49:38 -0000

This SRCREV adds fingerprint and database extraction functionality to RMC

Extract database:
rmc -E -d rmc.db -o output/directory/

Extract fingerprint:
rmc -E -f fingerprint_file

https://bugzilla.yoctoproject.org/show_bug.cgi?id=10092

Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
---
 common/recipes-bsp/rmc/rmc.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/recipes-bsp/rmc/rmc.bb b/common/recipes-bsp/rmc/rmc.bb
index f5c648d..b4eb0ef 100644
--- a/common/recipes-bsp/rmc/rmc.bb
+++ b/common/recipes-bsp/rmc/rmc.bb
@@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=838c366f69b72c5df05c96dff79b35f2"

 SRC_URI = "git://git.yoctoproject.org/rmc"

-SRCREV = "4799cb89b543712390d863a6fc50a58881590fa2"
+SRCREV = "d28eaec425f05511f0d9cd82b3623e95980ff2f6"

 S = "${WORKDIR}/git"

--
2.12.0



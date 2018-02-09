Return-Path: <rebecca.swee.fun.chang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40C40E00EB8; Thu,  8 Feb 2018 21:31:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E19CE0082E
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 21:31:56 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Feb 2018 21:31:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,482,1511856000"; d="scan'208";a="16397600"
Received: from andromeda02.png.intel.com ([10.221.183.11])
	by orsmga007.jf.intel.com with ESMTP; 08 Feb 2018 21:31:54 -0800
From: Chang Rebecca Swee Fun <rebecca.swee.fun.chang@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  9 Feb 2018 13:26:35 +0800
Message-Id: <1518153995-54483-1-git-send-email-rebecca.swee.fun.chang@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: alexander.kanavin@intel.com, alex.kanavin@gmail.com
Subject: [auh] [PATCH] RADME: fix typo on one of the settings
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
X-List-Received-Date: Fri, 09 Feb 2018 05:31:58 -0000

Signed-off-by: Chang Rebecca Swee Fun <rebecca.swee.fun.chang@intel.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 84e140f..4a8181f 100644
--- a/README
+++ b/README
@@ -110,7 +110,7 @@ file:
 
 --------------- snip ---------------
 INHERIT =+ "buildhistory"
-BUILDHISTORY_COMMIT" = "1"
+BUILDHISTORY_COMMIT = "1"
 --------------- snip ---------------
 
 If upgrade is succesful buildhistory diff's are generated into
-- 
2.7.4



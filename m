Return-Path: <amarnath.valluri@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D625E00AF4; Tue, 11 Apr 2017 00:07:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 185B3E00A9B
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 00:07:25 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga104.jf.intel.com with ESMTP; 11 Apr 2017 00:07:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,184,1488873600"; d="scan'208";a="247112862"
Received: from avallurigigabyte.fi.intel.com ([10.237.72.170])
	by fmsmga004.fm.intel.com with ESMTP; 11 Apr 2017 00:07:23 -0700
From: Amarnath Valluri <amarnath.valluri@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 11 Apr 2017 10:08:12 +0300
Message-Id: <1491894492-11116-1-git-send-email-amarnath.valluri@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] swtpm: update to latest tip
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
X-List-Received-Date: Tue, 11 Apr 2017 07:07:28 -0000

Pull in changes to support passing client control sockets(--ctrl
type=unixio,clientfd=<fd>), that allows to fork swtpm and communicate using
socketpair.

Signed-off-by: Amarnath Valluri <amarnath.valluri@intel.com>
---
 recipes-tpm/swtpm/swtpm_1.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
index 99c6fdc..14f668b 100644
--- a/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -10,7 +10,7 @@ DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm libtpm-native"
 DEPENDS += "tpm-tools-native expect-native socat-native"
 RDEPENDS_${PN} += "tpm-tools"
 
-SRCREV = "d7bbe3de5cc58c1dca41149df89cfdc08019a722"
+SRCREV = "073e71f99eaa7a0ff9499339176af1af62c090b2"
 SRC_URI = " \
 	git://github.com/stefanberger/swtpm.git \
 	file://fix_signed_issue.patch \
-- 
2.7.4



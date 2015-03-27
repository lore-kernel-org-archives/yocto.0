Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F58DE00922; Fri, 27 Mar 2015 08:03:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37E23E00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 08:03:40 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 27 Mar 2015 08:03:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,479,1422950400"; d="scan'208";a="473549394"
Received: from crodgers-mobl8.ger.corp.intel.com (HELO
	fuath.ger.corp.intel.com) ([10.252.24.247])
	by FMSMGA003.fm.intel.com with ESMTP; 27 Mar 2015 08:03:30 -0700
From: Beth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 27 Mar 2015 15:03:10 +0000
Message-Id: <1427468590-6615-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH][yocto-docs] poky.ent: Ubuntu based systems need xlstproc
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
X-List-Received-Date: Fri, 27 Mar 2015 15:03:46 -0000

xlstproc is needed for doc building. I'm sure others are
effected as well.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 documentation/poky.ent | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/poky.ent b/documentation/poky.ent
index 5d12fc1..a8fe99f 100644
--- a/documentation/poky.ent
+++ b/documentation/poky.ent
@@ -59,7 +59,7 @@
 <!ENTITY OE_INIT_PATH "&YOCTO_POKY;/oe-init-build-env">
 <!ENTITY OE_INIT_FILE "oe-init-build-env">
 <!ENTITY UBUNTU_HOST_PACKAGES_ESSENTIAL "gawk wget git-core diffstat unzip texinfo gcc-multilib \
-     build-essential chrpath socat">
+     build-essential chrpath socat xsltproc">
 <!ENTITY FEDORA_HOST_PACKAGES_ESSENTIAL "gawk make wget tar bzip2 gzip python unzip perl patch \
      diffutils diffstat git cpp gcc gcc-c++ glibc-devel texinfo chrpath \
      ccache perl-Data-Dumper perl-Text-ParseWords perl-Thread-Queue socat">
-- 
1.9.1

-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.



Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9EDAE00873; Thu, 12 Apr 2018 17:12:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEEBDE0084E
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 17:12:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Apr 2018 17:12:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,444,1517904000"; d="scan'208";a="216211370"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.59])
	by orsmga005.jf.intel.com with ESMTP; 12 Apr 2018 17:12:11 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Apr 2018 17:12:09 -0700
Message-Id: <1523578329-2705-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com
Subject: [meta-mingw][PATCH] nativesdk-packagegroup-sdk-host: add qemu
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
X-List-Received-Date: Fri, 13 Apr 2018 00:12:13 -0000

Now that we can build qemu for mingw, include it in SDK.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
index 9629354..ad69b13 100644
--- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
+++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
@@ -1,4 +1,5 @@
 RDEPENDS_${PN}_mingw32 = "\
     nativesdk-pkgconfig \
     nativesdk-libtool \
+    nativesdk-qemu \
     "
-- 
2.7.4



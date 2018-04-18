Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F4E2E00A1E; Wed, 18 Apr 2018 15:40:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD1D5E00831
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 15:40:28 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Apr 2018 15:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,466,1517904000"; d="scan'208";a="48981978"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.59])
	by orsmga001.jf.intel.com with ESMTP; 18 Apr 2018 15:40:17 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Apr 2018 15:40:15 -0700
Message-Id: <1524091215-11696-2-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1524091215-11696-1-git-send-email-juro.bystricky@intel.com>
References: <1524091215-11696-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-mingw][PATCH 1/1] nativesdk-packagegroup-sdk-host: add qemu to SDK
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
X-List-Received-Date: Wed, 18 Apr 2018 22:40:29 -0000

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



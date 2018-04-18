Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EAA9E00A39; Wed, 18 Apr 2018 15:40:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2BC3E00756
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 15:40:28 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Apr 2018 15:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,466,1517904000"; d="scan'208";a="48981977"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.59])
	by orsmga001.jf.intel.com with ESMTP; 18 Apr 2018 15:40:17 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Apr 2018 15:40:14 -0700
Message-Id: <1524091215-11696-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com
Subject: [meta-mingw][PATCH 0/1 Add QEMU to SDK
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

Now that we can build QEMU for mingw, also include it in the SDK.
We have been able to build QEMU for Windows for a while now, but only
via a standalone recipe. QEMU has never been a part of SDK (as we were not
able to build it). The Autobuilder does test SDK build for mingw, but
does not test building of QEMU. Any QEMU build breakage (and there are occasional
ones) went unnoticed for periods of time and then we usually needed to bisect
the commits to find the culprit that broke the build.
So including QEMU in the SDK will have a nice sideffect: building QEMU will be tested
by the Autobuilder as well


Juro Bystricky (1):
  nativesdk-packagegroup-sdk-host: add qemu to SDK

 recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend | 1 +
 1 file changed, 1 insertion(+)

-- 
2.7.4



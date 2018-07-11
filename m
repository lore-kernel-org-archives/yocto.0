Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BECCE00CE7; Wed, 11 Jul 2018 15:42:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 270DDE00720
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 15:42:43 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jul 2018 15:42:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,339,1526367600"; d="scan'208";a="56958460"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.59])
	by orsmga006.jf.intel.com with ESMTP; 11 Jul 2018 15:42:43 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Jul 2018 15:42:40 -0700
Message-Id: <1531348961-38317-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: alejandr@xilinx.com, jurobystricky@hotmail.com
Subject: [meta-mingw][sumo][PATCH 0/1] openssl for Windows
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
X-List-Received-Date: Wed, 11 Jul 2018 22:42:44 -0000

Patch to allow building openssl for Windows.
openssl can also become part of SDK, i.e:

SDKMACHINE="x86_64-mingw32"
MACHINE = "qemux86-64"
TOOLCHAIN_HOST_TASK_append = " nativesdk-openssl "


Juro Bystricky (1):
  openssl: build for mingw

 .../openssl/openssl/mingw-targets.patch               | 13 +++++++++++++
 recipes-connectivity/openssl/openssl_1.0.2o.bbappend  | 19 +++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 recipes-connectivity/openssl/openssl/mingw-targets.patch
 create mode 100644 recipes-connectivity/openssl/openssl_1.0.2o.bbappend

-- 
2.7.4



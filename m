Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B2EAE008D0; Tue, 28 Feb 2017 13:05:52 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2BADE007AD
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 13:05:50 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga105.fm.intel.com with ESMTP; 28 Feb 2017 13:05:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,221,1484035200"; d="scan'208";a="829461644"
Received: from swold-mobl2.amr.corp.intel.com ([10.254.4.127])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Feb 2017 13:05:49 -0800
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org,
	paul.eggleton@linux.intel.com
Date: Tue, 28 Feb 2017 13:05:47 -0800
Message-Id: <1488315948-2807-2-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488315948-2807-1-git-send-email-sgw@linux.intel.com>
References: <1488315948-2807-1-git-send-email-sgw@linux.intel.com>
Subject: [meta-qt4 1/2] qt-demo-init: LICENSE is straight MIT so just use COPYING.MIT
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
X-List-Received-Date: Tue, 28 Feb 2017 21:05:52 -0000

The OE-Core LICENSE is mostly MIT, but should not be used as a checksum
file for a purely MIT licensed package.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 recipes-qt4/qt-demo/qt-demo-init_0.1.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-qt4/qt-demo/qt-demo-init_0.1.bb b/recipes-qt4/qt-demo/qt-demo-init_0.1.bb
index aa1b0b6..12b0cd9 100644
--- a/recipes-qt4/qt-demo/qt-demo-init_0.1.bb
+++ b/recipes-qt4/qt-demo/qt-demo-init_0.1.bb
@@ -3,8 +3,7 @@ LICENSE = "MIT"
 SRC_URI = "file://qtdemo-init"
 PR = "r3"
 
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
-                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 S = "${WORKDIR}"
 
-- 
2.7.4



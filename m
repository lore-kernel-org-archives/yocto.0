Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF345E00D32; Thu, 21 Feb 2019 03:41:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 124D7E00CD6
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:41:03 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x1LBewtS023690
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:40:58 -0800 (PST)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:40:58 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:18 -0500
Message-ID: <1550749039-67320-13-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: [meta-tensorflow][PATCH 12/13] build tensorflow-native and tensorflow in order
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
X-List-Received-Date: Thu, 21 Feb 2019 11:41:17 -0000
Content-Type: text/plain

Add tensorflow-native to tensorflow's DEPENDS, actually tensorflow
does not require tensorflow-native, but to avoid do_compile at
the same time. Bazel build system does not support parallel build
very well (very slowly).

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-framework/tensorflow/tensorflow_1.13.0.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-framework/tensorflow/tensorflow_1.13.0.bb b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
index 24986f5..5d41f5a 100644
--- a/recipes-framework/tensorflow/tensorflow_1.13.0.bb
+++ b/recipes-framework/tensorflow/tensorflow_1.13.0.bb
@@ -23,6 +23,7 @@ DEPENDS += " \
     python3-keras-preprocessing-native \
     python3-pip-native \
     python3-wheel-native \
+    tensorflow-native \
 "
 
 RDEPENDS_${PN} += " \
-- 
2.8.1



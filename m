Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 961DAE0095C; Sun, 12 Aug 2018 22:22:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C774BE0084F
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2018 22:22:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7D5MOOl011294
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2018 22:22:24 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.399.0; Sun, 12 Aug 2018 22:22:23 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 13 Aug 2018 13:22:22 +0800
Message-ID: <1534137742-150133-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH][meta-dpdk] dpdk-dev-libibverbs: fix do_fetch error
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
X-List-Received-Date: Mon, 13 Aug 2018 05:22:26 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

original URI have been deleted(don't know why). I noticed there is
an official libibverbs(https://git.kernel.org/pub/scm/libs/infiniband
/libibverbs.git), but there are big differences with original one.
I don't have condition to test this now, I can only go as far as builds
OK. so I select use tar.gz on yocto to make sure fetch can success and
original function not be affected.

I also noticed a project seems like Mellanox libibverbs,
https://github.com/gpudirect/libibverbs, but it don't have any
official release now.

Hope in the future, we can switch to the offcial libibverbs, or
the new Mellanox libibverbs. but now, we use this yocto tar.gz
as a workaround to make it at least work now.

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .../dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb b/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
index c91a9ef..82979be 100644
--- a/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
+++ b/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/Mellanox/dpdk-dev-libibverbs"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM =  "file://COPYING;md5=7c557f27dd795ba77cc419dddc656b51"
 
-SRC_URI = "https://github.com/Mellanox/dpdk-dev-libibverbs/archive/libibverbs-${PV}.tar.gz \
+SRC_URI = "https://autobuilder.yocto.io/pub/sources/libibverbs-${PV}.tar.gz \
            file://init_c.patch \
            file://0001-Fix-build-with-clang.patch \
            file://0002-typecast-enum-to-int-before-comparison.patch \
-- 
2.7.4



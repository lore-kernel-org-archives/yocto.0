Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E62E4E00C78; Thu, 29 Aug 2019 22:59:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F5AE00B7A
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 22:59:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7U5wsOG001075
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 22:59:04 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Thu, 29 Aug 2019 22:58:44 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 30 Aug 2019 13:58:42 +0800
Message-ID: <1567144722-454944-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-dpdk][PATCH] dpdk: support usrmerge
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
X-List-Received-Date: Fri, 30 Aug 2019 05:59:16 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-extended/dpdk/dpdk.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/dpdk/dpdk.inc b/recipes-extended/dpdk/dpdk.inc
index 9dcec76..08db741 100644
--- a/recipes-extended/dpdk/dpdk.inc
+++ b/recipes-extended/dpdk/dpdk.inc
@@ -40,7 +40,7 @@ do_configure[depends] += "virtual/kernel:do_shared_workdir"
 
 inherit module
 
-export MODULE_DIR="/lib/modules/${KERNEL_VERSION}/kernel/drivers/net"
+export MODULE_DIR="${@bb.utils.contains('DISTRO_FEATURES','usrmerge','/usr','',d)}/lib/modules/${KERNEL_VERSION}/kernel/drivers/net"
 export RTE_SDK = "${S}"
 
 export ICP_ROOT = "${PKG_CONFIG_SYSROOT_DIR}/usr/include"
-- 
2.7.4



Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FB5BE00D9A; Mon, 25 Dec 2017 01:09:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A59AE00D39
	for <yocto@yoctoproject.org>; Mon, 25 Dec 2017 01:09:08 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vBP998cU028109
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 25 Dec 2017 01:09:08 -0800
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Mon, 25 Dec 2017 01:09:07 -0800
From: Chen Qi <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 25 Dec 2017 17:06:57 +0800
Message-ID: <20171225090657.2022-3-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20171225090657.2022-1-Qi.Chen@windriver.com>
References: <20171225090657.2022-1-Qi.Chen@windriver.com>
MIME-Version: 1.0
Subject: [meta-dpdk][PATCH 3/3] dpdk: use virtual/libibverbs
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
X-List-Received-Date: Mon, 25 Dec 2017 09:09:11 -0000
Content-Type: text/plain

We have multiple recipes in different layers providing the same libibverbs
library, so we need to use virtual/libibverbs to avoid potential errors.

Make dpdk depend on virtual/libibverbs instead of hardcoding
dpdk-dev-libibverbs.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 recipes-extended/dpdk/dpdk.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-extended/dpdk/dpdk.inc b/recipes-extended/dpdk/dpdk.inc
index c1d0149..216293c 100644
--- a/recipes-extended/dpdk/dpdk.inc
+++ b/recipes-extended/dpdk/dpdk.inc
@@ -33,8 +33,8 @@ export CONFIG_EXAMPLE_DPDK_QAT = "${@bb.utils.contains('PACKAGECONFIG', 'dpdk_qa
 export CONFIG_EXAMPLE_VM_POWER_MANAGER = "${@bb.utils.contains('PACKAGECONFIG', 'libvirt', 'y', 'n', d)}"
 export CONFIG_VHOST_ENABLED = "${@bb.utils.contains('PACKAGECONFIG', 'vhost', 'y', 'n', d)}"
 
-RDEPENDS_${PN} += "python-subprocess dpdk-dev-libibverbs"
-DEPENDS = "virtual/kernel dpdk-dev-libibverbs"
+RDEPENDS_${PN} += "python-subprocess virtual/libibverbs"
+DEPENDS = "virtual/kernel virtual/libibverbs"
 do_configure[depends] += "virtual/kernel:do_shared_workdir"
 
 inherit module
-- 
2.11.0



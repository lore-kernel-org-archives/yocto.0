Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 730C3E00D39; Mon, 25 Dec 2017 01:09:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61544E00D39
	for <yocto@yoctoproject.org>; Mon, 25 Dec 2017 01:09:06 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vBP996mD002612
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 25 Dec 2017 01:09:06 -0800 (PST)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Mon, 25 Dec 2017 01:09:05 -0800
From: Chen Qi <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 25 Dec 2017 17:06:56 +0800
Message-ID: <20171225090657.2022-2-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20171225090657.2022-1-Qi.Chen@windriver.com>
References: <20171225090657.2022-1-Qi.Chen@windriver.com>
MIME-Version: 1.0
Subject: [meta-dpdk][PATCH 2/3] dpdk-dev-libibverbs: provide virtual/libibverbs
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
X-List-Received-Date: Mon, 25 Dec 2017 09:09:08 -0000
Content-Type: text/plain

dpdk-dev-libibverbs is not the only recipe that provides libibverbs.
In meta-cloud-services, we have a recipe called libibverbs. As both
recipes provide the same library, we need to avoid building both at
the same time at one build.

Use 'virtual/libibverbs' to avoid such problem.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 .../dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb b/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
index 2313f73..070c952 100644
--- a/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
+++ b/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
@@ -24,4 +24,7 @@ S = "${WORKDIR}/libibverbs-${PV}"
 COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
 DEPENDS = "libnl"
 
+PROVIDES = "virtual/libibverbs"
+RPROVIDES_${PN} = "virtual/libibverbs"
+
 inherit pkgconfig autotools
-- 
2.11.0



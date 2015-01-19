Return-Path: <qianl.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E7BEE00717; Mon, 19 Jan 2015 05:01:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DF6BE00596
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 05:01:12 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="56271175"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 19 Jan 2015 20:57:43 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0JD0YIA012303
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 21:00:34 +0800
Received: from Fedora.g08.fujitsu.local (10.167.226.40) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 19 Jan 2015 21:01:16 +0800
From: Qian Lei <qianl.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 19 Jan 2015 21:00:44 +0800
Message-ID: <1421672444-25841-1-git-send-email-qianl.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1421662056-1389-1-git-send-email-qianl.fnst@cn.fujitsu.com>
References: <1421662056-1389-1-git-send-email-qianl.fnst@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.40]
Subject: [meta-cgl][PATCH] cluster: Modify the checksum
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
X-List-Received-Date: Mon, 19 Jan 2015 13:01:17 -0000
Content-Type: text/plain

Signed-off-by: Qian Lei <qianl.fnst@cn.fujitsu.com>
---
 meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
index 392af2c..c1a7d1f 100644
--- a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
@@ -6,7 +6,8 @@ HOMEPAGE = "https://fedorahosted.org/cluster/wiki/HomePage"
 SRC_URI = "https://fedorahosted.org/releases/c/l/cluster/${BP}.tar.xz \
            file://0001-Fix-the-kernel-source-patch.patch"
 
-SRC_URI[md5sum] = "3f496dbecaea367af5a5e81d2e8dcab8"
+SRC_URI[md5sum] = "300d83dbbc525c3da21c2e961271c84b"
+SRC_URI[sha256sum] = "4d340338c2376d369cb223469fa1a3356cce9ab5b2a0a0a33256ade2dbbe02d1"
 
 LICENSE = "GPL-2.0 & LGPL-2.0"
 LIC_FILES_CHKSUM = "file://doc/README.licence;md5=ee8ae43af5ea09f12ca7f7a649764cb0" 
-- 
1.8.3.1



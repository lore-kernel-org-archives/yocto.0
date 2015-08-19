Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29A5DE00ADD; Wed, 19 Aug 2015 01:08:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31053E00AD7
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 01:08:23 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,520,1432569600"; d="scan'208";a="99800939"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 19 Aug 2015 16:11:38 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t7J88IMT024852
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 16:08:18 +0800
Received: from localhost.localdomain (10.167.226.92) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Wed, 19 Aug 2015 16:08:21 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Wed, 19 Aug 2015 16:08:13 +0800
Message-ID: <1439971693-9112-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.92]
Subject: [meta-cgl][PATCH] ocfs2-tools: upgrade 1.4.3 -> 1.4.4
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
X-List-Received-Date: Wed, 19 Aug 2015 08:08:27 -0000
Content-Type: text/plain

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 .../ocfs2-tools/{ocfs2-tools_1.4.3.bb => ocfs2-tools_1.4.4.bb}     | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)
 rename meta-cgl-common/recipes-cgl/ocfs2-tools/{ocfs2-tools_1.4.3.bb => ocfs2-tools_1.4.4.bb} (94%)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.4.bb
similarity index 94%
rename from meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
rename to meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.4.bb
index 1296fd6..84da217 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.4.bb
@@ -20,9 +20,10 @@ SRC_URI = " \
     file://o2cb.service \
     file://ocfs2.service \
 "
-SRC_URI[md5sum] = "296f1242f4d00d188231d726d7a1d148"
-SRC_URI[sha256sum] = "a809f03c62e515a4c23e98c4b4c3f8150377af2cf44cd2a2ee56e175b0e4d0b3"
-S = "${WORKDIR}/ocfs2-tools-ocfs2-tools-1.4.3"
+SRC_URI[md5sum] = "4a17530629bfea5a7517d1db466e32e1"
+SRC_URI[sha256sum] = "a9956f296443360cf66a7bf8298bfd82c51a8e37e569674c0afb9cfa18f68af5"
+
+S = "${WORKDIR}/${PN}-${PN}-${PV}"
 inherit autotools-brokensep pkgconfig
 DEPENDS = "corosync openais cluster-glue pacemaker libxml2 linux-libc-headers e2fsprogs"
 RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0"
-- 
1.8.4.2



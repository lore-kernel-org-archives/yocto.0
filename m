Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA09DE00C32; Mon, 14 Dec 2015 01:06:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D413E0088B
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 01:05:57 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.20,346,1444665600"; 
   d="scan'208";a="1549268"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 14 Dec 2015 17:05:45 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id B47544092576
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 17:05:30 +0800 (CST)
Received: from localhost.localdomain (10.167.226.98) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 14 Dec 2015 17:08:41 +0800
From: Li Xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Dec 2015 12:05:23 +0300
Message-ID: <1450083924-1727-2-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1450083924-1727-1-git-send-email-lixin.fnst@cn.fujitsu.com>
References: <1450083924-1727-1-git-send-email-lixin.fnst@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.98]
X-yoursite-MailScanner-Information: Please contact the ISP for more information
X-yoursite-MailScanner-ID: B47544092576.ACC6D
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: lixin.fnst@cn.fujitsu.com
Subject: [meta-cgl][PATCH 2/3] cluster: Error Fix
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
X-List-Received-Date: Mon, 14 Dec 2015 09:06:01 -0000
Content-Type: text/plain

collect2: error: ld returned 1 exit status
ld: cannot find crtn.o: No such file or directory
ld: cannot find crtendS.o: No such file or directory

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
index d85f2b6..1c6e353 100644
--- a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
@@ -33,6 +33,8 @@ do_configure () {
         --without_bindings \
         --without_group \
         --without_config \
+        --without_common \
+        --without_dlm \
         2>&1
 }
 
-- 
1.8.4.2





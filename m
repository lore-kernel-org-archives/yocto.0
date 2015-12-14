Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF562E00C1E; Mon, 14 Dec 2015 01:05:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C3BBE0096C
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 01:05:57 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.20,346,1444665600"; 
   d="scan'208";a="1549269"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 14 Dec 2015 17:05:45 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id E1181409256C
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 17:05:27 +0800 (CST)
Received: from localhost.localdomain (10.167.226.98) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 14 Dec 2015 17:08:38 +0800
From: Li Xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Dec 2015 12:05:22 +0300
Message-ID: <1450083924-1727-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.98]
X-yoursite-MailScanner-Information: Please contact the ISP for more information
X-yoursite-MailScanner-ID: E1181409256C.AD851
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: lixin.fnst@cn.fujitsu.com
Subject: [meta-cgl][PATCH 1/3] cluster-glue: WARNING Fix
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
X-List-Received-Date: Mon, 14 Dec 2015 09:05:59 -0000
Content-Type: text/plain

WARNING: QA Issue: cluster-glue: Files/directories were installed but not shipped in any package:
  /lib
  /lib/systemd
  /lib/systemd/system
  /lib/systemd/system/logd.service
Please set FILES such that these items are packaged.

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index be04469..9604bca 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -83,6 +83,7 @@ FILES_${PN} = "${sysconfdir} /var ${libdir}/lib*.so.* ${sbindir} ${datadir}/clus
 	${libdir}/heartbeat/ipctransientclient \
 	${libdir}/heartbeat/ha_logd \
 	${libdir}/heartbeat/lrmd \
+	${systemd_unitdir} \
 	"
 
 FILES_${PN}-dbg += "${libdir}/heartbeat/.debug/ \
-- 
1.8.4.2





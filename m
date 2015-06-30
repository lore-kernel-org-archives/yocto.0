Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD2F2E009E6; Tue, 30 Jun 2015 02:13:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A277E009D9
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2015 02:13:12 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.13,665,1427731200"; d="scan'208";a="97904706"
Received: from bogon (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 30 Jun 2015 17:17:10 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t5U9BVNY018647
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2015 17:11:31 +0800
Received: from localhost.localdomain (10.167.226.31) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Tue, 30 Jun 2015 17:13:11 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Tue, 30 Jun 2015 17:03:50 +0800
Message-ID: <1435655030-43462-1-git-send-email-biannm@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.31]
Subject: [meta-cgl][PATCH] pacemaker: changing depencency to resource-agents
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
X-List-Received-Date: Tue, 30 Jun 2015 09:13:15 -0000
Content-Type: text/plain

cluster-resource-agents is renamed to resource-agents,
so changes the depencency to resource-agents

Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
index a5cd284..d8b1490 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM="file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
 DEPENDS = " \
 	bzip2 \
 	cluster-glue \
-	cluster-resource-agents \
+	resource-agents \
 	glib-2.0 \
 	gnutls \
 	libxml2 \
-- 
1.9.1



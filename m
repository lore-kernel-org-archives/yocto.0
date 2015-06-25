Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6460E00A1E; Thu, 25 Jun 2015 00:29:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 Jun 2015 00:29:16 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE5A0E009EF
	for <yocto@yoctoproject.org>; Thu, 25 Jun 2015 00:29:16 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.13,665,1427731200"; d="scan'208";a="97736885"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 25 Jun 2015 15:32:13 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t5P7QVGp013483
	for <yocto@yoctoproject.org>; Thu, 25 Jun 2015 15:26:31 +0800
Received: from localhost.localdomain (10.167.226.31) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Thu, 25 Jun 2015 15:28:09 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 25 Jun 2015 15:19:00 +0800
Message-ID: <1435216740-20173-1-git-send-email-biannm@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.31]
Subject: [meta-security][PATCH] samhain-server: fix build warn
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
X-List-Received-Date: Thu, 25 Jun 2015 07:29:19 -0000
Content-Type: text/plain

WARNING: QA Issue: /etc/init.d/samhain-server_samhain-server contained in package samhain-server requires /bin/bash, but no providers found in its RDEPENDS [file-rdeps]

Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
---
 recipes-security/samhain/samhain-server_3.1.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/samhain/samhain-server_3.1.5.bb b/recipes-security/samhain/samhain-server_3.1.5.bb
index fd6da3d..b8ea248 100644
--- a/recipes-security/samhain/samhain-server_3.1.5.bb
+++ b/recipes-security/samhain/samhain-server_3.1.5.bb
@@ -47,4 +47,4 @@ FILES_${PN}-dbg += " \
     ${sbindir}/.debug/* \
     "
 
-DEPENDS_${PN} += "gmp bash"
+RDEPENDS_${PN} += "gmp bash"
-- 
1.8.4.2



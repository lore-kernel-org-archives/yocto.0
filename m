Return-Path: <zhengrq.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9CE2E00724; Fri, 30 Dec 2016 00:03:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Fri, 30 Dec 2016 00:03:16 PST
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 761CFE0071C
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 00:03:16 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="14373217"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 30 Dec 2016 16:02:05 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id F30F4477AE88
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 16:02:05 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.167.226.109) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.319.2; Fri, 30 Dec 2016 16:02:05 +0800
From: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Fri, 30 Dec 2016 16:01:05 +0800
Message-ID: <1483084865-96043-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.109]
X-yoursite-MailScanner-ID: F30F4477AE88.A8089
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zhengrq.fnst@cn.fujitsu.com
Subject: [meta-cgl] [PATCH] libwww-perl 5.834 -> 6.05
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
X-List-Received-Date: Fri, 30 Dec 2016 08:03:20 -0000
Content-Type: text/plain

Upgrade libwww-perl from 5.834 to 6.05

Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
---
 .../recipes-perl/perl/{libwww-perl_5.834.bb => libwww-perl_6.05.bb}   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-cgl-common/recipes-perl/perl/{libwww-perl_5.834.bb => libwww-perl_6.05.bb} (78%)

diff --git a/meta-cgl-common/recipes-perl/perl/libwww-perl_5.834.bb b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
similarity index 78%
rename from meta-cgl-common/recipes-perl/perl/libwww-perl_5.834.bb
rename to meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
index 0aa17f0..b365948 100644
--- a/meta-cgl-common/recipes-perl/perl/libwww-perl_5.834.bb
+++ b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
@@ -15,8 +15,8 @@ BBCLASSEXTEND = "native"
 PR = "r1"
 
 SRC_URI = "http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/libwww-perl-${PV}.tar.gz;name=libwww-perl-${PV}"
-SRC_URI[libwww-perl-5.834.md5sum] = "f2ed8a461f76556c9caed9087f47c86c"
-SRC_URI[libwww-perl-5.834.sha256sum] = "1a50eb91d1deeca3be10982e129e786809ad6f0f8049b156e91e889e5a7288ff"
+SRC_URI[libwww-perl-6.05.md5sum] = "637d5f1eb61336ca2caa6e026b382f87"
+SRC_URI[libwww-perl-6.05.sha256sum] = "7b25799ff7eec18e8e4e97dc0cad7b2a5b433b50b13feb59d9179173bee78f23"
 
 S = "${WORKDIR}/libwww-perl-${PV}"
 
-- 
2.7.4





Return-Path: <daicy.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E051E00D45; Sun, 21 Aug 2016 22:46:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Sun, 21 Aug 2016 22:46:01 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07D0EE00D04
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2016 22:46:00 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="10138594"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 22 Aug 2016 13:44:56 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id 96154430CD02
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 13:44:49 +0800 (CST)
Received: from localhost.localdomain (10.167.226.25) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.279.2; Mon, 22 Aug 2016 13:44:52 +0800
From: Dai Caiyun <daicy.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 22 Aug 2016 13:43:29 +0800
Message-ID: <1471844609-24851-1-git-send-email-daicy.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.25]
X-yoursite-MailScanner-ID: 96154430CD02.AC8D3
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: daicy.fnst@cn.fujitsu.com
Cc: Dai Caiyun <daicy.fnst@cn.fujitsu.com>
Subject: [meta-cgl][PATCH] libmailtools-perl: 2.13 -> 2.18
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
X-List-Received-Date: Mon, 22 Aug 2016 05:46:04 -0000
Content-Type: text/plain

Upgrade libmailtools-perl from 2.13 to 2.18.

Signed-off-by: Dai Caiyun <daicy.fnst@cn.fujitsu.com>
---
 .../perl/{libmailtools-perl_2.13.bb => libmailtools-perl_2.18.bb}     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-cgl-common/recipes-perl/perl/{libmailtools-perl_2.13.bb => libmailtools-perl_2.18.bb} (81%)

diff --git a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.13.bb b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
similarity index 81%
rename from meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.13.bb
rename to meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
index 29e5bed..7afcb05 100644
--- a/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.13.bb
+++ b/meta-cgl-common/recipes-perl/perl/libmailtools-perl_2.18.bb
@@ -17,8 +17,8 @@ BBCLASSEXTEND = "native"
 PR = "r1"
 
 SRC_URI = "http://search.cpan.org/CPAN/authors/id/M/MA/MARKOV/MailTools-${PV}.tar.gz"
-SRC_URI[md5sum] = "5d6fbdc56c6e1208e684012437b67e30"
-SRC_URI[sha256sum] = "7216404681bebce4e09651e1619c3e1eebe2a7e3856f1233af0dd9660ba052b6"
+SRC_URI[md5sum] = "972468ab5207b90398d77bed4ffc361d"
+SRC_URI[sha256sum] = "dfee9e770257371112f20d978e637759e81bc4f19e97b083585c71ecab37b527"
 
 S = "${WORKDIR}/MailTools-${PV}"
 
-- 
2.7.4





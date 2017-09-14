Return-Path: <huangqy.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50FC2E00CCC; Thu, 14 Sep 2017 02:09:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33989E00CB4
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 02:09:36 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.42,391,1500912000"; d="scan'208";a="26274540"
Received: from localhost (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 14 Sep 2017 17:09:34 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (unknown [10.167.33.80])
	by cn.fujitsu.com (Postfix) with ESMTP id B9A8346BA6A8
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 17:09:35 +0800 (CST)
Received: from localhost.localdomain (10.167.235.93) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.361.1; Thu, 14 Sep 2017 17:09:34 +0800
From: Huang Qiyu <huangqy.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 14 Sep 2017 17:09:37 +0800
Message-ID: <1505380183-34161-1-git-send-email-huangqy.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.167.235.93]
X-yoursite-MailScanner-ID: B9A8346BA6A8.A8304
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: huangqy.fnst@cn.fujitsu.com
Subject: [PATCH] libwww-perl: Add HOMEPAGE info into recipe file.
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
X-List-Received-Date: Thu, 14 Sep 2017 09:09:38 -0000
Content-Type: text/plain

Signed-off-by: Huang Qiyu <huangqy.fnst@cn.fujitsu.com>
---
 meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
index b365948..4d17b3a 100644
--- a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
+++ b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.05.bb
@@ -1,4 +1,5 @@
 DESCRIPTION = "libwww-perl provides a simple and consistent API to the World Wide Web"
+HOMEPAGE = "http://search.cpan.org/dist/libwww-perl/"
 SECTION = "libs"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"
-- 
2.7.4





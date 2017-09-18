Return-Path: <huangqy.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B9BEE00D27; Sun, 17 Sep 2017 22:58:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2567BE00CEE
	for <yocto@yoctoproject.org>; Sun, 17 Sep 2017 22:58:47 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.42,411,1500912000"; d="scan'208";a="26730276"
Received: from localhost (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 18 Sep 2017 13:58:46 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (unknown [10.167.33.80])
	by cn.fujitsu.com (Postfix) with ESMTP id 38AB346BA6A3
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 13:58:41 +0800 (CST)
Received: from localhost.localdomain (10.167.235.93) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.361.1; Mon, 18 Sep 2017 13:58:43 +0800
From: Huang Qiyu <huangqy.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 18 Sep 2017 13:58:39 +0800
Message-ID: <1505714319-40903-6-git-send-email-huangqy.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1505714319-40903-1-git-send-email-huangqy.fnst@cn.fujitsu.com>
References: <1505714319-40903-1-git-send-email-huangqy.fnst@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.235.93]
X-yoursite-MailScanner-ID: 38AB346BA6A3.A527A
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: huangqy.fnst@cn.fujitsu.com
Subject: [meta-cgl][PATCH] libwww-perl: Add HOMEPAGE info into recipe file.
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
X-List-Received-Date: Mon, 18 Sep 2017 05:58:53 -0000
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





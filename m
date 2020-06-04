Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6614.1591241239225231814
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jun 2020 20:27:19 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 140.211.169.56, mailfrom: zhengrq.fnst@cn.fujitsu.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8125E01C6F; Wed,  3 Jun 2020 20:27:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DATE_IN_FUTURE_06_12,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
	*  1.9 DATE_IN_FUTURE_06_12 Date: is 6 to 12 hours after Received: date
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www; Wed, 03 Jun 2020 20:27:17 PDT
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAD0EE01C5E
	for <yocto@yoctoproject.org>; Wed,  3 Jun 2020 20:27:17 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.73,470,1583164800"; 
   d="scan'208";a="93803248"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 04 Jun 2020 11:26:11 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
	by cn.fujitsu.com (Postfix) with ESMTP id 65C6A50A9984
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2020 11:26:07 +0800 (CST)
Received: from localhost.localdomain (10.167.225.227) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 4 Jun 2020 11:26:08 +0800
From: "zhengruoqin" <zhengrq.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
CC: Zheng Ruoqing <zhengrq.fnst@cn.fujitsu.com>
Subject: [PATCH] [meta-swupdate] Fix build error of dependence.
Date: Thu, 4 Jun 2020 20:26:05 +0800
Message-ID: <1591273565-20422-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.167.225.227]
X-ClientProxiedBy: G08CNEXCHPEKD04.g08.fujitsu.local (10.167.33.200) To
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206)
X-yoursite-MailScanner-ID: 65C6A50A9984.A6932
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zhengrq.fnst@cn.fujitsu.com
Content-Type: text/plain

 -c -o mongoose/mongoose.o mongoose/mongoose.c
| mongoose/mongoose.c:4496:10: fatal error: openssl/ssl.h: No such file
or directory

Signed-off-by: Zheng Ruoqing <zhengrq.fnst@cn.fujitsu.com>
---
 recipes-support/swupdate/swupdate.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-support/swupdate/swupdate.inc b/recipes-support/swupdate/swupdate.inc
index 9ea0a8a..3d9a3fa 100644
--- a/recipes-support/swupdate/swupdate.inc
+++ b/recipes-support/swupdate/swupdate.inc
@@ -123,6 +123,9 @@ python () {
     elif 'CONFIG_SSL_IMPL_MBEDTLS=y\n' in features:
         depends += ' mbedtls'
 
+    if 'CONFIG_MONGOOSESSL=y\n' in features:
+        depends += ' openssl'
+
     if 'CONFIG_JSON=y\n' in features:
         depends += ' json-c'
 
-- 
2.17.1




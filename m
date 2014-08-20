Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E844E00807; Tue, 19 Aug 2014 20:30:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29C47E007FE
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 20:30:02 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id lj1so11271841pab.5
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 20:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Y4ennNkApPnkuX2DOcwerqnXSsXwDVIBcwH2zMf+p/s=;
	b=MlB85JW25TIH6cipIEdq4yKEctu15yOmiGEz49lJsDbIAvO6QV8UUhQscjXaZqlDq0
	668+ZGc6OgoFpk06Qqpw2WPZT5MORFM8kekqnGjII4GydLDEezvZMBoO5+GBKZPKCvtk
	Whfp/kjuModdKKLUB8NK380izmCVSUThNpnv3BvrSjEeyWlxY34k375NMKzP0FNmfGy3
	bOiogh1m25V6GluroAgH3QpltJMNK5EoNhDYvKztYceaDNVNHsUXCsPQDYi+ZNJ1Npy1
	QlhSn5ghcnygFX/QrfdOgPi1STkqhzGWCvLKC+ZCUffRG7hRfq6Q4oNwcTu6K12smHZN
	lWTQ==
X-Received: by 10.66.240.197 with SMTP id wc5mr47545982pac.87.1408505402310;
	Tue, 19 Aug 2014 20:30:02 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	qk9sm75455323pac.16.2014.08.19.20.29.59 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 19 Aug 2014 20:30:00 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Aug 2014 20:29:57 -0700
Message-Id: <1408505397-1754-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] nmap: build QA Warnings
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
X-List-Received-Date: Wed, 20 Aug 2014 03:30:15 -0000

WARNING: QA Issue: nmap rdepends on libcrypto, but it isn't a build dependency? [build-deps]
WARNING: QA Issue: nmap rdepends on libssl, but it isn't a build dependency? [build-deps]

This fixes the above QA warnings.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/nmap_6.46.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/nmap/nmap_6.46.bb b/recipes-security/nmap/nmap_6.46.bb
index 42db71f..52acf96 100644
--- a/recipes-security/nmap/nmap_6.46.bb
+++ b/recipes-security/nmap/nmap_6.46.bb
@@ -14,7 +14,7 @@ inherit autotools-brokensep
 
 DEPENDS = "libpcap"
 
-EXTRA_OECONF = "--without-liblua --without-zenmap --without-subversion --with-pcap=linux"
+EXTRA_OECONF = "--without-liblua --without-zenmap --without-subversion --with-pcap=linux --without-openssl"
 
 do_configure() {
     autoconf
-- 
1.9.1



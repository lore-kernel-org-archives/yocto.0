Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9177EE00B3E; Fri, 14 Apr 2017 13:13:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FB90E009B2
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:21 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id x75so211791wma.1
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=KtaqOTnuKYILWgGhCRdrosqvLZDeR5Ew2rJZOIz3hNw=;
	b=nDGwLrkol7KW2BWwttrdixN3IFfFd46xTamoo26jiL66ZJIsKanG736DZJarFUYBRP
	Cr7X6+9arvSn8nMtV5hXPveBpae32pNFwRpZn29CLjZAXKKQRAZTCWK3//CD7udwbYt+
	nO+fGUHbt9r+VlEkrk0DVz2y6JRCWnA66gsbqTk8v4nXZAGIemOm7CtUx8mHTV4oR8ZT
	JBe/+lrIQfcyrjvsi+EFquoZjfTwd3sT0LIEutFnrdtIw3js9vD5RLGXs7P3t2jSmK31
	gM+mmRqB8ZRIQZZ7rjHvQFbkvBhy8VzC3GR676RvbnPq4n+IYBgHsIIexCdWhIZMOQd+
	vtCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=KtaqOTnuKYILWgGhCRdrosqvLZDeR5Ew2rJZOIz3hNw=;
	b=bEBgS5By0OVZvm44TgN0A+Iwm1B5GjopBmFvzAi+xm+zl6B9y58QIl5lQTheGqYI74
	DDOsvhPPZscRPYui2TBO7dOpxjPkvVRyTtBTQSTK6ltj/FNl2XB2tTPFuiRgLjqvB3FH
	PGP9ja0FpGNCfslJ49umm3TFHxzObKclnF5+feL8kB7D7/udLoDF/GIgmaa8pD++BY1q
	9Us0ujtPR/0MxKi7pMyv64eJQEgeXXFYonmN51dbu9YVYWwwz1DttaC1a2Nhz9chEnTT
	gkR1aNofGAEuKOVfV+Dhh3+9+fCVjUch+OPZi3rpuy6iGhm4HdUwp5V0Jz3TCSLpEA6R
	c7Cw==
X-Gm-Message-State: AN3rC/4vmEj+zYPOSRJN/j5iAcNQ37Ne2lLhrrP3/RDF6/lIvbRgjCVv
	rokwPFqYWivZmQ==
X-Received: by 10.28.66.211 with SMTP id k80mr216194wmi.5.1492200800519;
	Fri, 14 Apr 2017 13:13:20 -0700 (PDT)
Received: from localhost.localdomain
	(host86-170-80-134.range86-170.btcentralplus.com. [86.170.80.134])
	by smtp.gmail.com with ESMTPSA id
	i144sm3983021wmf.13.2017.04.14.13.13.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 13:13:19 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 21:13:08 +0100
Message-Id: <20170414201313.3138-2-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.1
In-Reply-To: <20170414201313.3138-1-andrei@gherzan.ro>
References: <20170414201313.3138-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/7] bcm2835: Update to v1.52
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
X-List-Received-Date: Fri, 14 Apr 2017 20:13:25 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/bcm2835/{bcm2835_1.50.bb => bcm2835_1.52.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-devtools/bcm2835/{bcm2835_1.50.bb => bcm2835_1.52.bb} (88%)

diff --git a/recipes-devtools/bcm2835/bcm2835_1.50.bb b/recipes-devtools/bcm2835/bcm2835_1.52.bb
similarity index 88%
rename from recipes-devtools/bcm2835/bcm2835_1.50.bb
rename to recipes-devtools/bcm2835/bcm2835_1.52.bb
index 9cf6f48..c0334fe 100644
--- a/recipes-devtools/bcm2835/bcm2835_1.50.bb
+++ b/recipes-devtools/bcm2835/bcm2835_1.52.bb
@@ -12,8 +12,8 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRC_URI = "http://www.airspayce.com/mikem/bcm2835/bcm2835-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "258caf3437012d09a651e1852d0bd60c"
-SRC_URI[sha256sum] = "52180b8a61b6546c1df4aed259d0a4d2fa56e50605e0d4d967a76bf2b23dafb8"
+SRC_URI[md5sum] = "b5dc426b4ff258bb1397442f98e40236"
+SRC_URI[sha256sum] = "b9fd10f7a80aadaed28a77168709b7c519568a63b6e98d0a50e9c5fe31bea6bb"
 
 inherit autotools
 
-- 
2.12.1



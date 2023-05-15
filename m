Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58CCC77B7D
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 06:19:50 +0000 (UTC)
Received: from mail1.bemta32.messagelabs.com (mail1.bemta32.messagelabs.com [195.245.230.66])
 by mx.groups.io with SMTP id smtpd.web11.79984.1684119071279523918
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 May 2023 19:51:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=170520fj header.b=b9M2jAYK;
 spf=pass (domain: fujitsu.com, ip: 195.245.230.66, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
	s=170520fj; t=1684119069; i=@fujitsu.com;
	bh=zjyobSYucCxCGKw0ehUGjDv5XpwEYSZo7vBNn7xu6Cg=;
	h=From:To:Cc:Subject:Date:Message-Id;
	b=b9M2jAYKCW7s2Vq+YcOMG78+IBXnIBa8DV7XHcr0zfe63Pr5AI+lIpQHVw/UzPNDy
	 uMYnNVSBY+tVbpsC9R1TIIKOjPiqxJ3qV0Iw7QkIgnt/AIyXa+hnyH5nQ0uzQHJq6N
	 P44j3/eIdaxrJs7c+YAIQ5ynyYj29obncOK9lYqft+6wkl+0UH7OK+kqb47OnW8l9L
	 3sQx5J/Cvh9Q4mtOSvOXT8tY+WpvKWkuXxhh7YxZsqkaYq+swwxsXhvTDNcV839f46
	 jRE2kDy4d4P+5xJWzgovrT5wfocGsKAJpelGmfrSq5Hw+IcZm2swS3j9R3tJ2ysnic
	 Z2LCHKEdoWyZQ==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBLMWRWlGSWpSXmKPExsViZ8ORpCszLzH
  F4Mg3TouNHe8YHRg9Zp56xBzAGMWamZeUX5HAmnHp0lr2gr0cFR339jA3MB5h72Lk4hAS2Mgo
  8ax/ImMXIyeQM5VJoumZNIjNJiAhMX3vSXYQW0RAQeL5/6NMIDazgIrEjMlHwGxhAQ+JL29eM
  YPYLAKqEo/WHmEBsXkFnCTerT/OCmJLAPVOefieGcJWk7h6bhPzBEauBYwMqxhNi1OLylKLdE
  30kooy0zNKchMzc/QSq3QT9VJLdctTi0t0DfUSy4v1UouL9Yorc5NzUvTyUks2MQI9nFLMELm
  D8f7Ov3qHGCU5mJREea+VxKUI8SXlp1RmJBZnxBeV5qQWH2KU4eBQkuBtnJGYIiRYlJqeWpGW
  mQMMNpi0BAePkgjv0YlAad7igsTc4sx0iNQpRkUpcd7Vc4ASAiCJjNI8uDZYgF9ilJUS5mVkY
  GAQ4ilILcrNLEGVf8UozsGoJMybCDKFJzOvBG76K6DFTECLb+2JB1lckoiQkmpgyilgu/zHMq
  xfrfTqK90gezuZyX0LvGPvC+7bvFQ34uY+B90fjdPqVCuYbh8q0j1//i7Lb4Nviass7y+RP9Z
  sm3fFt+G80cqDC6zdmn4Yqf1RvjdrU9iD/qXXti/s91pwaM9OE+H1O6Ra+Bt/yvfVcd1KuCfk
  MP38seti+0/2mf2xffzYL+7ugYnS91IfOE1vvutq1nNkrcLMT/mPGBh8lOp+tG3dOUX20CyXD
  c4buku2KCUH8OYfeXj7w/lmpxWmz3bu25aRJaAcvq1nj53Dtjxh7g6XpRxeVj4iGv1r826r+L
  cWxyetE1h1oJRXWHLP7RaOj9u4t+ddYYg4zsxurbv4m9H+pMxpOo9NpPr5lFiKMxINtZiLihM
  Bq6nJLesCAAA=
X-Env-Sender: wangmy@fujitsu.com
X-Msg-Ref: server-6.tower-591.messagelabs.com!1684119067!296392!1
X-Originating-IP: [62.60.8.98]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.105.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 29070 invoked from network); 15 May 2023 02:51:08 -0000
Received: from unknown (HELO n03ukasimr03.n03.fujitsu.local) (62.60.8.98)
  by server-6.tower-591.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 15 May 2023 02:51:08 -0000
Received: from n03ukasimr03.n03.fujitsu.local (localhost [127.0.0.1])
	by n03ukasimr03.n03.fujitsu.local (Postfix) with ESMTP id C95561AE;
	Mon, 15 May 2023 03:51:07 +0100 (BST)
Received: from localhost.localdomain (unknown [10.167.225.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by n03ukasimr03.n03.fujitsu.local (Postfix) with ESMTPS id E76977B;
	Mon, 15 May 2023 03:51:06 +0100 (BST)
From: "wangmy" <wangmy@fujitsu.com>
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [meta-java] [PATCH] rhino: Update SRC_URI to point to valid URL
Date: Mon, 15 May 2023 10:50:54 +0800
Message-Id: <1684119054-17238-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-Virus-Scanned: ClamAV using ClamSMTP
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 06:19:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60016

From: Wang Mingyu <wangmy@fujitsu.com>

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 recipes-core/rhino/rhino_1.7r4.bb | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/recipes-core/rhino/rhino_1.7r4.bb b/recipes-core/rhino/rhino_1.7r4.bb
index 54329c1..53806fe 100644
--- a/recipes-core/rhino/rhino_1.7r4.bb
+++ b/recipes-core/rhino/rhino_1.7r4.bb
@@ -11,12 +11,13 @@ PACKAGE_ARCH = "${TUNE_PKGARCH}"
 inherit java-library
 
 SRC_URI = "\
-	https://github.com/downloads/mozilla/rhino/rhino1_7R4.zip \
+	git://github.com/mozilla/rhino.git;branch=master;protocol=https \
 	file://rhino \
 	file://rhino-jsc \
 	"
+SRCREV = "82ffb8f3e09e77e3b1f5782c35b621e7ca742b58"
 
-S = "${WORKDIR}/rhino1_7R4"
+S = "${WORKDIR}/git"
 
 PACKAGES = "${JPN} rhino"
 
@@ -45,6 +46,3 @@ do_install:append() {
 	install -m 0755 ${WORKDIR}/rhino ${D}${bindir}
 	install -m 0755 ${WORKDIR}/rhino-jsc ${D}${bindir}
 }
-
-SRC_URI[md5sum] = "ad67a3dff135e3a70f0c3528a2d6edf2"
-SRC_URI[sha256sum] = "9eb08f85bbe7c8e0b9eaffb1cf4984b31fb679f3c8a682acc3bb8ac20626c61e"
-- 
2.34.1



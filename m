Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.3265.1582251537586269053
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 18:18:57 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: qi.chen@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28AE8E016B9; Thu, 20 Feb 2020 18:18:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2393BE00C29
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 18:18:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 01L2IATq018652
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 20 Feb 2020 18:18:10 -0800 (PST)
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.468.0; Thu, 20 Feb 2020 18:18:09 -0800
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>, <jiahongxujia@163.com>
Subject: [meta-tensorflow][PATCH 2/2] layer.conf: depend on meta-python2
Date: Fri, 21 Feb 2020 10:18:06 +0800
Message-ID: <20200221021806.33303-2-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200221021806.33303-1-Qi.Chen@windriver.com>
References: <20200221021806.33303-1-Qi.Chen@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain

bazel-native needs python2-native, so depend on meta-python2.
Also update the README file.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 README.md       | 4 ++++
 conf/layer.conf | 1 +
 2 files changed, 5 insertions(+)

diff --git a/README.md b/README.md
index dbd349e..a04946a 100644
--- a/README.md
+++ b/README.md
@@ -33,6 +33,10 @@ URI: git://github.com/openembedded/meta-openembedded.git
 layers: meta-python, meta-oe
 branch: master
 revision: HEAD
+
+URI: git://git.openembedded.org/meta-python2
+branch: master
+revision: HEAD
 ```
 ### 2. Based on Wind River Linux
 Wind River Linux (CI/CD branch)
diff --git a/conf/layer.conf b/conf/layer.conf
index a1ad84d..0da7b2e 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -17,6 +17,7 @@ LAYERDEPENDS_meta-tensorflow = " \
     core \
     meta-python \
     openembedded-layer \
+    meta-python2 \
 "
 
 LAYER_PATH_meta-tensorflow = "${LAYERDIR}"
-- 
2.17.1


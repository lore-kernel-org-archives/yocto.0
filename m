Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32058E00D7E; Thu, 27 Jun 2019 01:49:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57832E00C74
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 01:49:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x5R8neJX009457
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 01:49:40 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Thu, 27 Jun 2019 01:49:40 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 27 Jun 2019 16:49:37 +0800
Message-ID: <1561625378-149930-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH 1/2] meta-cloud-services: add layer depends on networking-layer
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
X-List-Received-Date: Thu, 27 Jun 2019 08:49:43 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

Since spice of meta-cloud-services depends on
cyrus-sasl which comes from networking-layer,
add missing layer depends back.

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 203f9db..2cfb75f 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,4 +8,4 @@ BBFILE_COLLECTIONS += "cloud-services-layer"
 BBFILE_PATTERN_cloud-services-layer := "^${LAYERDIR}/"
 BBFILE_PRIORITY_cloud-services-layer = "5"
 LAYERSERIES_COMPAT_cloud-services-layer = "thud warrior"
-LAYERDEPENDS_cloud-services-layer = "core filesystems-layer"
+LAYERDEPENDS_cloud-services-layer = "core filesystems-layer networking-layer"
-- 
2.7.4



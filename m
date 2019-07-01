Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56B0BE00D42; Sun, 30 Jun 2019 19:08:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32110E00BAD
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2019 19:08:32 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x6128VKu026520
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 30 Jun 2019 19:08:31 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Sun, 30 Jun 2019 19:08:23 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>, <bruce.ashfield@gmail.com>
Date: Mon, 1 Jul 2019 10:08:21 +0800
Message-ID: <1561946902-247680-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cloud-services][PATCH 1/2] meta-cloud-services: add layer depends on networking-layer
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
X-List-Received-Date: Mon, 01 Jul 2019 02:08:33 -0000
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



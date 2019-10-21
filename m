Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E535E00BA2; Sun, 20 Oct 2019 19:02:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 299BDE00998
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2019 19:02:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x9L22ddl004607
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 20 Oct 2019 19:02:39 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 20 Oct 2019 19:02:38 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <yocto@yoctoproject.org>
Date: Mon, 21 Oct 2019 10:02:37 +0800
Message-ID: <1571623357-6817-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571622538-6611-1-git-send-email-hongxu.jia@windriver.com>
References: <1571622538-6611-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102][PATCH V2] conf/layer.conf: Add zeus to LAYERSERIES_COMPAT
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
X-List-Received-Date: Mon, 21 Oct 2019 02:02:42 -0000
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 conf/layer.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index f1df15d..6e62f62 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,8 +10,9 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two = "5"
 
 LAYERVERSION_meta-openssl-one-zero-two = "1"
 
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two = "thud warrior"
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two = "thud warrior zeus"
 
 LAYERDEPENDS_meta-openssl-one-zero-two = " \
         core \
 "
+
-- 
2.7.4



Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C231BE00CD2; Wed, 23 Nov 2016 09:34:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA14E00C6A
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 09:34:19 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id uANHYIOt013058
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 09:34:18 -0800 (PST)
Received: from msp-dhcp15.wrs.com (172.25.34.15) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 23 Nov 2016 09:34:18 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 23 Nov 2016 11:34:13 -0600
Message-ID: <20161123173413.210554-3-mark.hatle@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20161123173413.210554-1-mark.hatle@windriver.com>
References: <20161123173413.210554-1-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][patch 2/2] layer.conf: Add recommended download layer
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
X-List-Received-Date: Wed, 23 Nov 2016 17:34:42 -0000
Content-Type: text/plain

This is a Wind River Specific patch and not generally applicable.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 273e42f..55298d7 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,3 +9,5 @@ BBFILE_PATTERN_meta-mingw := "^${LAYERDIR}/"
 BBFILE_PRIORITY_meta-mingw = "8"
 
 LAYERDEPENDS_meta-mingw = "core"
+
+LAYERRECOMMENDS_meta-mingw = "meta-mingw-dl"
-- 
2.9.3



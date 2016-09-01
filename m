Return-Path: <wangxin2015.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DD05E00CE0; Wed, 31 Aug 2016 21:24:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26375E00CD5
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 21:24:05 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="10494431"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 01 Sep 2016 12:24:02 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id BBCCA403C867
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 12:24:00 +0800 (CST)
Received: from ubuntu.g08.fujitsu.local (10.167.226.120) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.279.2; Thu, 1 Sep 2016 12:24:00 +0800
From: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 1 Sep 2016 00:23:57 -0400
Message-ID: <1472703837-1344-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.120]
X-yoursite-MailScanner-ID: BBCCA403C867.A8C68
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: wangxin2015.fnst@cn.fujitsu.com
Subject: [meta-cgl][PATCH] resource-agents: 3.9.6 -> 3.9.7
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
X-List-Received-Date: Thu, 01 Sep 2016 04:24:08 -0000
Content-Type: text/plain

Upgrade resource-agents from 3.9.6 to 3.9.7.

Signed-off-by: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>
---
 .../{resource-agents_3.9.6.bb => resource-agents_3.9.7.bb}            | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-cgl-common/recipes-cgl/cluster-resource-agents/{resource-agents_3.9.6.bb => resource-agents_3.9.7.bb} (95%)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.6.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
similarity index 95%
rename from meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.6.bb
rename to meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
index 18ef1e8..a0d4e1f 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.6.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
@@ -20,8 +20,8 @@ SRC_URI = "https://codeload.github.com/ClusterLabs/resource-agents/tar.gz/v${PV}
            file://03-fix-header-defs-lookup.patch \
           "
 
-SRC_URI[md5sum] = "6873d5a217aee3026193fb85bfa18a4a"
-SRC_URI[sha256sum] = "39722cdee68ff96d06788f05f325bd21ec2fc59c59d847e5e4b23c6df23bf678"
+SRC_URI[md5sum] = "c59096b1bacc704e8a5a285f15729109"
+SRC_URI[sha256sum] = "e5bd62658fbc236acb83b709f64b2cd9fae52aa4a420a44fed5eb667e928b152"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
                     file://COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c \
-- 
2.7.4





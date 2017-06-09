Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86B1DE00C05; Thu,  8 Jun 2017 18:10:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42D3DE00BF3
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 18:10:12 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v591ACeA007538
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 8 Jun 2017 18:10:12 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Thu, 8 Jun 2017 18:10:11 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Jun 2017 09:10:04 +0800
Message-ID: <f5420193a1f62dcbec00627b3f0acb478ab36829.1496970398.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1496970398.git.jackie.huang@windriver.com>
References: <cover.1496970398.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 4/4 v2] resource-agents: update to version 4.0.1
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
X-List-Received-Date: Fri, 09 Jun 2017 01:10:13 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../{resource-agents_3.9.7.bb => resource-agents_4.0.1.bb}            | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-cgl-common/recipes-cgl/cluster-resource-agents/{resource-agents_3.9.7.bb => resource-agents_4.0.1.bb} (96%)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
similarity index 96%
rename from meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
rename to meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
index 2f36b1b..2a9643b 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
@@ -22,8 +22,8 @@ SRC_URI = "https://codeload.github.com/ClusterLabs/resource-agents/tar.gz/v${PV}
            file://fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch \
           "
 
-SRC_URI[md5sum] = "c59096b1bacc704e8a5a285f15729109"
-SRC_URI[sha256sum] = "e5bd62658fbc236acb83b709f64b2cd9fae52aa4a420a44fed5eb667e928b152"
+SRC_URI[md5sum] = "8530431861e659d4ce2f04afcc4efc03"
+SRC_URI[sha256sum] = "863f83c724bad3a8bcff12b9c8712406c43e010041868826cad7b78fd8cfb9fb"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
                     file://COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c \
-- 
2.11.0



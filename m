Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E17BEE008F6; Fri, 13 Feb 2015 04:18:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 6BC63E008BC
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 04:18:35 -0800 (PST)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 13 Feb 2015 13:18:33 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 7C6202800CB;
	Fri, 13 Feb 2015 13:18:33 +0100 (CET)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <linux-maintainers@enea.com>, <yocto@yoctoproject.org>
Date: Fri, 13 Feb 2015 13:18:28 +0100
Message-ID: <1423829908-57597-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Cc: qianl.fnst@cn.fujitsu.com
Subject: [PATCH] [meta-cgl][PATCH 1_2] cluster: Fix license format
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
X-List-Received-Date: Fri, 13 Feb 2015 12:18:40 -0000
Content-Type: text/plain

The patch from Qian Lei was redone since the SRC_URI checksum
change ws done previous to this change by me.

Signed-off-by: Qian Lei <qianl.fnst@cn.fujitsu.com>
Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
index a28ec59..2610236 100644
--- a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
@@ -8,7 +8,7 @@ SRC_URI = "https://fedorahosted.org/releases/c/l/cluster/${BP}.tar.xz"
 SRC_URI[md5sum] = "300d83dbbc525c3da21c2e961271c84b"
 SRC_URI[sha256sum] = "4d340338c2376d369cb223469fa1a3356cce9ab5b2a0a0a33256ade2dbbe02d1"
 
-LICENSE = "GPL-2.0 LGPL-2.0"
+LICENSE = "GPL-2.0 & LGPL-2.0"
 LIC_FILES_CHKSUM = "file://doc/README.licence;md5=ee8ae43af5ea09f12ca7f7a649764cb0"
 
 PR = "r1"
-- 
1.9.1



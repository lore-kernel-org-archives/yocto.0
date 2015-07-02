Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14C17E00A2C; Thu,  2 Jul 2015 07:28:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 992C9E009E4
	for <yocto@yoctoproject.org>; Thu,  2 Jul 2015 07:28:25 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2; Thu, 2 Jul 2015
	16:28:21 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 1378128BA1E;
	Thu,  2 Jul 2015 16:28:22 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Thu, 2 Jul 2015 16:28:20 +0200
Message-ID: <1435847300-45344-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [PATCH] packagegroups: added missing support.
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
X-List-Received-Date: Thu, 02 Jul 2015 14:28:32 -0000
Content-Type: text/plain

The rename of the cluster-resource-agents into resource-agents did not
solved all the dependencies.

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index ea7377b..3d65a55 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -55,7 +55,7 @@ RDEPENDS_packagegroup-cgl-middleware = "\
     openhpi \
     pacemaker \
     cluster-glue \
-    cluster-resource-agents \
+    resource-agents \
     ifenslave \
     drbd \
     makedumpfile \
-- 
1.9.1



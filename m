Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6192DE00D68; Wed, 26 Jun 2019 17:39:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7B4CE0090E
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 17:39:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x5R0d4qb022981
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Jun 2019 17:39:04 -0700 (PDT)
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Wed, 26 Jun 2019 17:39:04 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Adrian.Dudau@enea.com>,
	<alexandru.vaduva@linux.com>
Date: Thu, 27 Jun 2019 08:38:59 +0800
Message-ID: <1561595941-25137-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-cgl][PATCH 1/3] packagegroup-cgl-middleware: remove ipsec-tools and umip
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
X-List-Received-Date: Thu, 27 Jun 2019 00:39:15 -0000
Content-Type: text/plain

The ipsec-tools and umip had been removed from meta-openembedded. We
should remove them from the packagegroup.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index 6ec68c4..4fa7d48 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -23,7 +23,6 @@ MULTIPATH_TOOLS = " \
     "
 
 RDEPENDS_packagegroup-cgl-middleware = "\
-    ipsec-tools \
     net-snmp-server \
     net-snmp-client \
     net-snmp-libs \
@@ -51,7 +50,6 @@ RDEPENDS_packagegroup-cgl-middleware = "\
     ifenslave \
     drbd-utils \
     openl2tp \
-    umip \
     dmidecode \
     "
 
-- 
2.7.4



Return-Path: <Zhixiong.Chi@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 308F4E00D2E; Thu, 21 Mar 2019 19:47:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,LOTS_OF_MONEY,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB6C6E00D2B
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2019 19:47:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x2M2lvUl013252
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2019 19:47:57 -0700 (PDT)
Received: from ala-lpggp2.wrs.com (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Thu, 21 Mar 2019 19:47:56 -0700
From: Zhixiong Chi <zhixiong.chi@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 21 Mar 2019 19:47:56 -0700
Message-ID: <20190322024756.116486-1-zhixiong.chi@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [meta-cloud-services][PATCH] dhcp: Add the default route option
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
X-List-Received-Date: Fri, 22 Mar 2019 02:47:58 -0000
Content-Type: text/plain

Add the default route option for the operation of adding route,
while we set the static route and the mask setting is 0.

For example:
add_routes 32 169 254 169 254 10 209 67 4 0 10 209 67 1

The first route (169.254.169.254/32 via 10.209.67.4) is added successfully,
but the second route (10.209.67.1, default) is not added at all.

Signed-off-by: Zhixiong Chi <zhixiong.chi@windriver.com>
---
 recipes-connectivity/dhcp/files/dhclient-exit-hooks | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-connectivity/dhcp/files/dhclient-exit-hooks b/recipes-connectivity/dhcp/files/dhclient-exit-hooks
index 3be5e02..41bcb08 100644
--- a/recipes-connectivity/dhcp/files/dhclient-exit-hooks
+++ b/recipes-connectivity/dhcp/files/dhclient-exit-hooks
@@ -66,6 +66,9 @@ while [ $# -ne 0 ]; do
   elif [ $mask -gt 8 ]; then
     destination="-net $1.$2.0.0/$mask"
     shift; shift
+  #Add the default route
+  elif [ $mask -eq 0 ]; then
+    destination="default"
   else
     destination="-net $1.0.0.0/$mask"
     shift
-- 
2.17.1



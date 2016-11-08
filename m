Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D27F0E007E8; Tue,  8 Nov 2016 05:47:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFAEAE00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 05:47:42 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id 15BC0A0E75;
	Tue,  8 Nov 2016 13:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cC4UQKk515nK; Tue,  8 Nov 2016 13:38:15 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id B38A0A0BA4;
	Tue,  8 Nov 2016 13:38:13 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Tue,  8 Nov 2016 14:37:38 +0100
Message-Id: <1478612259-4667-2-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1478612259-4667-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1478612259-4667-1-git-send-email-philippe.coval@osg.samsung.com>
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH 2/3] Add packagegroup iotivity
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
X-List-Received-Date: Tue, 08 Nov 2016 13:47:45 -0000

Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 .../packagegroups/packagegroup-iotivity.bb         | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 recipes-core/packagegroups/packagegroup-iotivity.bb

diff --git a/recipes-core/packagegroups/packagegroup-iotivity.bb b/recipes-core/packagegroups/packagegroup-iotivity.bb
new file mode 100644
index 0000000..f664d83
--- /dev/null
+++ b/recipes-core/packagegroups/packagegroup-iotivity.bb
@@ -0,0 +1,24 @@
+DESCRIPTION = "IoTivity full package set including examples"
+LICENSE = "Apache-2.0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-iotivity \
+    "
+
+ALLOW_EMPTY_${PN} = "1"
+
+RDEPENDS_${PN} += "\
+    iotivity \
+    iotivity-plugins-samples \
+    iotivity-resource \
+    iotivity-resource-samples \
+    iotivity-service \
+    iotivity-service-samples \
+    iotivity-tests \
+    "
+
+RDEPENDS_${PN} += "\
+    iotivity-simple-client \
+    "
-- 
1.9.1



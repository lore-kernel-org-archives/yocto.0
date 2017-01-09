Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61347E007EB; Mon,  9 Jan 2017 02:19:14 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F3B3E007BA
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 02:19:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id 158D3A12FC;
	Mon,  9 Jan 2017 10:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K5YZGFR9dGow; Mon,  9 Jan 2017 10:19:27 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id EFBFBA1310;
	Mon,  9 Jan 2017 10:19:25 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Mon,  9 Jan 2017 11:18:58 +0100
Message-Id: <1483957138-21658-3-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1483957138-21658-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1483957138-21658-1-git-send-email-philippe.coval@osg.samsung.com>
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH v3 3/3] Depends on glib-2.0-native to use gdbus-codegen
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
X-List-Received-Date: Mon, 09 Jan 2017 10:19:14 -0000

It was discovered while building AGL using Intel BSP.

Also fix dangling syslink,
 discovered while building ostro OS.

Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 recipes-core/iotivity/iotivity_1.2.0.bb | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-core/iotivity/iotivity_1.2.0.bb b/recipes-core/iotivity/iotivity_1.2.0.bb
index 678112b..363894e 100644
--- a/recipes-core/iotivity/iotivity_1.2.0.bb
+++ b/recipes-core/iotivity/iotivity_1.2.0.bb
@@ -1,7 +1,8 @@
+PR = "r1"
 SUMMARY = "IoTivity framework and SDK sponsored by the Open Connectivity Foundation."
 DESCRIPTION = "IoTivity is an open source software framework enabling seamless device-to-device connectivity to address the emerging needs of the Internet of Things."
 HOMEPAGE = "https://www.iotivity.org/"
-DEPENDS = "boost virtual/gettext chrpath-replacement-native expat openssl util-linux curl glib-2.0"
+DEPENDS = "boost virtual/gettext chrpath-replacement-native expat openssl util-linux curl glib-2.0 glib-2.0-native"
 EXTRANATIVEPATH += "chrpath-native"
 SECTION = "libs"
 LICENSE = "Apache-2.0"
@@ -381,7 +382,7 @@ do_install() {
     copy_file ${S}/iotivity.pc ${D}${libdir}/pkgconfig/
     ln -s iotivity/resource ${D}${includedir}/resource
     ln -s iotivity/service ${D}${includedir}/service
-    ln -s ../iotivity/resource/oc_logger/targets ${D}${includedir}/resource/
+    ln -s oc_logger/targets ${D}${includedir}/resource/
 
     chrpath -d ${D}${libdir}/*.so
 }
-- 
1.9.1



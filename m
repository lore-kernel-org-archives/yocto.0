Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D437CE00571; Tue,  8 Nov 2016 05:47:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0EE0E006E3
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 05:47:42 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id C9485A0E76;
	Tue,  8 Nov 2016 13:38:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cu9JJrcIteZX; Tue,  8 Nov 2016 13:38:22 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id 612B3A0BA4;
	Tue,  8 Nov 2016 13:38:21 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Tue,  8 Nov 2016 14:37:39 +0100
Message-Id: <1478612259-4667-3-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1478612259-4667-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1478612259-4667-1-git-send-email-philippe.coval@osg.samsung.com>
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH 3/3] Rebase 1.1.1 on 1.1-rel maintenance branch
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

 * stdassert.h is not standard-compliant. Change this to assert.h
 * linux: Support also armeabi-v7a TARGET_ARCH
 * minor changes

Fix harmless typo in recipe too

Change-Id: I99c3742e4b332094e76cdd0af49cf8b7253d246c
Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 recipes-core/iotivity/iotivity_1.1.1.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-core/iotivity/iotivity_1.1.1.bb b/recipes-core/iotivity/iotivity_1.1.1.bb
index 5abfb57..88becb6 100644
--- a/recipes-core/iotivity/iotivity_1.1.1.bb
+++ b/recipes-core/iotivity/iotivity_1.1.1.bb
@@ -1,4 +1,4 @@
-PR = "r2"
+PR = "r3"
 SUMMARY = "IoTivity framework and SDK sponsored by the Open Connectivity Foundation."
 DESCRIPTION = "IoTivity is an open source software framework enabling seamless device-to-device connectivity to address the emerging needs of the Internet of Things."
 HOMEPAGE = "https://www.iotivity.org/"
@@ -9,7 +9,7 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://resource/include/OCApi.h;beginline=1;endline=19;md5=fc5a615cf1dc3880967127bc853b3e0c"
 
 branch_iotivity = "1.1-rel"
-SRCREV = "8078b450c9a75b7aecaf6259fd0a8710318fce0f"
+SRCREV = "5aa4339c5b6e11c062dcddca1372ef3f747cc2cb"
 SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http;"
 
 url_tinycbor = "git://github.com/01org/tinycbor.git"
@@ -377,7 +377,7 @@ do_install() {
 
 FILES_${PN}-resource-dev = "\
         ${includedir}/iotivity/resource \
-        ${inclidedir}/iotivity/extlibs"
+        ${includedir}/iotivity/extlibs"
 
 FILES_${PN}-resource-thin-staticdev = "\
         ${libdir}/libocsrm.a \
-- 
1.9.1



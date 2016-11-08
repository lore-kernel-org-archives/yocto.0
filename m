Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE6D9E00724; Tue,  8 Nov 2016 05:47:47 -0800 (PST)
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
X-Greylist: delayed 591 seconds by postgrey-1.32 at yocto-www;
	Tue, 08 Nov 2016 05:47:42 PST
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C21E7E00724
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 05:47:42 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id D80ADA0E74;
	Tue,  8 Nov 2016 13:37:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0h21izTWm0lc; Tue,  8 Nov 2016 13:37:58 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id 70D92A0BA4;
	Tue,  8 Nov 2016 13:37:57 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Tue,  8 Nov 2016 14:37:37 +0100
Message-Id: <1478612259-4667-1-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH 1/3] Set real url in SRCREV
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
X-List-Received-Date: Tue, 08 Nov 2016 13:47:48 -0000

RPM packaging might be lost on older version of yocto
It was observed using tizen-distro with raspberrypi BSP layer

Change-Id: Ic400c0d92961eabda235fc8314740d9e23851b31
Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 recipes-core/iotivity/iotivity_1.1.1.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-core/iotivity/iotivity_1.1.1.bb b/recipes-core/iotivity/iotivity_1.1.1.bb
index a503c59..5abfb57 100644
--- a/recipes-core/iotivity/iotivity_1.1.1.bb
+++ b/recipes-core/iotivity/iotivity_1.1.1.bb
@@ -8,10 +8,9 @@ SECTION = "libs"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://resource/include/OCApi.h;beginline=1;endline=19;md5=fc5a615cf1dc3880967127bc853b3e0c"
 
-url_iotivity = "git://github.com/iotivity/iotivity.git"
 branch_iotivity = "1.1-rel"
 SRCREV = "8078b450c9a75b7aecaf6259fd0a8710318fce0f"
-SRC_URI = "${url_iotivity};destsuffix=${S};branch=${branch_iotivity};protocol=http;"
+SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http;"
 
 url_tinycbor = "git://github.com/01org/tinycbor.git"
 SRCREV_tinycbor = "358a7e42ab1ed421a68e699d8d8359340bcfacbd"
-- 
1.9.1



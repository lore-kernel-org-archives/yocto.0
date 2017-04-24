Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2999DE00A9B; Mon, 24 Apr 2017 10:38:55 -0700 (PDT)
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
X-Greylist: delayed 493 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Apr 2017 10:38:53 PDT
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AE2AE00867
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 10:38:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id 9BA43A05ED;
	Mon, 24 Apr 2017 17:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gblGNjS5iiWD; Mon, 24 Apr 2017 17:31:05 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id C0178A05EB;
	Mon, 24 Apr 2017 17:31:03 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Mon, 24 Apr 2017 19:30:32 +0200
Message-Id: <1493055032-26551-1-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH] iotivity: Sanitize URIs to support older yocto versions
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
X-List-Received-Date: Mon, 24 Apr 2017 17:38:55 -0000

Removing trailing separator solved issues observed
on older version of yocto (daisy at least):

  Parsing recipes..ERROR: ExpansionError during parsing
  /recipes-core/iotivity/iotivity_1.2.0.bb:
  Failure expanding variable do_fetch[file-checksums],
  expression was ${@bb.fetch.get_checksum_file_list(d)}
  which triggered exception ValueError:
  need more than 1 value to unpack

Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 recipes-core/iotivity/iotivity_1.1.1.bb | 2 +-
 recipes-core/iotivity/iotivity_1.2.0.bb | 2 +-
 recipes-core/iotivity/iotivity_1.2.1.bb | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-core/iotivity/iotivity_1.1.1.bb b/recipes-core/iotivity/iotivity_1.1.1.bb
index 5666750..2d8e69c 100644
--- a/recipes-core/iotivity/iotivity_1.1.1.bb
+++ b/recipes-core/iotivity/iotivity_1.1.1.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://resource/include/OCApi.h;beginline=1;endline=19;md5=f
 
 branch_iotivity = "1.1-rel"
 SRCREV = "781570fcd897e2c7fd11c4c76d10723eef35f27a"
-SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http;"
+SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http"
 
 url_tinycbor = "git://github.com/01org/tinycbor.git"
 SRCREV_tinycbor = "358a7e42ab1ed421a68e699d8d8359340bcfacbd"
diff --git a/recipes-core/iotivity/iotivity_1.2.0.bb b/recipes-core/iotivity/iotivity_1.2.0.bb
index 363894e..d46b7dd 100644
--- a/recipes-core/iotivity/iotivity_1.2.0.bb
+++ b/recipes-core/iotivity/iotivity_1.2.0.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://LICENSE.md;md5=22bf216f3077c279aed7b36b1fa9e6d1"
 
 branch_iotivity = "1.2-rel"
 SRCREV = "1a2e71f9c470c7cc17157f83deb4488ee83050a4"
-SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http;"
+SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http"
 SRC_URI += "file://0081-yocto-Add-aarch64-for-DragonBoard-410c.patch"
 SRC_URI += "file://0364-yocto-Use-tools-from-sysroot-before-system-PATH-agai.patch"
 
diff --git a/recipes-core/iotivity/iotivity_1.2.1.bb b/recipes-core/iotivity/iotivity_1.2.1.bb
index 344db21..c34e975 100644
--- a/recipes-core/iotivity/iotivity_1.2.1.bb
+++ b/recipes-core/iotivity/iotivity_1.2.1.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://LICENSE.md;md5=22bf216f3077c279aed7b36b1fa9e6d1"
 
 branch_iotivity = "1.2-rel"
 SRCREV = "0c90ca6ffcbb6a2c56c977ec11bebb7b1d14053b"
-SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http;"
+SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http"
 SRC_URI += "file://0364-yocto-Use-tools-from-sysroot-before-system-PATH-agai.patch"
 
 url_tinycbor = "git://github.com/01org/tinycbor.git"
-- 
1.9.1



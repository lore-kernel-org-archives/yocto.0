Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2321CE00B19; Wed, 24 May 2017 05:25:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 261 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 May 2017 05:25:02 PDT
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB4E7E00AF0
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 05:25:02 -0700 (PDT)
Received: from 1dDVHL-0003zw-Vk by out10a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1dDVHM-00040G-TJ
	for yocto@yoctoproject.org; Wed, 24 May 2017 05:20:40 -0700
Received: by emcmailer; Wed, 24 May 2017 05:20:40 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10a.electric.net with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <Adrian.Dudau@enea.com>)
	id 1dDVHL-0003zw-Vk
	for yocto@yoctoproject.org; Wed, 24 May 2017 05:20:39 -0700
Received: from sestofb11.enea.se (172.21.3.152) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.319.2;
	Wed, 24 May 2017 14:20:39 +0200
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id A29F24404CB;
	Wed, 24 May 2017 14:20:39 +0200 (CEST)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Wed, 24 May 2017 14:20:39 +0200
Message-ID: <1495628439-48206-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:ECDHE-RSA-AES256-SHA:256
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-cgl][PATCH] core-image-cgl: Remove ROOTFS_PKGMANAGE_BOOTSTRAP
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
X-List-Received-Date: Wed, 24 May 2017 12:25:05 -0000
Content-Type: text/plain

run-postinsts is now installed by default in image.bbclass, so no need
to include it in each image.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/images/core-image-cgl-initramfs.bb | 2 +-
 meta-cgl-common/images/core-image-cgl.bb           | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-common/images/core-image-cgl-initramfs.bb
index 2ebbdf5..477f069 100644
--- a/meta-cgl-common/images/core-image-cgl-initramfs.bb
+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
@@ -3,7 +3,7 @@ require core-image-cgl.bb
 # Recipe is based on core-image-minimal.bb
 DESCRIPTION = "Initramfs used to mount multipath device as root file system"
 
-PACKAGE_INSTALL = "initramfs-cgl-boot busybox base-passwd udev ${ROOTFS_BOOTSTRAP_INSTALL}"
+PACKAGE_INSTALL = "initramfs-cgl-boot busybox base-passwd udev"
 
 # Do not pollute the initrd image with rootfs features
 IMAGE_FEATURES = ""
diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cgl-common/images/core-image-cgl.bb
index 7117493..86bf7d4 100644
--- a/meta-cgl-common/images/core-image-cgl.bb
+++ b/meta-cgl-common/images/core-image-cgl.bb
@@ -10,7 +10,6 @@ VALGRIND_armv7a ?= "valgrind"
 
 # Include modules in rootfs
 IMAGE_INSTALL += "\
-    ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
     packagegroup-core-buildessential \
     packagegroup-core-selinux \
     packagegroup-cgl \
-- 
2.7.4



Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97233E00D1F; Tue, 10 May 2016 03:05:53 -0700 (PDT)
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
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D933E00D15
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 03:05:50 -0700 (PDT)
Received: from 1b04Y0-00064Z-UP by out10d.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1b04Y0-00065S-VC
	for yocto@yoctoproject.org; Tue, 10 May 2016 03:05:48 -0700
Received: by emcmailer; Tue, 10 May 2016 03:05:48 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10d.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1b04Y0-00064Z-UP
	for yocto@yoctoproject.org; Tue, 10 May 2016 03:05:48 -0700
Received: from sestofb11.enea.se (172.21.3.146) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 10 May 2016 12:05:48 +0200
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id 24542240F0D;
	Tue, 10 May 2016 12:05:48 +0200 (CEST)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 10 May 2016 12:05:48 +0200
Message-ID: <1462874748-57412-2-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1462874748-57412-1-git-send-email-adrian.dudau@enea.com>
References: <1462874748-57412-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-cgl][PATCH 2/2] distro: Move IMAGE_CLASSES inheritance
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
X-List-Received-Date: Tue, 10 May 2016 10:05:53 -0000
Content-Type: text/plain

The IMAGE_CLASSES variable affects all images, so it must be defined at
distro level. Move it from the core-image-cgl-initramfs where it has no
effect into the distro definition.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/conf/distro/poky-cgl.conf          | 2 ++
 meta-cgl-common/images/core-image-cgl-initramfs.bb | 1 -
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/distro/poky-cgl.conf b/meta-cgl-common/conf/distro/poky-cgl.conf
index aff5dec..1fd453e 100644
--- a/meta-cgl-common/conf/distro/poky-cgl.conf
+++ b/meta-cgl-common/conf/distro/poky-cgl.conf
@@ -3,3 +3,5 @@ require conf/distro/poky-lsb.conf
 DISTRO = "poky-cgl"
 
 DISTRO_FEATURES_append = " pam selinux"
+
+IMAGE_CLASSES += "image_types_uboot"
diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-common/images/core-image-cgl-initramfs.bb
index 845fa07..881f517 100644
--- a/meta-cgl-common/images/core-image-cgl-initramfs.bb
+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
@@ -14,7 +14,6 @@ IMAGE_LINGUAS = ""
 LICENSE = "MIT"
 
 IMAGE_FSTYPES = "cpio.gz.u-boot"
-IMAGE_CLASSES += "image_types_uboot"
 inherit core-image
 
 IMAGE_ROOTFS_SIZE = "8192"
-- 
1.9.1



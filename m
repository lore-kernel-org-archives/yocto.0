Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CFCEE00B95; Tue, 20 Sep 2016 07:25:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.33 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 229CFE00B5F
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 07:25:02 -0700 (PDT)
Received: from 1bmLxg-00059e-UY by out10a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1bmLxg-0005AZ-V7
	for yocto@yoctoproject.org; Tue, 20 Sep 2016 07:23:52 -0700
Received: by emcmailer; Tue, 20 Sep 2016 07:23:52 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10a.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1bmLxg-00059e-UY
	for yocto@yoctoproject.org; Tue, 20 Sep 2016 07:23:52 -0700
Received: from sestofb11.enea.se (172.21.3.152) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 16:23:52 +0200
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id 270D0441598;
	Tue, 20 Sep 2016 16:23:52 +0200 (CEST)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Sep 2016 16:23:51 +0200
Message-ID: <1474381432-28259-3-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1474381432-28259-1-git-send-email-adrian.dudau@enea.com>
References: <1474381432-28259-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-cgl][PATCHv2 2/3] Add an initramfs image
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
X-List-Received-Date: Tue, 20 Sep 2016 14:25:06 -0000
Content-Type: text/plain

This is needed to enable multipath support for the rootfs.
The ext3 support is needed to load the image onto the disk.

CGL requirements AVL.7.1.*

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/conf/distro/poky-cgl.conf          |  1 +
 meta-cgl-common/images/core-image-cgl-initramfs.bb | 20 ++++++++++++++++++++
 meta-cgl-common/images/core-image-cgl.bb           |  2 ++
 3 files changed, 23 insertions(+)
 create mode 100644 meta-cgl-common/images/core-image-cgl-initramfs.bb

diff --git a/meta-cgl-common/conf/distro/poky-cgl.conf b/meta-cgl-common/conf/distro/poky-cgl.conf
index 8a76f70..90cc82b 100644
--- a/meta-cgl-common/conf/distro/poky-cgl.conf
+++ b/meta-cgl-common/conf/distro/poky-cgl.conf
@@ -3,4 +3,5 @@ require conf/distro/poky-selinux.conf
 
 DISTRO = "poky-cgl"
 
+IMAGE_CLASSES += "image_types_uboot"
 PREFERRED_PROVIDER_virtual/refpolicy="refpolicy-targeted"
diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-common/images/core-image-cgl-initramfs.bb
new file mode 100644
index 0000000..0777b7c
--- /dev/null
+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
@@ -0,0 +1,20 @@
+require core-image-cgl.bb
+
+# Recipe is based on core-image-minimal.bb
+DESCRIPTION = "Initramfs used to mount multipath device as root file system"
+
+PACKAGE_INSTALL = "initramfs-cgl-boot busybox base-passwd udev ${ROOTFS_BOOTSTRAP_INSTALL}"
+
+# Do not pollute the initrd image with rootfs features
+IMAGE_FEATURES = ""
+
+export IMAGE_BASENAME = "core-image-cgl-initramfs"
+IMAGE_LINGUAS = ""
+
+LICENSE = "MIT"
+
+IMAGE_FSTYPES = "cpio.gz.u-boot"
+
+IMAGE_ROOTFS_SIZE = "8192"
+
+BAD_RECOMMENDATIONS += "busybox-syslog"
diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cgl-common/images/core-image-cgl.bb
index d12391b..5975601 100644
--- a/meta-cgl-common/images/core-image-cgl.bb
+++ b/meta-cgl-common/images/core-image-cgl.bb
@@ -21,6 +21,8 @@ IMAGE_INSTALL += "\
     kernel-modules \
     "
 
+IMAGE_FSTYPES += " ext3.gz"
+
 # kexec-tools doesn't work on Mips
 KEXECTOOLS_mips ?= ""
 KEXECTOOLS_mipsel ?= ""
-- 
1.9.1



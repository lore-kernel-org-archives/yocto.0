Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE003.bigfish.com (tx2ehsobe002.messaging.microsoft.com
	[65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CA7DE004CF
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 22:55:33 -0700 (PDT)
Received: from mail172-tx2-R.bigfish.com (10.9.14.252) by
	TX2EHSOBE003.bigfish.com (10.9.40.23) with Microsoft SMTP Server id
	14.1.225.22; Thu, 29 Sep 2011 05:55:33 +0000
Received: from mail172-tx2 (localhost.localdomain [127.0.0.1])	by
	mail172-tx2-R.bigfish.com (Postfix) with ESMTP id A8622C482F5	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:55:32 +0000 (UTC)
X-SpamScore: 3
X-BigFish: VS3(zzzz1202h1082kzz8275bhz2dh2a8h668h839h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail172-tx2 (localhost.localdomain [127.0.0.1]) by mail172-tx2
	(MessageSwitch) id 1317275670768522_10157;
	Thu, 29 Sep 2011 05:54:30 +0000 (UTC)
Received: from TX2EHSMHS024.bigfish.com (unknown [10.9.14.252])	by
	mail172-tx2.bigfish.com (Postfix) with ESMTP id 1EE1C13780E4	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:52:36 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS024.bigfish.com
	(10.9.99.124) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 29 Sep 2011 05:52:36 +0000
Received: from az33smr02.freescale.net (10.64.34.200) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server id 14.1.323.7; Thu, 29 Sep 2011 00:52:35 -0500
Received: from right.am.freescale.net (right.am.freescale.net [10.82.193.13])
	by az33smr02.freescale.net (8.13.1/8.13.0) with ESMTP id
	p8T5qXmr014523	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 00:52:35 -0500 (CDT)
From: Matthew McClintock <msm@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Sep 2011 00:52:29 -0500
Message-ID: <1317275552-19908-4-git-send-email-msm@freescale.com>
X-Mailer: git-send-email 1.7.6.1
In-Reply-To: <1317275552-19908-1-git-send-email-msm@freescale.com>
References: <1317275552-19908-1-git-send-email-msm@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [PATCH 4/7] Add new IMAGE_CLASSES variable for classes for image generation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Sep 2011 05:55:33 -0000
Content-Type: text/plain

Allows us to import classes only for images and not to the global
namespace

Signed-off-by: Matthew McClintock <msm@freescale.com>
---
 meta-yocto/conf/local.conf.sample |    6 ++++++
 meta/classes/image.bbclass        |    3 ++-
 2 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index f6951b0..b4eec0b 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -163,6 +163,12 @@ EXTRA_IMAGE_FEATURES = "debug-tweaks"
 # NOTE: mklibs also needs to be explicitly enabled for a given image, see local.conf.extended
 USER_CLASSES ?= "image-mklibs image-prelink"
 
+# Additional image generation features
+#
+# The following is a list of classes to import to use in the generation of images
+# currently an example class is image_types_uboot
+# IMAGE_CLASSES ?= "image_types_uboot"
+
 #
 # Runtime testing of images
 #
diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
index f17e989..f03df5b 100644
--- a/meta/classes/image.bbclass
+++ b/meta/classes/image.bbclass
@@ -111,7 +111,8 @@ def get_devtable_list(d):
         str += " %s" % bb.which(bb.data.getVar('BBPATH', d, 1), devtable)
     return str
 
-inherit image_types
+IMAGE_CLASESS ??= ""
+inherit image_types ${IMAGE_CLASSES}
 
 IMAGE_POSTPROCESS_COMMAND ?= ""
 MACHINE_POSTPROCESS_COMMAND ?= ""
-- 
1.7.6.1




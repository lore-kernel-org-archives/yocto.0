Return-Path: <B19537@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe001.messaging.microsoft.com [216.32.181.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA49AE0147B
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:57:39 -0700 (PDT)
Received: from mail145-ch1-R.bigfish.com (10.43.68.230) by
	CH1EHSOBE002.bigfish.com (10.43.70.52) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:57:39 +0000
Received: from mail145-ch1 (localhost [127.0.0.1])	by
	mail145-ch1-R.bigfish.com (Postfix) with ESMTP id 1A2344200B5	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:57:39 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail145-ch1 (localhost.localdomain [127.0.0.1]) by mail145-ch1
	(MessageSwitch) id 1347433056675296_29924;
	Wed, 12 Sep 2012 06:57:36 +0000 (UTC)
Received: from CH1EHSMHS041.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.233])	by mail145-ch1.bigfish.com (Postfix) with ESMTP id
	99AFB240047	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 06:57:36 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS041.bigfish.com
	(10.43.69.250) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:57:36 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:57:35 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6vVtI027007;
	Tue, 11 Sep 2012 23:57:33 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:14:37 +0800
Message-ID: <1347434078-8584-1-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 02/16] fsl-image-minimal: IMAGE_FSTYPES add jffs2
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
X-List-Received-Date: Wed, 12 Sep 2012 06:57:40 -0000
Content-Type: text/plain

From: Ting Liu <b28495@freescale.com>

Signed-off-by: Ting Liu <b28495@freescale.com>
---
 images/fsl-image-minimal.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/fsl-image-minimal.bb b/images/fsl-image-minimal.bb
index b8d3c77..f3d1ad4 100644
--- a/images/fsl-image-minimal.bb
+++ b/images/fsl-image-minimal.bb
@@ -13,4 +13,4 @@ IMAGE_ROOTFS_SIZE = "8192"
 # remove not needed ipkg informations
 ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
 
-IMAGE_FSTYPES = "tar.gz ext2.gz.u-boot"
+IMAGE_FSTYPES = "tar.gz ext2.gz.u-boot jffs2"
-- 
1.7.9.5




Return-Path: <B40290@freescale.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0186.outbound.messaging.microsoft.com [213.199.154.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38EA7E01627
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 20:31:03 -0700 (PDT)
Received: from mail152-db8-R.bigfish.com (10.174.8.249) by
	DB8EHSOBE021.bigfish.com (10.174.4.84) with Microsoft SMTP Server id
	14.1.225.22; Thu, 26 Sep 2013 03:31:02 +0000
Received: from mail152-db8 (localhost [127.0.0.1])	by
	mail152-db8-R.bigfish.com (Postfix) with ESMTP id B604D200A2	for
	<yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:31:02 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1de098h17326ah1de097h186068h8275bhz2dh2a8h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h162dh1631h1758h1898h18e1h1946h19b5h1ad9h1b0ah1b2fh1fb3h1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e23h1fe8h1ff5h1155h)
Received: from mail152-db8 (localhost.localdomain [127.0.0.1]) by mail152-db8
	(MessageSwitch) id 138016626147508_23622;
	Thu, 26 Sep 2013 03:31:01 +0000 (UTC)
Received: from DB8EHSMHS002.bigfish.com (unknown [10.174.8.235])	by
	mail152-db8.bigfish.com (Postfix) with ESMTP id 06E564A0061	for
	<yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:31:01 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB8EHSMHS002.bigfish.com
	(10.174.4.12) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Thu, 26 Sep 2013 03:30:58 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server (TLS) id 14.3.158.2; Thu, 26 Sep 2013 03:30:56 +0000
Received: from sbuilder136.ap.freescale.net (sun.ap.freescale.net
	[10.192.208.136])	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP
	id r8Q3UrP1006955;	Wed, 25 Sep 2013 20:30:54 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 26 Sep 2013 11:30:51 +0800
Message-ID: <1380166251-28611-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: Chunrong Guo <B40290@freescale.com>
Subject: [Meta-security][PATCH V3 2/3] libdnet: add recipe
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
X-List-Received-Date: Thu, 26 Sep 2013 03:31:04 -0000
Content-Type: text/plain

From: Chunrong Guo <B40290@freescale.com>

   *dumb networking library
   *snort depends libdnet

Signed-off-by: Chunrong Guo <B40290@freescale.com>
---
 recipes-security/libdnet/libdnet_1.12.bb |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)
 create mode 100644 recipes-security/libdnet/libdnet_1.12.bb

diff --git a/recipes-security/libdnet/libdnet_1.12.bb b/recipes-security/libdnet/libdnet_1.12.bb
new file mode 100644
index 0000000..40b5758
--- /dev/null
+++ b/recipes-security/libdnet/libdnet_1.12.bb
@@ -0,0 +1,14 @@
+DESCRIPTION = "dumb networking library"
+HOMEPAGE = "http://code.google.com/p/libdnet/"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0036c1b155f4e999f3e0a373490b5db9"
+
+SRC_URI = "http://libdnet.googlecode.com/files/libdnet-${PV}.tgz"
+
+SRC_URI[md5sum] = "9253ef6de1b5e28e9c9a62b882e44cc9"
+SRC_URI[sha256sum] = "83b33039787cf99990e977cef7f18a5d5e7aaffc4505548a83d31bd3515eb026"
+
+inherit autotools 
+
+acpaths = "-I ./config/"
+
-- 
1.7.5.4




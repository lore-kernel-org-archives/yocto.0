Return-Path: <B40290@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02EF0E013B0
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 21:04:31 -0700 (PDT)
Received: from mail94-ch1-R.bigfish.com (10.43.68.241) by
	CH1EHSOBE020.bigfish.com (10.43.70.77) with Microsoft SMTP Server id
	14.1.225.22; Wed, 11 Sep 2013 04:04:30 +0000
Received: from mail94-ch1 (localhost [127.0.0.1])	by mail94-ch1-R.bigfish.com
	(Postfix) with ESMTP id 2ACD5200241	for <yocto@yoctoproject.org>;
	Wed, 11 Sep 2013 04:04:30 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1de098h17326ah1de097h186068h8275bhz2dh2a8h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h162dh1631h1758h1898h18e1h1946h19b5h1ad9h1b0ah1b2fh1fb3h1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e23h1fe8h1ff5h1155h)
Received: from mail94-ch1 (localhost.localdomain [127.0.0.1]) by mail94-ch1
	(MessageSwitch) id 1378872267990041_467; Wed, 11 Sep 2013 04:04:27 +0000
	(UTC)
Received: from CH1EHSMHS042.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.234])	by mail94-ch1.bigfish.com (Postfix) with ESMTP id
	EDC6A160034
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 04:04:27 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS042.bigfish.com
	(10.43.69.251) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Wed, 11 Sep 2013 04:04:27 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-004.039d.mgd.msft.net (10.84.1.14) with Microsoft SMTP
	Server (TLS) id 14.3.158.2; Wed, 11 Sep 2013 04:04:26 +0000
Received: from sbuilder136.ap.freescale.net (sun.ap.freescale.net
	[10.192.208.136])	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with
	ESMTP id r8B44O60008413;	Tue, 10 Sep 2013 21:04:25 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 11 Sep 2013 12:04:21 +0800
Message-ID: <1378872261-3817-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: Chunrong Guo <B40290@freescale.com>
Subject: [Meta-security][PATCH 2/3] libdnet: add recipe
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
X-List-Received-Date: Wed, 11 Sep 2013 04:04:34 -0000
Content-Type: text/plain

From: Chunrong Guo <B40290@freescale.com>

     *dumb networking library
     *snort depends libdnet

Signed-off-by: Chunrong Guo <B40290@freescale.com>
---
 recipes-security/libdnet/libdnet_1.12.bb |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)
 create mode 100644 recipes-security/libdnet/libdnet_1.12.bb

diff --git a/recipes-security/libdnet/libdnet_1.12.bb b/recipes-security/libdnet/libdnet_1.12.bb
new file mode 100644
index 0000000..88b893b
--- /dev/null
+++ b/recipes-security/libdnet/libdnet_1.12.bb
@@ -0,0 +1,16 @@
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
+
+do_configure_prepend() {
+   cp ${S}/config/acinclude.m4 ${S}/
+}
-- 
1.7.5.4




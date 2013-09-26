Return-Path: <B40290@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe003.messaging.microsoft.com [216.32.180.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E92BE01624
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 20:41:57 -0700 (PDT)
Received: from mail133-co1-R.bigfish.com (10.243.78.251) by
	CO1EHSOBE033.bigfish.com (10.243.66.98) with Microsoft SMTP Server id
	14.1.225.22; Thu, 26 Sep 2013 03:41:55 +0000
Received: from mail133-co1 (localhost [127.0.0.1])	by
	mail133-co1-R.bigfish.com (Postfix) with ESMTP id B77454C0208	for
	<yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:41:55 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1de098h17326ah1de097h186068h8275bh8275dhz2dh2a8h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h162dh1631h1758h1898h18e1h1946h19b5h1ad9h1b0ah1b2fh1fb3h1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e23h1fe8h1ff5h1155h)
Received: from mail133-co1 (localhost.localdomain [127.0.0.1]) by mail133-co1
	(MessageSwitch) id 1380166914146683_25022;
	Thu, 26 Sep 2013 03:41:54 +0000 (UTC)
Received: from CO1EHSMHS002.bigfish.com (unknown [10.243.78.231])	by
	mail133-co1.bigfish.com (Postfix) with ESMTP id 201B2B40051	for
	<yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:41:54 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS002.bigfish.com
	(10.243.66.12) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Thu, 26 Sep 2013 03:41:53 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.3.158.2; Thu, 26 Sep 2013 03:41:52 +0000
Received: from sbuilder136.ap.freescale.net (sun.ap.freescale.net
	[10.192.208.136])	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP
	id r8Q3foow017653;	Wed, 25 Sep 2013 20:41:51 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 26 Sep 2013 11:41:48 +0800
Message-ID: <1380166908-8213-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: Chunrong Guo <B40290@freescale.com>
Subject: [Meta-security][PATCH V4] barnyard: add recipe
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
X-List-Received-Date: Thu, 26 Sep 2013 03:41:57 -0000
Content-Type: text/plain

From: Chunrong Guo <B40290@freescale.com>

  *Barnyard is a output system for Snort

Signed-off-by: Chunrong Guo <B40290@freescale.com>
---
 recipes-security/barnyard/barnyard_0.2.0.bb |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 recipes-security/barnyard/barnyard_0.2.0.bb

diff --git a/recipes-security/barnyard/barnyard_0.2.0.bb b/recipes-security/barnyard/barnyard_0.2.0.bb
new file mode 100644
index 0000000..09c5506
--- /dev/null
+++ b/recipes-security/barnyard/barnyard_0.2.0.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "Barnyard is a output system for Snort."
+HOMEPAGE = "http://www.snort.org/"
+LICENSE = "QPL-1.0"
+LIC_FILES_CHKSUM = "file://LICENSE.QPL;md5=1b8ff8c0012b5a2d647357699bf44b41"
+
+DEPENDS = "libpcap"
+
+SRC_URI = " ${GENTOO_MIRROR}/${BP}.tar.gz;name=tarball \
+          "
+SRC_URI[tarball.md5sum] = "be3283028cf414b52b220308ceb411e9"
+SRC_URI[tarball.sha256sum] = "09e0f8e095e79cfe70ea069d13e7d02521a504a1f400a45556a634dccfd31a3a"
+
+
+inherit autotools pkgconfig
+
+do_configure_prepend () {
+	#fix hardcoded include path
+	sed -i -e 's:extra_incl=/usr/include/pcap::g' ${S}/configure.in
+}
+
-- 
1.7.5.4




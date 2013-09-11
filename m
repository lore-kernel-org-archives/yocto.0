Return-Path: <B40290@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe006.messaging.microsoft.com [216.32.180.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21266E013B0
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 21:06:57 -0700 (PDT)
Received: from mail24-co1-R.bigfish.com (10.243.78.252) by
	CO1EHSOBE029.bigfish.com (10.243.66.94) with Microsoft SMTP Server id
	14.1.225.22; Wed, 11 Sep 2013 04:06:56 +0000
Received: from mail24-co1 (localhost [127.0.0.1])	by mail24-co1-R.bigfish.com
	(Postfix) with ESMTP id DFEAE7000E0	for <yocto@yoctoproject.org>;
	Wed, 11 Sep 2013 04:06:56 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1de098h17326ah1de097h186068h8275bh8275dhz2dh2a8h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h162dh1631h1758h1898h18e1h1946h19b5h1ad9h1b0ah1b2fh1fb3h1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e23h1fe8h1ff5h1155h)
Received: from mail24-co1 (localhost.localdomain [127.0.0.1]) by mail24-co1
	(MessageSwitch) id 1378872415685864_26087;
	Wed, 11 Sep 2013 04:06:55 +0000 (UTC)
Received: from CO1EHSMHS032.bigfish.com (unknown [10.243.78.231])	by
	mail24-co1.bigfish.com (Postfix) with ESMTP id A43FF60004D	for
	<yocto@yoctoproject.org>; Wed, 11 Sep 2013 04:06:55 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS032.bigfish.com
	(10.243.66.42) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Wed, 11 Sep 2013 04:06:55 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-001.039d.mgd.msft.net (10.84.1.13) with Microsoft SMTP
	Server (TLS) id 14.3.158.2; Wed, 11 Sep 2013 04:06:54 +0000
Received: from sbuilder136.ap.freescale.net (sun.ap.freescale.net
	[10.192.208.136])	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with
	ESMTP id r8B46pkt009279;	Tue, 10 Sep 2013 21:06:52 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 11 Sep 2013 12:06:48 +0800
Message-ID: <1378872408-16125-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: Chunrong Guo <B40290@freescale.com>
Subject: [Meta-security][PATCH 3/3] barnyard: add recipe
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
X-List-Received-Date: Wed, 11 Sep 2013 04:06:58 -0000
Content-Type: text/plain

From: Chunrong Guo <B40290@freescale.com>

   *Barnyard is a output system for Snort

Signed-off-by: Chunrong Guo <B40290@freescale.com>
---
 recipes-security/barnyard/barnyard_0.2.0.bb |   22 ++++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 recipes-security/barnyard/barnyard_0.2.0.bb

diff --git a/recipes-security/barnyard/barnyard_0.2.0.bb b/recipes-security/barnyard/barnyard_0.2.0.bb
new file mode 100644
index 0000000..a13ebdc
--- /dev/null
+++ b/recipes-security/barnyard/barnyard_0.2.0.bb
@@ -0,0 +1,22 @@
+DESCRIPTION = "Barnyard is a output system for Snort."
+HOMEPAGE = "http://www.snort.org/"
+LICENSE = "QPL"
+LIC_FILES_CHKSUM = "file://LICENSE.QPL;md5=1b8ff8c0012b5a2d647357699bf44b41"
+
+DEPENDS = "libpcap"
+RDEPENDS_${PN} = "libpcap"
+
+SRC_URI = " ${GENTOO_MIRROR}/${P}.tar.gz;name=tarball \
+          "
+SRC_URI[tarball.md5sum] = "be3283028cf414b52b220308ceb411e9"
+SRC_URI[tarball.sha256sum] = "09e0f8e095e79cfe70ea069d13e7d02521a504a1f400a45556a634dccfd31a3a"
+
+
+S = "${WORKDIR}/${P}"
+inherit autotools pkgconfig
+
+do_configure_prepend () {
+	#fix hardcoded include path
+	sed -i -e 's:extra_incl=-I/usr/include/pcap::g' ${S}/configure.in
+}
+
-- 
1.7.5.4




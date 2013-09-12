Return-Path: <B40290@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe003.messaging.microsoft.com [213.199.154.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5D85E0122C
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 23:21:33 -0700 (PDT)
Received: from mail15-am1-R.bigfish.com (10.3.201.245) by
	AM1EHSOBE006.bigfish.com (10.3.204.26) with Microsoft SMTP Server id
	14.1.225.22; Thu, 12 Sep 2013 06:21:31 +0000
Received: from mail15-am1 (localhost [127.0.0.1])	by mail15-am1-R.bigfish.com
	(Postfix) with ESMTP id 8E22618013B	for <yocto@yoctoproject.org>;
	Thu, 12 Sep 2013 06:21:31 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1de098h17326ah1de097h186068h8275bh8275dhz2dh2a8h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h162dh1631h1758h1898h18e1h1946h19b5h1ad9h1b0ah1b2fh1fb3h1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e23h1fe8h1ff5h1155h)
Received: from mail15-am1 (localhost.localdomain [127.0.0.1]) by mail15-am1
	(MessageSwitch) id 1378966889895576_17008;
	Thu, 12 Sep 2013 06:21:29 +0000 (UTC)
Received: from AM1EHSMHS004.bigfish.com (unknown [10.3.201.225])	by
	mail15-am1.bigfish.com (Postfix) with ESMTP id D69792A0059	for
	<yocto@yoctoproject.org>; Thu, 12 Sep 2013 06:21:29 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS004.bigfish.com
	(10.3.207.104) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Thu, 12 Sep 2013 06:21:29 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.3.158.2; Thu, 12 Sep 2013 06:21:27 +0000
Received: from sbuilder136.ap.freescale.net (sun.ap.freescale.net
	[10.192.208.136])	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with
	ESMTP id r8C6LNwe016210;	Wed, 11 Sep 2013 23:21:24 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 12 Sep 2013 14:21:19 +0800
Message-ID: <1378966879-4370-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: Chunrong Guo <B40290@freescale.com>
Subject: [Meta-security][PATCH v2] barnyard: add recipe
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
X-List-Received-Date: Thu, 12 Sep 2013 06:21:34 -0000
Content-Type: text/plain

From: Chunrong Guo <B40290@freescale.com>

  *Barnyard is a output system for Snort

Signed-off-by: Chunrong Guo <B40290@freescale.com>
---
 recipes-security/barnyard/barnyard_0.2.0.bb |   19 +++++++++++++++++++
 1 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 recipes-security/barnyard/barnyard_0.2.0.bb

diff --git a/recipes-security/barnyard/barnyard_0.2.0.bb b/recipes-security/barnyard/barnyard_0.2.0.bb
new file mode 100644
index 0000000..c5e0e78
--- /dev/null
+++ b/recipes-security/barnyard/barnyard_0.2.0.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "Barnyard is a output system for Snort."
+HOMEPAGE = "http://www.snort.org/"
+LICENSE = "QPL"
+LIC_FILES_CHKSUM = "file://LICENSE.QPL;md5=1b8ff8c0012b5a2d647357699bf44b41"
+
+DEPENDS = "libpcap"
+
+SRC_URI = " ${GENTOO_MIRROR}/${BP}.tar.gz;name=tarball \
+          "
+SRC_URI[tarball.md5sum] = "be3283028cf414b52b220308ceb411e9"
+SRC_URI[tarball.sha256sum] = "09e0f8e095e79cfe70ea069d13e7d02521a504a1f400a45556a634dccfd31a3a"
+
+inherit autotools pkgconfig
+
+do_configure_prepend () {
+	#fix hardcoded include path
+	sed -i -e 's:extra_incl=-I/usr/include/pcap::g' ${S}/configure.in
+}
+
-- 
1.7.5.4




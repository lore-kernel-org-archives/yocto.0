Return-Path: <B40290@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe004.messaging.microsoft.com [216.32.181.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E777E01627
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 20:36:31 -0700 (PDT)
Received: from mail137-ch1-R.bigfish.com (10.43.68.234) by
	CH1EHSOBE014.bigfish.com (10.43.70.64) with Microsoft SMTP Server id
	14.1.225.22; Thu, 26 Sep 2013 03:36:28 +0000
Received: from mail137-ch1 (localhost [127.0.0.1])	by
	mail137-ch1-R.bigfish.com (Postfix) with ESMTP id BB646E013F	for
	<yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:36:28 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1de098h17326ah1de097h186068h8275bh8275dhz2dh2a8h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h162dh1631h1758h1898h18e1h1946h19b5h1ad9h1b0ah1b2fh1fb3h1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e23h1fe8h1ff5h1155h)
Received: from mail137-ch1 (localhost.localdomain [127.0.0.1]) by mail137-ch1
	(MessageSwitch) id 138016658667363_3547;
	Thu, 26 Sep 2013 03:36:26 +0000 (UTC)
Received: from CH1EHSMHS036.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.250])	by mail137-ch1.bigfish.com (Postfix) with ESMTP id
	0BEB434005D	for <yocto@yoctoproject.org>;
	Thu, 26 Sep 2013 03:36:26 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS036.bigfish.com
	(10.43.69.245) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Thu, 26 Sep 2013 03:36:25 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-004.039d.mgd.msft.net (10.84.1.14) with Microsoft SMTP
	Server (TLS) id 14.3.158.2; Thu, 26 Sep 2013 03:36:24 +0000
Received: from sbuilder136.ap.freescale.net (sun.ap.freescale.net
	[10.192.208.136])	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP
	id r8Q3aMwZ012119;	Wed, 25 Sep 2013 20:36:23 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 26 Sep 2013 11:36:20 +0800
Message-ID: <1380166580-6917-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: Chunrong Guo <B40290@freescale.com>
Subject: [Meta-security][PATCH V3 3/3] barnyard: add recipe
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
X-List-Received-Date: Thu, 26 Sep 2013 03:36:31 -0000
Content-Type: text/plain

From: Chunrong Guo <B40290@freescale.com>

  *Barnyard is a output system for Snort

Signed-off-by: Chunrong Guo <B40290@freescale.com>
---
 recipes-security/barnyard/barnyard_0.2.0.bb |   21 +++++++++++++++++++++
 1 files changed, 21 insertions(+), 0 deletions(-)
 create mode 100644 recipes-security/barnyard/barnyard_0.2.0.bb

diff --git a/recipes-security/barnyard/barnyard_0.2.0.bb b/recipes-security/barnyard/barnyard_0.2.0.bb
new file mode 100644
index 0000000..e99d97a
--- /dev/null
+++ b/recipes-security/barnyard/barnyard_0.2.0.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "Barnyard is a output system for Snort."
+HOMEPAGE = "http://www.snort.org/"
+LICENSE = "QPL-1.0"
+LIC_FILES_CHKSUM = "file://LICENSE.QPL;md5=1b8ff8c0012b5a2d647357699bf44b41"
+
+DEPENDS = "libpcap"
+RDEPENDS_${PN} = "libpcap"
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




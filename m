Return-Path: <B19537@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe004.messaging.microsoft.com [65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26E29E01474
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:49:49 -0700 (PDT)
Received: from mail163-tx2-R.bigfish.com (10.9.14.246) by
	TX2EHSOBE003.bigfish.com (10.9.40.23) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:49:48 +0000
Received: from mail163-tx2 (localhost [127.0.0.1])	by
	mail163-tx2-R.bigfish.com (Postfix) with ESMTP id 844A61E00B5	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:48 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzc857hzz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail163-tx2 (localhost.localdomain [127.0.0.1]) by mail163-tx2
	(MessageSwitch) id 1347432587344614_18743;
	Wed, 12 Sep 2012 06:49:47 +0000 (UTC)
Received: from TX2EHSMHS043.bigfish.com (unknown [10.9.14.242])	by
	mail163-tx2.bigfish.com (Postfix) with ESMTP id 45026220046	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:47 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS043.bigfish.com
	(10.9.99.143) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:49:47 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:49:46 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQO025013;
	Tue, 11 Sep 2012 23:49:43 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:20 +0800
Message-ID: <1347433590-8481-6-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 06/16] ethtool: add FSL specific patch
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
X-List-Received-Date: Wed, 12 Sep 2012 06:49:49 -0000
Content-Type: text/plain

From: Zhenhua Luo <b19537@freescale.com>

Signed-off-by: Zhenhua Luo <b19537@freescale.com>
---
 ...ool-3.0-Enable-nfc-rx-flow-hashing-on-SPI.patch |   95 ++++++++++++++++++++
 recipes-extended/ethtool/ethtool_3.0.bb            |    7 +-
 2 files changed, 101 insertions(+), 1 deletion(-)
 create mode 100644 recipes-extended/ethtool/ethtool-3.0/ethtool-3.0-Enable-nfc-rx-flow-hashing-on-SPI.patch

diff --git a/recipes-extended/ethtool/ethtool-3.0/ethtool-3.0-Enable-nfc-rx-flow-hashing-on-SPI.patch b/recipes-extended/ethtool/ethtool-3.0/ethtool-3.0-Enable-nfc-rx-flow-hashing-on-SPI.patch
new file mode 100644
index 0000000..216e3b4
--- /dev/null
+++ b/recipes-extended/ethtool/ethtool-3.0/ethtool-3.0-Enable-nfc-rx-flow-hashing-on-SPI.patch
@@ -0,0 +1,95 @@
+From patchwork Thu Aug 30 15:44:09 2012
+Content-Type: text/plain; charset="utf-8"
+MIME-Version: 1.0
+Content-Transfer-Encoding: 7bit
+Subject: [SDK1.3] ethtool-3.0: Enable nfc rx-flow hashing on SPI
+Date: Thu, 30 Aug 2012 21:44:09 -0000
+From: Claudiu Manoil <claudiu.manoil@freescale.com>
+X-Patchwork-Id: 25852
+
+This makes it possible to enable hashing of AH or ESP flows
+(IPSEC) based on their SPI (Security Parameter Index) field.
+
+Applies on top of (ethtool v3.0):
+git.kernel.org/pub/scm/network/ethtool/ethtool.git
+commit-
+"a6fc65b Release version 3.0."
+
+Signed-off-by: Pankaj Chauhan <pankaj.chauhan@freescale.com>
+Signed-off-by: Claudiu Manoil <claudiu.manoil@freescale.com>
+---
+ ethtool-copy.h |    1 +
+ ethtool.8.in   |    1 +
+ ethtool.c      |   14 +++++++++++---
+ 3 files changed, 13 insertions(+), 3 deletions(-)
+
+diff --git a/ethtool-copy.h b/ethtool-copy.h
+index c7a18f7..cf20158 100644
+--- a/ethtool-copy.h
++++ b/ethtool-copy.h
+@@ -888,6 +888,7 @@ enum ethtool_sfeatures_retval_bits {
+ #define	RXH_IP_DST	(1 << 5)
+ #define	RXH_L4_B_0_1	(1 << 6) /* src port in case of TCP/UDP/SCTP */
+ #define	RXH_L4_B_2_3	(1 << 7) /* dst port in case of TCP/UDP/SCTP */
++#define	RXH_AH_ESP_SPI	(1 << 8) /* SPI field, for AH/ESP flows */
+ #define	RXH_DISCARD	(1 << 31)
+ 
+ #define	RX_CLS_FLOW_DISC	0xffffffffffffffffULL
+diff --git a/ethtool.8.in b/ethtool.8.in
+index 7a0bd43..a640317 100644
+--- a/ethtool.8.in
++++ b/ethtool.8.in
+@@ -601,6 +601,7 @@ s	Hash on the IP source address of the rx packet.
+ d	Hash on the IP destination address of the rx packet.
+ f	Hash on bytes 0 and 1 of the Layer 4 header of the rx packet.
+ n	Hash on bytes 2 and 3 of the Layer 4 header of the rx packet.
++S	Hash on the SPI field (4 bytes), for AH/ESP packets.
+ r	T{
+ Discard all packets of this flow type. When this option is set, all
+ other options are ignored.
+diff --git a/ethtool.c b/ethtool.c
+index 943dfb7..bb9d592 100644
+--- a/ethtool.c
++++ b/ethtool.c
+@@ -231,7 +231,7 @@ static struct option {
+     { "-N", "--config-nfc", MODE_SNFC, "Configure Rx network flow "
+ 		"classification options",
+ 		"		[ rx-flow-hash tcp4|udp4|ah4|esp4|sctp4|"
+-		"tcp6|udp6|ah6|esp6|sctp6 m|v|t|s|d|f|n|r... ]\n" },
++		"tcp6|udp6|ah6|esp6|sctp6 m|v|t|s|d|f|n|S|r... ]\n" },
+     { "-x", "--show-rxfh-indir", MODE_GRXFHINDIR, "Show Rx flow hash "
+ 		"indirection" },
+     { "-X", "--set-rxfh-indir", MODE_SRXFHINDIR, "Set Rx flow hash indirection",
+@@ -728,8 +728,10 @@ static int rxflow_str_to_type(const char *str)
+ 		flow_type = TCP_V4_FLOW;
+ 	else if (!strcmp(str, "udp4"))
+ 		flow_type = UDP_V4_FLOW;
+-	else if (!strcmp(str, "ah4") || !strcmp(str, "esp4"))
+-		flow_type = AH_ESP_V4_FLOW;
++	else if (!strcmp(str, "ah4"))
++		flow_type = AH_V4_FLOW;
++	else if (!strcmp(str, "esp4"))
++		flow_type = ESP_V4_FLOW;
+ 	else if (!strcmp(str, "sctp4"))
+ 		flow_type = SCTP_V4_FLOW;
+ 	else if (!strcmp(str, "tcp6"))
+@@ -1538,6 +1540,9 @@ static int parse_rxfhashopts(char *optstr, u32 *data)
+ 			case 'n':
+ 				*data |= RXH_L4_B_2_3;
+ 				break;
++			case 'S':
++				*data |= RXH_AH_ESP_SPI;
++				break;
+ 			case 'r':
+ 				*data |= RXH_DISCARD;
+ 				break;
+@@ -1577,6 +1582,9 @@ static char *unparse_rxfhashopts(u64 opts)
+ 		if (opts & RXH_L4_B_2_3) {
+ 			strcat(buf, "L4 bytes 2 & 3 [TCP/UDP dst port]\n");
+ 		}
++		if (opts & RXH_AH_ESP_SPI) {
++			strcat(buf, "SPI field (AH/ESP header)\n");
++		}
+ 	} else {
+ 		sprintf(buf, "None");
+ 	}
diff --git a/recipes-extended/ethtool/ethtool_3.0.bb b/recipes-extended/ethtool/ethtool_3.0.bb
index cc4862d..ca73055 100644
--- a/recipes-extended/ethtool/ethtool_3.0.bb
+++ b/recipes-extended/ethtool/ethtool_3.0.bb
@@ -5,7 +5,12 @@ SECTION = "console/network"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-SRC_URI = "${KERNELORG_MIRROR}/software/network/ethtool/ethtool-${PV}.tar.gz"
+PR = "r1"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/ethtool-3.0:"
+
+SRC_URI = "${KERNELORG_MIRROR}/software/network/ethtool/ethtool-${PV}.tar.gz \
+    file://ethtool-3.0-Enable-nfc-rx-flow-hashing-on-SPI.patch "
 SRC_URI[md5sum] = "a339cbdcbe1c1fbe377c36d84231bda6"
 SRC_URI[sha256sum] = "9b9caffc0ee3567b607618ca5bc85505230d66cd9d5caa1c333760b3885f0ae4"
 
-- 
1.7.9.5




Return-Path: <B19537@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe004.messaging.microsoft.com [216.32.180.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8288BE0147D
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:49:51 -0700 (PDT)
Received: from mail267-va3-R.bigfish.com (10.7.14.237) by
	VA3EHSOBE008.bigfish.com (10.7.40.28) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:49:50 +0000
Received: from mail267-va3 (localhost [127.0.0.1])	by
	mail267-va3-R.bigfish.com (Postfix) with ESMTP id E33CB180009E	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:50 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz17326ah8275bh8275dhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail267-va3 (localhost.localdomain [127.0.0.1]) by mail267-va3
	(MessageSwitch) id 1347432589293578_21228;
	Wed, 12 Sep 2012 06:49:49 +0000 (UTC)
Received: from VA3EHSMHS027.bigfish.com (unknown [10.7.14.241])	by
	mail267-va3.bigfish.com (Postfix) with ESMTP id 4407F1240047	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:49 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS027.bigfish.com
	(10.7.99.37) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:49:44 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:49:43 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQN025013;
	Tue, 11 Sep 2012 23:49:40 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:19 +0800
Message-ID: <1347433590-8481-5-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 05/16] ethtool: add ethtool-3.0
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
X-List-Received-Date: Wed, 12 Sep 2012 06:49:51 -0000
Content-Type: text/plain

From: Zhenhua Luo <b19537@freescale.com>

    To match the kernel version of FSL SDK

Signed-off-by: Zhenhua Luo <b19537@freescale.com>
---
 recipes-extended/ethtool/ethtool_3.0.bb |   12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 recipes-extended/ethtool/ethtool_3.0.bb

diff --git a/recipes-extended/ethtool/ethtool_3.0.bb b/recipes-extended/ethtool/ethtool_3.0.bb
new file mode 100644
index 0000000..cc4862d
--- /dev/null
+++ b/recipes-extended/ethtool/ethtool_3.0.bb
@@ -0,0 +1,12 @@
+SUMMARY = "Display or change ethernet card settings"
+DESCRIPTION = "A small utility for examining and tuning the settings of your ethernet-based network interfaces."
+HOMEPAGE = "http://www.kernel.org/pub/software/network/ethtool/"
+SECTION = "console/network"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
+SRC_URI = "${KERNELORG_MIRROR}/software/network/ethtool/ethtool-${PV}.tar.gz"
+SRC_URI[md5sum] = "a339cbdcbe1c1fbe377c36d84231bda6"
+SRC_URI[sha256sum] = "9b9caffc0ee3567b607618ca5bc85505230d66cd9d5caa1c333760b3885f0ae4"
+
+inherit autotools
-- 
1.7.9.5




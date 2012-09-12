Return-Path: <B19537@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe003.messaging.microsoft.com [65.55.88.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF5E5E0147F
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:49:54 -0700 (PDT)
Received: from mail209-tx2-R.bigfish.com (10.9.14.237) by
	TX2EHSOBE012.bigfish.com (10.9.40.32) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:49:54 +0000
Received: from mail209-tx2 (localhost [127.0.0.1])	by
	mail209-tx2-R.bigfish.com (Postfix) with ESMTP id 4D4CC2C0098	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:54 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail209-tx2 (localhost.localdomain [127.0.0.1]) by mail209-tx2
	(MessageSwitch) id 1347432592750138_13585;
	Wed, 12 Sep 2012 06:49:52 +0000 (UTC)
Received: from TX2EHSMHS001.bigfish.com (unknown [10.9.14.251])	by
	mail209-tx2.bigfish.com (Postfix) with ESMTP id B4DBCD80042	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:52 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS001.bigfish.com
	(10.9.99.101) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:49:49 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:49:48 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQP025013;
	Tue, 11 Sep 2012 23:49:45 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:21 +0800
Message-ID: <1347433590-8481-7-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 07/16] netbase: add optional parameter to control auto dhcp for eth0
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
X-List-Received-Date: Wed, 12 Sep 2012 06:49:55 -0000
Content-Type: text/plain

From: Ting Liu <b28495@freescale.com>

Signed-off-by: Ting Liu <b28495@freescale.com>
---
 recipes-append/netbase/netbase_4.47.bbappend |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/recipes-append/netbase/netbase_4.47.bbappend b/recipes-append/netbase/netbase_4.47.bbappend
index 837cd20..36fe1a2 100644
--- a/recipes-append/netbase/netbase_4.47.bbappend
+++ b/recipes-append/netbase/netbase_4.47.bbappend
@@ -1,10 +1,15 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
+AUTO_ETH0 = '${@base_conditional("ETH0_AUTO_DHCP", "0", "0", "1", d)}'
+
 SRC_URI += "file://71-fsl-dpaa-persistent-networking.rules"
 
 do_install_append () {
 	install -d ${D}${sysconfdir}/udev/rules.d/
 	install -m 0644 ${WORKDIR}/71-fsl-dpaa-persistent-networking.rules ${D}${sysconfdir}/udev/rules.d
+    if [ "0" = "${AUTO_ETH0}" ]; then
+        sed -i 's,auto eth0,#auto eth0,g' ${D}${sysconfdir}/network/interfaces
+    fi
 }
 
-PR .= "+${DISTRO}"
+PR .= "+${DISTRO}.1"
-- 
1.7.9.5




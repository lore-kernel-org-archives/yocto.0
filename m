Return-Path: <B19537@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe001.messaging.microsoft.com [65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 310EAE01300
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 02:55:27 -0700 (PDT)
Received: from mail44-tx2-R.bigfish.com (10.9.14.237) by
	TX2EHSOBE014.bigfish.com (10.9.40.34) with Microsoft SMTP Server id
	14.1.225.23; Wed, 17 Oct 2012 09:55:27 +0000
Received: from mail44-tx2 (localhost [127.0.0.1])	by mail44-tx2-R.bigfish.com
	(Postfix) with ESMTP id 081081000D3	for <yocto@yoctoproject.org>;
	Wed, 17 Oct 2012 09:55:27 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1155h)
Received: from mail44-tx2 (localhost.localdomain [127.0.0.1]) by mail44-tx2
	(MessageSwitch) id 1350467726701580_7294;
	Wed, 17 Oct 2012 09:55:26 +0000 (UTC)
Received: from TX2EHSMHS043.bigfish.com (unknown [10.9.14.250])	by
	mail44-tx2.bigfish.com (Postfix) with ESMTP id A82E2E0046	for
	<yocto@yoctoproject.org>; Wed, 17 Oct 2012 09:55:26 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS043.bigfish.com
	(10.9.99.143) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 17 Oct 2012 09:55:26 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-004.039d.mgd.msft.net (10.84.1.14) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 17 Oct 2012 09:55:25 +0000
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP id q9H9tNH5024391;
	Wed, 17 Oct 2012 02:55:23 -0700
From: Zhenhua Luo <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 17 Oct 2012 18:15:11 +0800
Message-ID: <1350468911-10931-1-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: B29882@freescale.com
Subject: [meta-fsl-ppc] hypervisor: add missing space character for PACKAGES_prepend
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
X-List-Received-Date: Wed, 17 Oct 2012 09:55:28 -0000
Content-Type: text/plain

Signed-off-by: Zhenhua Luo <b19537@freescale.com>
---
 recipes-tools/embedded-hv/hypervisor_git.bb |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-tools/embedded-hv/hypervisor_git.bb b/recipes-tools/embedded-hv/hypervisor_git.bb
index 50697fc..3a3f605 100644
--- a/recipes-tools/embedded-hv/hypervisor_git.bb
+++ b/recipes-tools/embedded-hv/hypervisor_git.bb
@@ -3,6 +3,8 @@ SECTION = "embedded-hv"
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://README;endline=22;md5=0655bbc3b7d7166c30c87208b4e23cf0"
 
+PR = "r1"
+
 DEPENDS = "u-boot-mkimage-native"
 
 inherit deploy
@@ -74,6 +76,6 @@ do_deploy_append() {
 }
 
 ALLOW_EMPTY_${PN} = "1"
-PACKAGES_prepend = "${PN}-image ${PN}-partman"
+PACKAGES_prepend = "${PN}-image ${PN}-partman "
 FILES_${PN}-image = "/boot/"
 FILES_${PN}-partman = "${bindir}/partman"
-- 
1.7.9.5




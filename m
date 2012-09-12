Return-Path: <B19537@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe005.messaging.microsoft.com [216.32.180.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDEC2E0148E
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:50:08 -0700 (PDT)
Received: from mail263-va3-R.bigfish.com (10.7.14.249) by
	VA3EHSOBE006.bigfish.com (10.7.40.26) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:50:07 +0000
Received: from mail263-va3 (localhost [127.0.0.1])	by
	mail263-va3-R.bigfish.com (Postfix) with ESMTP id B8D77F800C9	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:50:07 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail263-va3 (localhost.localdomain [127.0.0.1]) by mail263-va3
	(MessageSwitch) id 1347432605293442_8602;
	Wed, 12 Sep 2012 06:50:05 +0000 (UTC)
Received: from VA3EHSMHS003.bigfish.com (unknown [10.7.14.246])	by
	mail263-va3.bigfish.com (Postfix) with ESMTP id 3ADFD480045	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:50:05 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS003.bigfish.com
	(10.7.99.13) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:50:04 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:50:03 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQV025013;
	Tue, 11 Sep 2012 23:50:01 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:27 +0800
Message-ID: <1347433590-8481-13-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Matthew McClintock <msm@freescale.com>
Subject: [meta-fsl-ppc 13/16] Update recipes to use release tags instead of SHA
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
X-List-Received-Date: Wed, 12 Sep 2012 06:50:09 -0000
Content-Type: text/plain

From: Matthew McClintock <msm@freescale.com>

Signed-off-by: Matthew McClintock <msm@freescale.com>
---
 recipes-tools/hv-cfg/hv-cfg_git.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-tools/hv-cfg/hv-cfg_git.bb b/recipes-tools/hv-cfg/hv-cfg_git.bb
index e137575..d3786c5 100644
--- a/recipes-tools/hv-cfg/hv-cfg_git.bb
+++ b/recipes-tools/hv-cfg/hv-cfg_git.bb
@@ -18,7 +18,7 @@ PACKAGE_ARCH = "${MACHINE_ARCH}"
 
 inherit deploy
 
-SRCREV = "102ab848d94f3c04f364ed273d0e00b21b0266f4"
+SRCREV = "v1.2"
 SRC_URI = "git://git.freescale.com/ppc/sdk/hv-cfg.git"
 
 S = "${WORKDIR}/git"
-- 
1.7.9.5




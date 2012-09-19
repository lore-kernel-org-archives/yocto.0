Return-Path: <B38018@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe001.messaging.microsoft.com [216.32.180.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4988BE013E6
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 14:52:39 -0700 (PDT)
Received: from mail239-va3-R.bigfish.com (10.7.14.238) by
	VA3EHSOBE004.bigfish.com (10.7.40.24) with Microsoft SMTP Server id
	14.1.225.23; Wed, 19 Sep 2012 21:52:38 +0000
Received: from mail239-va3 (localhost [127.0.0.1])	by
	mail239-va3-R.bigfish.com (Postfix) with ESMTP id 6795D5801A9;
	Wed, 19 Sep 2012 21:52:38 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12a9h12bdh12e5h1155h)
Received: from mail239-va3 (localhost.localdomain [127.0.0.1]) by mail239-va3
	(MessageSwitch) id 1348091556845806_26748;
	Wed, 19 Sep 2012 21:52:36 +0000 (UTC)
Received: from VA3EHSMHS023.bigfish.com (unknown [10.7.14.240])	by
	mail239-va3.bigfish.com (Postfix) with ESMTP id CC4FAA60045;
	Wed, 19 Sep 2012 21:52:36 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS023.bigfish.com
	(10.7.99.33) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 19 Sep 2012 21:52:36 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 19 Sep 2012 16:52:35 -0500
Received: from devbox.am.freescale.net (devbox.am.freescale.net
	[10.112.102.32])	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP
	id q8JLqWHI019129;	Wed, 19 Sep 2012 14:52:34 -0700
From: Adrian Alonso <aalonso@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 19 Sep 2012 16:51:56 -0500
Message-ID: <1348091516-4221-4-git-send-email-aalonso@freescale.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <1348091516-4221-1-git-send-email-aalonso@freescale.com>
References: <yocto@yoctoproject.org>
	<1348091516-4221-1-git-send-email-aalonso@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-Mailman-Approved-At: Wed, 19 Sep 2012 14:56:00 -0700
Cc: florin.sarbu@windriver.com, Adrian Alonso <aalonso@freescale.com>
Subject: [meta-ivi][PATCH 3/3] layer-management: fix machine search string for imx6 targets
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
X-List-Received-Date: Wed, 19 Sep 2012 21:52:39 -0000
Content-Type: text/plain

* Fix machine search string for imx6 targets
  Likely all imx6 target boards will be prefixed with
  "imx6", this change allows to append -DLINUX flag.

Signed-off-by: Adrian Alonso <aalonso@freescale.com>
---
 recipes-graphics/layer-management/layer-management_0.9.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/layer-management/layer-management_0.9.5.bb b/recipes-graphics/layer-management/layer-management_0.9.5.bb
index 90ad25c..71d8646 100644
--- a/recipes-graphics/layer-management/layer-management_0.9.5.bb
+++ b/recipes-graphics/layer-management/layer-management_0.9.5.bb
@@ -17,7 +17,7 @@ SRC_URI = "git://git.genivi.org/srv/git/layer_management;protocol=git \
           "
 # Needed this for imx6 boards to use precompiled EGL libraries
 python () {
-    if ((d.getVar("MACHINE", True) or "").find("imx6sabre") != -1):
+    if ((d.getVar("MACHINE", True) or "").find("imx6") != -1):
 	flags = d.getVar("OECMAKE_CXX_FLAGS", True)
 	flags += " -DLINUX"
 	d.setVar('OECMAKE_CXX_FLAGS', flags)
-- 
1.7.11.4




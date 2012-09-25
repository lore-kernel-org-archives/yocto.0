Return-Path: <B38018@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe002.messaging.microsoft.com [216.32.180.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11C6BE00346
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 13:38:10 -0700 (PDT)
Received: from mail38-co1-R.bigfish.com (10.243.78.240) by
	CO1EHSOBE002.bigfish.com (10.243.66.65) with Microsoft SMTP Server id
	14.1.225.23; Tue, 25 Sep 2012 20:38:09 +0000
Received: from mail38-co1 (localhost [127.0.0.1])	by mail38-co1-R.bigfish.com
	(Postfix) with ESMTP id 66A09A0009E;
	Tue, 25 Sep 2012 20:38:09 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1155h)
Received: from mail38-co1 (localhost.localdomain [127.0.0.1]) by mail38-co1
	(MessageSwitch) id 1348605487951011_8441;
	Tue, 25 Sep 2012 20:38:07 +0000 (UTC)
Received: from CO1EHSMHS007.bigfish.com (unknown [10.243.78.246])	by
	mail38-co1.bigfish.com (Postfix) with ESMTP id E67CA480063;
	Tue, 25 Sep 2012 20:38:07 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS007.bigfish.com
	(10.243.66.17) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 25 Sep 2012 20:38:06 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Tue, 25 Sep 2012 15:38:04 -0500
Received: from devbox.am.freescale.net (devbox.am.freescale.net
	[10.112.102.32])	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP
	id q8PKc3he004608;	Tue, 25 Sep 2012 13:38:03 -0700
From: Adrian Alonso <aalonso@freescale.com>
To: <yocto@yoctoproject.org>
Date: Tue, 25 Sep 2012 15:37:15 -0500
Message-ID: <1348605435-2857-1-git-send-email-aalonso@freescale.com>
X-Mailer: git-send-email 1.7.11.4
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Florin.Sarbu@windriver.com
Subject: [meta-ivi][PATCH] layer-management: fix machine search string for imx6 targets
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
X-List-Received-Date: Tue, 25 Sep 2012 20:38:10 -0000
Content-Type: text/plain

* Fix machine search string for imx6 targets
  Likely all imx6 target boards will be prefixed with
  "imx6", this change allows to append -DLINUX flag.

Signed-off-by: Adrian Alonso <aalonso@freescale.com>
---
 recipes-graphics/layer-management/layer-management_0.9.7.bb | 2 +-
 recipes-graphics/layer-management/layer-management_git.bb   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-graphics/layer-management/layer-management_0.9.7.bb b/recipes-graphics/layer-management/layer-management_0.9.7.bb
index ec57db1..34d6b4a 100644
--- a/recipes-graphics/layer-management/layer-management_0.9.7.bb
+++ b/recipes-graphics/layer-management/layer-management_0.9.7.bb
@@ -21,7 +21,7 @@ SRC_URI = "git://git.genivi.org/srv/git/layer_management;protocol=git \
           "
 # Needed this for imx6 boards to use precompiled EGL libraries
 python () {
-    if ((d.getVar("MACHINE", True) or "").find("imx6sabre") != -1):
+    if ((d.getVar("MACHINE", True) or "").find("imx6") != -1):
 	flags = d.getVar("OECMAKE_CXX_FLAGS", True)
 	flags += " -DLINUX"
 	d.setVar('OECMAKE_CXX_FLAGS', flags)
diff --git a/recipes-graphics/layer-management/layer-management_git.bb b/recipes-graphics/layer-management/layer-management_git.bb
index 10d9d10..394b93a 100644
--- a/recipes-graphics/layer-management/layer-management_git.bb
+++ b/recipes-graphics/layer-management/layer-management_git.bb
@@ -23,7 +23,7 @@ SRC_URI = "git://git.genivi.org/srv/git/layer_management;protocol=git \
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




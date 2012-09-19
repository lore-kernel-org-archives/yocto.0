Return-Path: <B38018@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe003.messaging.microsoft.com [213.199.154.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A95E013F9
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 14:52:49 -0700 (PDT)
Received: from mail109-db3-R.bigfish.com (10.3.81.226) by
	DB3EHSOBE006.bigfish.com (10.3.84.26) with Microsoft SMTP Server id
	14.1.225.23; Wed, 19 Sep 2012 21:52:44 +0000
Received: from mail109-db3 (localhost [127.0.0.1])	by
	mail109-db3-R.bigfish.com (Postfix) with ESMTP id 28E8A2000AC;
	Wed, 19 Sep 2012 21:52:44 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12a9h12bdh12e5h1155h)
Received: from mail109-db3 (localhost.localdomain [127.0.0.1]) by mail109-db3
	(MessageSwitch) id 1348091563312990_9266;
	Wed, 19 Sep 2012 21:52:43 +0000 (UTC)
Received: from DB3EHSMHS003.bigfish.com (unknown [10.3.81.230])	by
	mail109-db3.bigfish.com (Postfix) with ESMTP id 47EAC20073;
	Wed, 19 Sep 2012 21:52:43 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS003.bigfish.com
	(10.3.87.103) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 19 Sep 2012 21:52:39 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 19 Sep 2012 16:52:34 -0500
Received: from devbox.am.freescale.net (devbox.am.freescale.net
	[10.112.102.32])	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP
	id q8JLqWHG019129;	Wed, 19 Sep 2012 14:52:33 -0700
From: Adrian Alonso <aalonso@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 19 Sep 2012 16:51:54 -0500
Message-ID: <1348091516-4221-2-git-send-email-aalonso@freescale.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <1348091516-4221-1-git-send-email-aalonso@freescale.com>
References: <yocto@yoctoproject.org>
	<1348091516-4221-1-git-send-email-aalonso@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-Mailman-Approved-At: Wed, 19 Sep 2012 14:56:00 -0700
Cc: florin.sarbu@windriver.com, Adrian Alonso <aalonso@freescale.com>
Subject: [meta-ivi][PATCH 1/3] pormap: append portmap.service
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
X-List-Received-Date: Wed, 19 Sep 2012 21:52:50 -0000
Content-Type: text/plain

* Remove append conditional for vexpressa9 target
* Allow different targets to append this service

Signed-off-by: Adrian Alonso <aalonso@freescale.com>
---
 recipes-connectivity/portmap/portmap_6.0.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-connectivity/portmap/portmap_6.0.bbappend b/recipes-connectivity/portmap/portmap_6.0.bbappend
index a8c6ed5..8c0e4ec 100644
--- a/recipes-connectivity/portmap/portmap_6.0.bbappend
+++ b/recipes-connectivity/portmap/portmap_6.0.bbappend
@@ -1,7 +1,7 @@
 # Find "files" directory
 FILESEXTRAPATHS := "${THISDIR}/files"
 
-SRC_URI_append_vexpressa9 = " file://portmap.service"
+SRC_URI_append = " file://portmap.service"
 
 
 PACKAGES =+ "${PN}-systemd"
-- 
1.7.11.4




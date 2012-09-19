Return-Path: <B38018@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe006.messaging.microsoft.com [213.199.154.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0ADCE013F7
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 14:52:49 -0700 (PDT)
Received: from mail90-db3-R.bigfish.com (10.3.81.253) by
	DB3EHSOBE003.bigfish.com (10.3.84.23) with Microsoft SMTP Server id
	14.1.225.23; Wed, 19 Sep 2012 21:52:46 +0000
Received: from mail90-db3 (localhost [127.0.0.1])	by mail90-db3-R.bigfish.com
	(Postfix) with ESMTP id 4F50A18005E;
	Wed, 19 Sep 2012 21:52:46 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12a9h12bdh12e5h1155h)
Received: from mail90-db3 (localhost.localdomain [127.0.0.1]) by mail90-db3
	(MessageSwitch) id 1348091564422921_28711;
	Wed, 19 Sep 2012 21:52:44 +0000 (UTC)
Received: from DB3EHSMHS003.bigfish.com (unknown [10.3.81.251])	by
	mail90-db3.bigfish.com (Postfix) with ESMTP id 651E6320051;
	Wed, 19 Sep 2012 21:52:44 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS003.bigfish.com
	(10.3.87.103) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 19 Sep 2012 21:52:41 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 19 Sep 2012 16:52:34 -0500
Received: from devbox.am.freescale.net (devbox.am.freescale.net
	[10.112.102.32])	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP
	id q8JLqWHH019129;	Wed, 19 Sep 2012 14:52:34 -0700
From: Adrian Alonso <aalonso@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 19 Sep 2012 16:51:55 -0500
Message-ID: <1348091516-4221-3-git-send-email-aalonso@freescale.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <1348091516-4221-1-git-send-email-aalonso@freescale.com>
References: <yocto@yoctoproject.org>
	<1348091516-4221-1-git-send-email-aalonso@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-Mailman-Approved-At: Wed, 19 Sep 2012 14:56:00 -0700
Cc: florin.sarbu@windriver.com, Adrian Alonso <aalonso@freescale.com>
Subject: [meta-ivi][PATCH 2/3] wpa-supplicant: append wpa-supplicant.service
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
 recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bbappend b/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bbappend
index 7f40119..e9c2e94 100644
--- a/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bbappend
+++ b/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bbappend
@@ -1,7 +1,7 @@
 # Find "files" directory
 FILESEXTRAPATHS := "${THISDIR}/files"
 
-SRC_URI_append_vexpressa9 = " file://wpa_supplicant.service"
+SRC_URI_append = " file://wpa_supplicant.service"
 
 PACKAGES =+ "${PN}-systemd"
 
-- 
1.7.11.4




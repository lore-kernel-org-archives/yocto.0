Return-Path: <B40290@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe002.messaging.microsoft.com [216.32.180.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82AACE0133F
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 23:17:23 -0700 (PDT)
Received: from mail164-va3-R.bigfish.com (10.7.14.248) by
	VA3EHSOBE008.bigfish.com (10.7.40.28) with Microsoft SMTP Server id
	14.1.225.23; Tue, 30 Oct 2012 06:17:21 +0000
Received: from mail164-va3 (localhost [127.0.0.1])	by
	mail164-va3-R.bigfish.com (Postfix) with ESMTP id D09354E007D	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 06:17:21 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h1155h)
Received: from mail164-va3 (localhost.localdomain [127.0.0.1]) by mail164-va3
	(MessageSwitch) id 135157784075809_23970;
	Tue, 30 Oct 2012 06:17:20 +0000 (UTC)
Received: from VA3EHSMHS041.bigfish.com (unknown [10.7.14.243])	by
	mail164-va3.bigfish.com (Postfix) with ESMTP id 0520D40004E	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 06:17:20 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS041.bigfish.com
	(10.7.99.51) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 30 Oct 2012 06:17:16 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server (TLS) id 14.2.318.3; Tue, 30 Oct 2012 06:17:15 +0000
Received: from right.am.freescale.net (right.am.freescale.net [10.82.176.228])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	q9U6HE8v018573; Mon, 29 Oct 2012 23:17:15 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Tue, 30 Oct 2012 01:17:04 -0500
Message-ID: <1351577824-1988-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.9.7
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Chunrong Guo <b40290@freescale.com>
Subject: [meta-fsl-ppc master] netbase_5.0.bbappend: SRC_URI_append_fsl instead of SRC_URI_fsl
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
X-List-Received-Date: Tue, 30 Oct 2012 06:17:23 -0000
Content-Type: text/plain

From: Chunrong Guo <b40290@freescale.com>

      fix error: Function failed: netbase: LIC_FILES_CHKSUM
       points to an invalid file

Signed-off-by: Chunrong Guo <b40290@freescale.com>
---
 recipes-append/netbase/netbase_5.0.bbappend |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-append/netbase/netbase_5.0.bbappend b/recipes-append/netbase/netbase_5.0.bbappend
index 6660058..dc0fd0a 100644
--- a/recipes-append/netbase/netbase_5.0.bbappend
+++ b/recipes-append/netbase/netbase_5.0.bbappend
@@ -1,6 +1,6 @@
 FILESEXTRAPATHS_prepend_fsl := "${THISDIR}/files:"
 
-SRC_URI_fsl += "file://71-fsl-dpaa-persistent-networking.rules"
+SRC_URI_append_fsl += "file://71-fsl-dpaa-persistent-networking.rules"
 
 do_install_append_fsl () {
 	install -d ${D}${sysconfdir}/udev/rules.d/
-- 
1.7.9.7




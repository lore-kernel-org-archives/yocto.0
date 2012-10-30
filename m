Return-Path: <B40290@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe002.messaging.microsoft.com [213.199.154.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD1D3E0133F
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 21:37:04 -0700 (PDT)
Received: from mail64-am1-R.bigfish.com (10.3.201.228) by
	AM1EHSOBE006.bigfish.com (10.3.204.26) with Microsoft SMTP Server id
	14.1.225.23; Tue, 30 Oct 2012 04:37:02 +0000
Received: from mail64-am1 (localhost [127.0.0.1])	by mail64-am1-R.bigfish.com
	(Postfix) with ESMTP id AAD94803C0	for <yocto@yoctoproject.org>;
	Tue, 30 Oct 2012 04:37:02 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h1155h)
Received: from mail64-am1 (localhost.localdomain [127.0.0.1]) by mail64-am1
	(MessageSwitch) id 135157181922251_26607;
	Tue, 30 Oct 2012 04:36:59 +0000 (UTC)
Received: from AM1EHSMHS007.bigfish.com (unknown [10.3.201.232])	by
	mail64-am1.bigfish.com (Postfix) with ESMTP id EA0C46025F	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 04:36:58 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS007.bigfish.com
	(10.3.207.107) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 30 Oct 2012 04:36:54 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-001.039d.mgd.msft.net (10.84.1.13) with Microsoft SMTP
	Server (TLS) id 14.2.318.3; Tue, 30 Oct 2012 04:36:52 +0000
Received: from right.am.freescale.net (right.am.freescale.net [10.82.176.228])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	q9U4apYQ010735; Mon, 29 Oct 2012 21:36:52 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Mon, 29 Oct 2012 23:36:49 -0500
Message-ID: <1351571809-11042-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.9.7
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Chunrong Guo <b40290@freescale.com>
Subject: [meta-fsl-ppc master] busybox_1.20.2.bbappend:updated FILESEXTRAPATHS_prepend_fsl
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
X-List-Received-Date: Tue, 30 Oct 2012 04:37:05 -0000
Content-Type: text/plain

From: Chunrong Guo <b40290@freescale.com>

     Fix Fetcher failure for URL: 'file://defconfig-fsl'

Signed-off-by: Chunrong Guo <b40290@freescale.com>
---
 recipes-append/busybox/busybox_1.20.2.bbappend |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-append/busybox/busybox_1.20.2.bbappend b/recipes-append/busybox/busybox_1.20.2.bbappend
index 60d8b25..9c52eeb 100644
--- a/recipes-append/busybox/busybox_1.20.2.bbappend
+++ b/recipes-append/busybox/busybox_1.20.2.bbappend
@@ -1,6 +1,6 @@
 PR_append_fsl = "+${DISTRO}.0"
 
-FILESEXTRAPATHS_prepend_fsl := "${THISDIR}/busybox-1.19.4:"
+FILESEXTRAPATHS_prepend_fsl := "${THISDIR}/busybox-1.20.2:"
 
 SRC_URI_append_fsl += "file://defconfig-fsl \
             file://busybox-1.19.4-ubi-user-h.patch \
-- 
1.7.9.7




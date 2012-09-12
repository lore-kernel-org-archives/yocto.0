Return-Path: <B19537@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 975CBE01491
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:50:14 -0700 (PDT)
Received: from mail42-ch1-R.bigfish.com (10.43.68.238) by
	CH1EHSOBE016.bigfish.com (10.43.70.66) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:50:13 +0000
Received: from mail42-ch1 (localhost [127.0.0.1])	by mail42-ch1-R.bigfish.com
	(Postfix) with ESMTP id E681F602BC	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 06:50:13 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail42-ch1 (localhost.localdomain [127.0.0.1]) by mail42-ch1
	(MessageSwitch) id 1347432612713566_10757;
	Wed, 12 Sep 2012 06:50:12 +0000 (UTC)
Received: from CH1EHSMHS040.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.248])	by mail42-ch1.bigfish.com (Postfix) with ESMTP id
	AB1944E0051
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:50:12 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS040.bigfish.com
	(10.43.69.249) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:50:10 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-004.039d.mgd.msft.net (10.84.1.14) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:50:09 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQX025013;
	Tue, 11 Sep 2012 23:50:06 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:29 +0800
Message-ID: <1347433590-8481-15-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Chunrong Guo <b40290@freescale.com>
Subject: [meta-fsl-ppc 15/16] change the priority of packages which provide ifconfig to ifconfig link ifconfig.net-tools by default
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
X-List-Received-Date: Wed, 12 Sep 2012 06:50:14 -0000
Content-Type: text/plain

From: Chunrong Guo <b40290@freescale.com>

Signed-off-by: Chunrong Guo <b40290@freescale.com>
---
 .../net-tools/net-tools_1.60-23.bbappend           |    9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 recipes-append/net-tools/net-tools_1.60-23.bbappend

diff --git a/recipes-append/net-tools/net-tools_1.60-23.bbappend b/recipes-append/net-tools/net-tools_1.60-23.bbappend
new file mode 100644
index 0000000..b780bac
--- /dev/null
+++ b/recipes-append/net-tools/net-tools_1.60-23.bbappend
@@ -0,0 +1,9 @@
+PR_append_fsl = "+${DISTRO}.0"
+
+inherit update-alternatives
+
+ALTERNATIVE_NAME_fsl = "ifconfig"
+ALTERNATIVE_LINK_fsl = "${base_sbindir}/ifconfig"
+ALTERNATIVE_PATH_fsl = "${base_sbindir}/ifconfig.net-tools"
+ALTERNATIVE_PRIORITY_fsl = "200"
+
-- 
1.7.9.5




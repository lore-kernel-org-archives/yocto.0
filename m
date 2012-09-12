Return-Path: <B40290@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe002.messaging.microsoft.com [213.199.154.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78AEEE0147B
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 00:34:05 -0700 (PDT)
Received: from mail80-db3-R.bigfish.com (10.3.81.240) by
	DB3EHSOBE003.bigfish.com (10.3.84.23) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 07:33:45 +0000
Received: from mail80-db3 (localhost [127.0.0.1])	by mail80-db3-R.bigfish.com
	(Postfix) with ESMTP id CFF0FC00E8	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 07:33:45 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail80-db3 (localhost.localdomain [127.0.0.1]) by mail80-db3
	(MessageSwitch) id 1347435223514889_25265;
	Wed, 12 Sep 2012 07:33:43 +0000 (UTC)
Received: from DB3EHSMHS015.bigfish.com (unknown [10.3.81.228])	by
	mail80-db3.bigfish.com (Postfix) with ESMTP id 722E6800A1	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 07:33:43 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS015.bigfish.com
	(10.3.87.115) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 07:33:40 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 02:33:38 -0500
Received: from right.am.freescale.net (right.am.freescale.net [10.82.176.228])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	q8C7Xa5h006608; Wed, 12 Sep 2012 00:33:37 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 02:33:30 -0500
Message-ID: <1347435210-29877-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.9.7
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-Mailman-Approved-At: Wed, 12 Sep 2012 07:50:08 -0700
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
X-List-Received-Date: Wed, 12 Sep 2012 07:34:05 -0000
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




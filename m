Return-Path: <mathieu@rmds.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF1C1C61DA4
	for <webhook@archiver.kernel.org>; Fri, 24 Feb 2023 15:32:40 +0000 (UTC)
Received: from wrqvnhvw.outbound-mail.sendgrid.net (wrqvnhvw.outbound-mail.sendgrid.net [149.72.32.137])
 by mx.groups.io with SMTP id smtpd.web10.20619.1677252759762096312
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Feb 2023 07:32:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rmds.ca header.s=s1 header.b=ZZWafrW3;
 spf=pass (domain: em2439.rmds.ca, ip: 149.72.32.137, mailfrom: bounces+28610391-d1c9-yocto=lists.yoctoproject.org@em2439.rmds.ca)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rmds.ca;
	h=from:subject:mime-version:to:content-transfer-encoding:content-type:
	cc:content-type:from:subject:to;
	s=s1; bh=QfVNqHK093v6HQNRJAKMOw5wk01MvRFvlHWEFbjRJkg=;
	b=ZZWafrW3Edfv24/oBDUdB0kPgqZAQDaZC7Yu4njcXPUTyhJqnnPEYpPFy/PqHqyLdrEq
	61zjd69O0P9ZhM0twuNe/rK7dmjWt6U8hc5aHk9HWK3E1fkruAIKcElP5z4ArAxY55X7Pp
	Q46YywRTfe1HrdVlbUghNMPQIb9pAyZz8Paw47frAVJbzTBZg/1F2ZboKndmxuX5+VMobm
	6Q6+pyEJ2DYSAAHmWc4w9FMYF0tlxlJ/zYs+9VNcoXekw7kV9XmQRjhxZ1i96zTDVnAcZv
	aILp/RpNLxeAdm1J5bRr3bBz2artIn7eWwoe/BuAUQLewdNfbYmESdabf8NNmlhQ==
Received: by filterdrecv-59cb65cf6d-lt5nr with SMTP id filterdrecv-59cb65cf6d-lt5nr-1-63F8D895-5B
        2023-02-24 15:32:37.837501066 +0000 UTC m=+230372.622594044
Received: from mtetreault-yocto-vm.rmds.local (unknown)
	by geopod-ismtpd-4-3 (SG) with ESMTP id 6WDrac6oRJyWKSQy1RJwhQ
	for <yocto@lists.yoctoproject.org>; Fri, 24 Feb 2023 15:32:37.695 +0000 (UTC)
From: "Mathieu A.-Tetreault" <mathieu@rmds.ca>
Subject: [meta-security][PATCH] tpm2-abrmd: add missing runtime dependencie
Date: Fri, 24 Feb 2023 15:32:37 +0000 (UTC)
Message-Id: <20230224153237.131394-1-mathieu@rmds.ca>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-SG-EID: 
 =?us-ascii?Q?uBVjdjlM8hYW3OWY6fa5lCN1DkQKGfchD5ghwSX=2F71Nc=2Fsr8W2DUWoR+=2FTCsfI?=
 =?us-ascii?Q?k=2FEOEYueiWwNSQPWr9+O=2F9sbN1zZtOenOf+WHeS?=
 =?us-ascii?Q?pIemBSZQJoo0Xo1gnh2KZnJcnG9IDRU2AuUfh0B?=
 =?us-ascii?Q?kN422FJQPXWoj6R+A88LkncNVJGkBkcJynKygcO?=
 =?us-ascii?Q?jFLgQE3MEjhU1j24YmgV0ApehptY6vp9XDFgn3M?=
 =?us-ascii?Q?+Zb8LJJN51VXUngEdZOyvX471rsDIJS1+Wc6wiu?=
 =?us-ascii?Q?BEW0x3WjAOFqsYFuA3Buw=3D=3D?=
To: yocto@lists.yoctoproject.org
X-Entity-ID: mVQcESU0HTW2oIaT/Dv8Aw==
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=us-ascii
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Feb 2023 15:32:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59298

---
 meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.1.bb b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.1.bb
index daafae3..aa1f2b9 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.1.bb
@@ -47,6 +47,6 @@ do_install:append() {
 FILES:${PN} += "${libdir}/systemd/system-preset \
 		${datadir}/dbus-1"
 
-RDEPENDS:${PN} += "tpm2-tss"
+RDEPENDS:${PN} += "tpm2-tss libtss2-tcti-device"
 
 BBCLASSEXTEND = "native"
-- 
2.34.1



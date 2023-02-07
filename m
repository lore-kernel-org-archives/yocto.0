Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 396CEC636D6
	for <webhook@archiver.kernel.org>; Tue,  7 Feb 2023 15:29:42 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.86369.1675783781195746753
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Feb 2023 07:29:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=hvha2xCe;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 4F3B11C000D;
	Tue,  7 Feb 2023 15:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1675783779;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=T7eDXyh4KwoPosXMOAjMIrA4sqbI56MvxWufeW6Y8vk=;
	b=hvha2xCec9fCYwMzu1kQ2P7NitfbHCFdvLgWVcPtpDeCoWxfih8Sc85KDqJj7JvKaW0pnn
	k6F9d0Hh1mFdEzyr8H9S2ElsChu3ybZGKKi4WZf8jMVMBJjCxwPIQ6Jupm7UIlm9iONuvP
	4ImYgtYSlvOwY1cNm8n4vLpw3paE7YDmhmuvGSD53gB5+VJ8Osyo17NSxLrN8wkz3R7RoC
	vwss56aFiMCu7vXMuFuA0fEREB2EltV1mqiYp6lFFR6ZNSCiUQ4f+Vuupca+maW7IE+xzY
	sv8kZn7g/MQcuIgF7TKD221FMAShATW8G1WMYyq+WdRR/nvOqsdPWVgAFDc/WA==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [autobuilder][PATCH v2 0/3] ease send-qa-email usage with older history
Date: Tue,  7 Feb 2023 16:29:46 +0100
Message-Id: <20230207152949.43487-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Feb 2023 15:29:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59195

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Hello,
This is the v2 of minor patch series to ease development/debugging on
send-qa-email. There is no functional change in the patches since v1, those are
resent to fix some mess in signedoff/from fields from my email configuration.
Regards,

Alexis Lothoré (3):
  scripts/send-qa-email: force current revision fetch
  scripts/send-qa-email: reduce testresults shallow clone depth
  scripts/send-qa-email: add target and base revisions in regression
    report

 scripts/send_qa_email.py | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

-- 
2.39.1



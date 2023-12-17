Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06271C3DA6E
	for <webhook@archiver.kernel.org>; Sun, 17 Dec 2023 13:30:38 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.18446.1702819837237027641
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Dec 2023 05:30:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Lso5Mo4d;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 97A3A60003;
	Sun, 17 Dec 2023 13:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702819834;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=c57cgjCzUZkruh9LEoefBPYGPuU4dh7Q9hueSfTT+BY=;
	b=Lso5Mo4drT3512lD3vXY0nHa/NTsGmkxbfCQDTjTq6yecsv5d/pvZDOGHiVnlZjI0eyPQ1
	rt/AjZUymlR2zgUgHyCCMaLhjPMfT912zRPgzR/B8H/1jshWSPC791HSzKlsvnNfRwpLp0
	e+pT7ok7CKAQTIssl/4tLg71xx17qOqtAbPC+Fe4fOuCRNH7xx6YkYOMVqqm1mJdgJR97U
	iGqoZtBRtQZ6037VKy8E79UxlscybEf9e6Ia+0IVtQg7grKBq34dzrbCvbh3cSBPHOGSJ1
	m/HQ2I+CXp4t/3o8IweGHyPIYnloZKMOx/9sOsHu8aOXwrSxNrG2i/XUCEqzhw==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 0/4] Fix send_qa_email for releases with new major number
Date: Sun, 17 Dec 2023 14:30:28 +0100
Message-ID: <20231217133032.27231-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.42.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Dec 2023 13:30:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61948

Hello,
the autobuilder encountered a failure while trying to generate 5.0_M1.rc1
(see [1]) on send_qa_email part, which resulted in missing QA email.

This issue is mostly due to the fact that this is the first release on new
major 5.0. While this case is in theory handled in send_qa_email, practice
came in and made things blew up: this version makes the tag computation
method fall through the last branch, which currently expects the tag to
exist. This assumption is a mistake: it may be valid when trying to
generate regression reports a posteriori, but not for autobuilder run (tag
is then applied only when corresponding release has been validated)

The two first commits slightly rework tests to prepare for the fix, which
comes in the third commit.
Last commit makes sure that get_regression_base_and_target will not prevent
QA email generation in case of an exception, as it is currently done with
generate_regression_report

[1] https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6338/steps/29/logs/stdio

Alexis Lothoré (4):
  scripts: send_qa_email: slightly rework previous tag test
  scripts: send_qa_email: allow testing against non fixed tags
  scripts: send_qa_email: properly compute previous tag for new major
    release tag
  scripts: send_qa_email: protect get_regression_base_and_target  from
    exceptions

 scripts/send_qa_email.py      | 33 +++++++++++++++++++--------------
 scripts/test_send_qa_email.py | 15 ++++++++++-----
 2 files changed, 29 insertions(+), 19 deletions(-)

-- 
2.42.1



Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E86D3C54E94
	for <webhook@archiver.kernel.org>; Tue, 24 Jan 2023 17:30:10 +0000 (UTC)
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web10.21711.1674581409988937381
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jan 2023 09:30:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=flQvZiRm;
 spf=pass (domain: bootlin.com, ip: 217.70.178.231, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id CA530100005;
	Tue, 24 Jan 2023 17:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674581408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=cFi26gnzLF2zDOKBWo2pkJJGQ05ApThxB4pdTl4WFsA=;
	b=flQvZiRmNoL3m6dBkhAfUYiYj/Azrx1aL0uSroGpWgUCbb5mbd5WrVduEEPYq9Qg4ccvE2
	sgsqES6FF2NsmKoQi5gUGZQUMHsPogrUIB+mxVel5uXzSJI+jZg2MqTVwKLmBFA4y+ztPp
	WZMPIjTFmA8i/Lqlxep3aKgD9ZYi0vHdF3U8uRBx47lBQJAJY+7XtZJhZISJl+xnEKRQbs
	dpTDGgCzDDY7IqKR+F0Ntve+yA0k72iIP9EP2SWYIx9tDW4rqFjXxBDMBOMpkrqo/bBe9y
	V2vAL4p7Z0OPsq/Tm76dLKt0nvppsdolQ//BzDQgO86OJZOXpfdzDRdzWfyzBQ==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [autobuilder][PATCH v3 0/5] generate regression reports against proper releases
Date: Tue, 24 Jan 2023 18:30:12 +0100
Message-Id: <20230124173017.134017-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jan 2023 17:30:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59046

Hi, this is the 3nd version of work initiated to improve regression reports
usefulness, started around issue YOCTO #1465
(https://bugzilla.yoctoproject.org/show_bug.cgi?id=14065).

Changes since v2:
 - add symlink to preserve compatibility with current autobuilder configuration

Changes since v1:
 - minor rework to be able to import send_qa_email.py as a standard python
   module
 - properly manage non-releases versions since qe_send_email.py can be called
   with such "release" versions ("-r" parameter)
 - add unit tests on previous version computation
 - do not fetch yocto-testresults full history: identify needed revisions with
   git ls-remote and retrieve them with git fetch

Alexis Lothoré (5):
  scripts/send_qa_email.py: Rename send-qa-email to send_qa_email.py
  scripts/send_qa_email.py: Wrap send_qa_email.py content in function
  scripts/send-qa-email: Generate regression reports against most
    relevant release
  scripts/send_qa_email.py: add unit tests on previous version
    computation
  scripts/send-qa-email: add symlink to preserve compatibility with
    autobuilder

 scripts/send-qa-email         | 165 +------------------------
 scripts/send_qa_email.py      | 223 ++++++++++++++++++++++++++++++++++
 scripts/shared-repo-unpack    |   2 +-
 scripts/test_send_qa_email.py |  57 +++++++++
 scripts/utils.py              |  47 +++++++
 5 files changed, 329 insertions(+), 165 deletions(-)
 mode change 100755 => 120000 scripts/send-qa-email
 create mode 100755 scripts/send_qa_email.py
 create mode 100755 scripts/test_send_qa_email.py

-- 
2.39.0



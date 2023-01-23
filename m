Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5BAC61D97
	for <webhook@archiver.kernel.org>; Mon, 23 Jan 2023 12:31:09 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.41220.1674477063959141469
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 04:31:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=nbRjAVob;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 2D14540009;
	Mon, 23 Jan 2023 12:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674477061;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ZxwRFq8GHSWj5ZeyjA5QNcC6hhsbt4ssMpikI9p2w/0=;
	b=nbRjAVobbr5siVCU24G6kPhOUHwNdQc9+TVXDuMZx9rMFgFG+9ZF/3WqgiQL/HAaTzJfnO
	CtlxDHtFWRU9DlFrmumogNZ4zEyyauSnYDTJxlxUM57r8O0VWSuG3oJLvpiVE6HNq81MES
	n2ZL3Hjg5ysqgEqkzwfYNsoh3B+DAlnRxtUZbLnFdBcT0yrjawNRm2dtBnCwWiTI51yu9O
	ZHZQu+GMS6sAsyKd4LJ6YFH7kky2kod2IRho5PQGqkQBTAx9HJmRmA+QR+ou71RavmMTRt
	QORTqTIJuMZOr5vkWUjPscYbKdA93L2eRAiCJRAlKgUQsNbHgtZgm74mgrlG5Q==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [autobuilder][PATCH v2 0/4] generate regression reports against proper releases
Date: Mon, 23 Jan 2023 13:31:07 +0100
Message-Id: <20230123123111.37665-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 12:31:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59032

This is the 2nd version of work initiated to improve regression reports
usefulness, started around issue YOCTO #1465
(https://bugzilla.yoctoproject.org/show_bug.cgi?id=14065).

Please note : this new revision depends on another patch on yocto-autobuilder2
which updates name of qa-send-email in builders

Changes since v1:
 - minor rework to be able to import send_qa_email.py as a standard python
   module
 - properly manage non-releases versions since qe_send_email.py can be called
   with such "release" versions ("-r" parameter)
 - add unit tests on previous version computation
 - do not fetch yocto-testresults full history: identify needed revisions with
   git ls-remote and retrieve them with git fetch

Alexis Lothoré (4):
  scripts/send_qa_email.py: Rename send-qa-email to send_qa_email.py
  scripts/send_qa_email.py: Wrap send_qa_email.py content in function
  scripts/send-qa-email: Generate regression reports against most
    relevant release
  scripts/send_qa_email.py: add unit tests on previous version
    computation

 scripts/send-qa-email         | 164 -------------------------
 scripts/send_qa_email.py      | 223 ++++++++++++++++++++++++++++++++++
 scripts/shared-repo-unpack    |   2 +-
 scripts/test_send_qa_email.py |  57 +++++++++
 scripts/utils.py              |  47 +++++++
 5 files changed, 328 insertions(+), 165 deletions(-)
 delete mode 100755 scripts/send-qa-email
 create mode 100755 scripts/send_qa_email.py
 create mode 100755 scripts/test_send_qa_email.py

-- 
2.39.0



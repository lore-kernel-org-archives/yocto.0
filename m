Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5EE8E8FDDB
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 09:24:08 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.14240.1696411444933480507
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 02:24:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=FetUabr2;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 385D940002;
	Wed,  4 Oct 2023 09:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696411442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=45+fB2Xj0pp4WcJyCtmcjEtyVmJhges1+AkXSYavsPs=;
	b=FetUabr2mRi0Wm6aJw8sAijJb4YcWFPK8j8gcBJzVK4U4YdYRjrraMo/1954Wq2E36iFiC
	yqHP8jKRpsS/Cm8+gCQr3xHkXgnIdzw8eyMscoKb97ZxCQ3+KN8UPuEmvJxiGOkjdVoDfF
	jN69u5WJuUqU6Ol9kccCdx6i11JCZ6hYToZ3GEpYtva8UnS2cts8XPsK+/rbnvGCW+QDhv
	doLQqfwjP9iIDNRZfYDB1SKniVQ4z6s6VrZfgjDzqApkOP/GvSR5+bDpF3nnVWBzXfyKvW
	H/Tf/p9Ub9jdX0KjpCYh6hN0olhH7iWrF+t+ml2O9aPt3bKe9Dd469jSxa/xdA==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 0/3] Make sure to pick tested rev as reference for regression report
Date: Wed,  4 Oct 2023 11:25:03 +0200
Message-ID: <20231004092506.25365-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 09:24:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61230

Some failures have been observed on jobs targeting master-next, with the
following logs as an example:

Exception: No reference found for commit
3edb9acca18171894771c36c19b0c2e905852ce5 in /tmp/sendqaemail.dkwg__g9

See [1] for more logs, which is trying to compare master-next results to
master results. While master-next results necessarily exist (because they
have been generated in the very same build presenting the error), it may
not be true for master: current HEAD of master may not have been the object
of a build generating test results.

To fix that, this series propose to stop blindly searching for test results
corresponding to current HEAD on master: instead it reads HEAD on master
branch of test results respository, and extract corresponding Poky revision
from it, so we are sure that selected revision in Poky is the most recent
AND have corresponding tests results
The actual fix is in last commits: the first commit aims to re-clarify the
naming used for revisions used to comparision, and the second commit is a
small refactoring

[1] https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/5973/steps/31/logs/stdio

Alexis Lothoré (3):
  scripts/send_qa_email: re-clarify base and target revisions
  scripts/send-qa-email: define tests results repository url only once
  scripts/send_qa_email: guess latest tested revision when dealing with
    branch

 scripts/send_qa_email.py      | 61 ++++++++++++++++++++++-------------
 scripts/test_send_qa_email.py | 31 ++++++++++--------
 scripts/utils.py              |  6 ++--
 3 files changed, 58 insertions(+), 40 deletions(-)

-- 
2.42.0



Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533AEC67871
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 15:06:46 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.89111.1673622401974846126
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 07:06:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=iU1Bdibr;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id F25EB1C0004;
	Fri, 13 Jan 2023 15:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1673622400;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8gZgHBPZwZgZcGEjd5wKx81Qw7GHSKCXoiEgY7v2Qhw=;
	b=iU1BdibrmUsmjOr/WTi6+zsjdeYORbdqn5XLj9dUsRav5+6o04ioHXDBuXFXkMpdE8prTz
	aHNh6912tUKBCUNPk5BYOaxzlk49geOMKhAujn0NKmIk+lo1vcf8PTu5JGj2g3JlFamdwD
	IF86n2vbgWa9nmD9NFmeE9XXRPw+KcCMQ0IV3Z1O1aakay2t8/segu+HSsQoqOZK+MyqPZ
	jzzbkNYIZUr1AOEMfQ07Z334xjfFblVFTjcSDnLNvMWBAzj6TckS4sdvc8aPRg5QUwVnby
	T8OVwnvwBNQW67J0Y67bnKRuIE1lgomqDeQJng/obpBD87580g7r1v+YhhNADw==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	=?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Subject: [autobuilder][PATCH 0/2] generate regression reports against proper releases
Date: Fri, 13 Jan 2023 16:06:44 +0100
Message-Id: <20230113150646.44144-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 15:06:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58976

This work has been initiated while discussing issue #14065
(https://bugzilla.yoctoproject.org/show_bug.cgi?id=14065)
The topic initially covers ptest reports between releases, but after discussions
with R. Purdie (https://lists.yoctoproject.org/g/automated-testing/message/1211),
a general regression report reliability topic emerged. Those first
patches aims to make regression reports more useful during releases by computing
against which revision it would be relevant to check for regressions.

A few notes about those patches :
- Since it affects release process, I struggled to properly test the new behavior,
so testing has been made by stubbing send-qa-email side effects and picking some
samples of build properties and layerinfo.json from autobuilder history to run
manually send-qa-email on my machine. But I will gladly take into account any
advice or procedure to test it more thoroughly
- I also have some uncommitted python unit tests on "previous version
  computation", but current scripts directory does not allow proper unit tests
integration. If appropriate, I could submit some minor reworks to make it viable
for testing and submit those tests
- This new regression checking introduced the need to clone a wider testresults
  history, which is (very) slow on my machine, but I do not now how slow it is
on autobuilder. Could it be an issue for the delivery process ? Does it need to
be smarter on this point ?
- If appropriate, new patch could follow to allow regression reports generation
against multiple revisions : for example we could check for a milestone build
against previous milestone AND previous major release

Alexis Lothoré (2):
  scripts/send-qa-email : clone older history to allow comparing against
    older releases
  scripts/send-qa-email: Generate regression reports against most
    relevant release

 scripts/send-qa-email | 69 ++++++++++++++++++++++++++++++++-----------
 scripts/utils.py      | 47 +++++++++++++++++++++++++++++
 2 files changed, 99 insertions(+), 17 deletions(-)

-- 
2.39.0



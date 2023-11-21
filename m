Return-Path: <christian@hohnstaedt.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D208C61D85
	for <webhook@archiver.kernel.org>; Tue, 21 Nov 2023 15:56:11 +0000 (UTC)
Received: from mail.hohnstaedt.de (mail.hohnstaedt.de [85.214.238.48])
 by mx.groups.io with SMTP id smtpd.web11.44952.1700582161301829587
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Nov 2023 07:56:02 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=none, err=SPF record not found (domain: hohnstaedt.de, ip: 85.214.238.48, mailfrom: christian@hohnstaedt.de)
Received: from localhost (localhost [127.0.0.1])
	by mail.hohnstaedt.de (Postfix) with ESMTP id C474314E02F2
	for <yocto@lists.yoctoproject.org>; Tue, 21 Nov 2023 16:55:58 +0100 (CET)
X-Virus-Scanned: Debian amavis at hohnstaedt.de
Received: from mail.hohnstaedt.de ([127.0.0.1])
 by localhost (hohnstaedt.de [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ya1pcSDYg5gq for <yocto@lists.yoctoproject.org>;
 Tue, 21 Nov 2023 16:55:58 +0100 (CET)
Received: by mail.hohnstaedt.de (Postfix, from userid 1000)
	id 7BA2F14E0D69; Tue, 21 Nov 2023 16:55:58 +0100 (CET)
Date: Tue, 21 Nov 2023 16:55:58 +0100
From: Christian Hohnstaedt <christian@hohnstaedt.de>
To: yocto@lists.yoctoproject.org
Subject: [ptest-runner] [PATCH] Do not reset error counter before each test
Message-ID: <ZVzTDrwC3WEn4xCu@hohnstaedt.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="GD+eI0KYIelvHJ0E"
Content-Disposition: inline
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Nov 2023 15:56:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61726


--GD+eI0KYIelvHJ0E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Commit 56ed1082c4914c0ef3c72bfd609d68cc850557f1 moved
the pipe-creation into the loop and resetted rc before each test,
such that only the result code of the last test was taken into
account for the final verdict.

Only set rc = -1 if pipe() fails to keep collected test-errors.



--GD+eI0KYIelvHJ0E
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-Do-not-reset-error-counter-before-each-test.patch"

From 1de2f110c94c27a903e3576ae5dc87992de92560 Mon Sep 17 00:00:00 2001
From: Christian Hohnstaedt <christian@hohnstaedt.de>
Date: Tue, 21 Nov 2023 16:07:22 +0100
Subject: [PATCH] Do not reset error counter before each test

Commit 56ed1082c4914c0ef3c72bfd609d68cc850557f1 moved
the pipe-creation into the loop and resetted rc before each test,
such that only the result code of the last test was taken into
account for the final verdict.

Only set rc = -1 if pipe() fails to keep collected test-errors.

Signed-off-by: Christian Hohnstaedt <christian@hohnstaedt.de>
---
 utils.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/utils.c b/utils.c
index 59b8b77..616e9db 100644
--- a/utils.c
+++ b/utils.c
@@ -415,12 +415,14 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 			int pipefd_stderr[2] = {-1, -1};
 			int pgid = -1;
 
-			if ((rc = pipe2(pipefd_stdout, 0)) == -1)
+			if (pipe2(pipefd_stdout, 0) == -1) {
+				rc = -1;
 				break;
-
-			if ((rc = pipe2(pipefd_stderr, 0)) == -1) {
+			}
+			if (pipe2(pipefd_stderr, 0) == -1) {
 				close(pipefd_stdout[PIPE_READ]);
 				close(pipefd_stdout[PIPE_WRITE]);
+				rc = -1;
 				break;
 			}
 
-- 
2.39.2


--GD+eI0KYIelvHJ0E--


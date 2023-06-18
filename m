Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 489D0EB64D7
	for <webhook@archiver.kernel.org>; Sun, 18 Jun 2023 09:08:19 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.2683.1687079291739098389
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jun 2023 02:08:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=YrjWpMEx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-311153ec442so1613358f8f.1
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jun 2023 02:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687079290; x=1689671290;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=f9CTmcd5IsFVW2MAv6UiXyT2a5xoJZ+7gBx33X36Ink=;
        b=YrjWpMEx/vAlWEGPxUgLQQEwnm16kLoKqKjaa6b/4sp+yXtCDdVxZm5nXB6vAO16CB
         UimHkkIqTLrzX1cTmvUx13iAYXbn16v+/qVbdSx0gPKPZz3LfBmTcvSpy72u5sBJTPec
         zOlVCNAC1OXwMcqncX9sGZbNBFdU5gOMSgQDY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687079290; x=1689671290;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f9CTmcd5IsFVW2MAv6UiXyT2a5xoJZ+7gBx33X36Ink=;
        b=Xst+YdD3zxFEEDTI9qX8nkVSzi/NULzGjkqg6xUu/goDa7Z+FMVAOJRHba1s8cE2Py
         6ne2x9OeafNr5vYmVV+BGkgvFT4s9NtPeqetqNxxU36hulMghWtbt0RcPKtFH4+Djdx6
         T42nkIHEUjHsyWpeG+zW5HJ6B3pNwbMEQpQA1tWmzzZrPPIUQKOUoPAqfufxRwzGnAd4
         04JeAvnU4g4q8ABgzNeo9fCs9K550tJCsuJbhbCMd0+CKpCglNsoOWFsrhieISit+Lne
         Cp/ND27xAyfkQDrMDOpd61G4jX1B+AR/LWwDkaBF+4re5nedWZnwQKDOQ5HGXUVo8r6h
         Ls/Q==
X-Gm-Message-State: AC+VfDw+GJI4f5jpx3Mp4jbQ2SyIKCXjLJG5Z7O8WgwHOQAnElDDTuhv
	pQmLTDIcoJlcvpNsN8yWR+Bca7u4MmT4eoTpIfc=
X-Google-Smtp-Source: ACHHUZ6goSRh5rbQDL2knSQwde0Ju0BW6KWn3pqXCbb98jx9tZvpnOlHTtA0v0/ssSebVI1i7qoNgg==
X-Received: by 2002:a5d:6610:0:b0:30f:c1fa:7901 with SMTP id n16-20020a5d6610000000b0030fc1fa7901mr5364353wru.5.1687079289698;
        Sun, 18 Jun 2023 02:08:09 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:6795:a107:916c:13d0])
        by smtp.gmail.com with ESMTPSA id c17-20020adffb51000000b00307bc4e39e5sm28154176wrs.117.2023.06.18.02.08.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jun 2023 02:08:09 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [ptest-runner2] [PATCH] utils: Ensure buffers are flushed after child exits
Date: Sun, 18 Jun 2023 10:08:08 +0100
Message-Id: <20230618090808.2477845-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Jun 2023 09:08:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60333

We currently wait for the child to exit but we don't flush the buffers.
This can mean the output ends up out of sync and the END: line isn't at
the end of the logs.

We've recently seen a lot of issues related to this on the autobuilder.
Add in a flush call for all fds to ensure buffers are in sync. This
does appear to improve warnings on the autobuilder now we started detecting
the issue.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 README.md | 2 +-
 utils.c   | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/README.md b/README.md
index 85ef58a..e6f548e 100644
--- a/README.md
+++ b/README.md
@@ -49,7 +49,7 @@ $ mtrace ./ptest-runner $MALLOC_TRACE
 ## Contributions
 
 For contribute please send a patch with subject prefix "[ptest-runner]" to 
-yocto@yoctoproject.org.
+yocto@lists.yoctoproject.org.
 
 ## Links
 
diff --git a/utils.c b/utils.c
index a67ac11..ec57fa4 100644
--- a/utils.c
+++ b/utils.c
@@ -535,6 +535,9 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				entime = time(NULL);
 				duration = entime - sttime;
 
+				/* Now the child has exited, ensure buffers are in sync before writing */
+				fflush(NULL);
+
 				if (status) {
 					fprintf(fp, "\nERROR: Exit status is %d\n", status);
 					rc += 1;
-- 
2.39.2



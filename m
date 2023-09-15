Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CC90EE645F
	for <webhook@archiver.kernel.org>; Fri, 15 Sep 2023 14:30:25 +0000 (UTC)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
 by mx.groups.io with SMTP id smtpd.web11.21838.1694788217735040184
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Sep 2023 07:30:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=iQDk+baC;
 spf=softfail (domain: sakoman.com, ip: 209.85.166.46, mailfrom: steve@sakoman.com)
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-79ac0d271b4so26389139f.1
        for <yocto@lists.yoctoproject.org>; Fri, 15 Sep 2023 07:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1694788216; x=1695393016; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wZhCgUtA4AYhzXGC9pFsQSzI3n07wUPdwXcdPq/ITEY=;
        b=iQDk+baCL66yC1+coVCwQ4fbLdyPFOpHcCoMllyenUK7Z7x42zbR8h19D/jXxhp+Gu
         FTsu0DXsJIiOMg0fz3eXagXhK7/L50CE2LaLgz6D/dEYf9jw7ebANvDMN10lR4kTsbQP
         a3B/obwgSqT9XyGOdD2K2k2u5/4MHpEB5H6i4biOU1h8edDzuWcGWagJVt74c5+SeUOy
         fGX2qBNzAo3QRePG4gsvVyGsvJoMu5dChneAwqZq617WHEzSknqROxaaeQgUgsE32sU+
         OfUfBKWlrAm41ENqJih+Q3UICtEVirn65HKZ+9MsE4/P0aeX2fcURiJI5gXZYJcM7wuA
         YlgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694788216; x=1695393016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wZhCgUtA4AYhzXGC9pFsQSzI3n07wUPdwXcdPq/ITEY=;
        b=wj0oKFituca+DH7exwRq6z2pEAIcDNM/zPqqJ6EeC8cZm+PK362xHVXoqHIHEmvC6l
         x88CnMIvz9g2D8Gj7W/RRwaEyr11WLDl6ipcJC4HvrFHg2T9rzYC/9iwp/Qw8rrhR9Q4
         RJMbM1SKHRaXcKP9lFDX2bw7clo4+4KrHy1qmCyWW9LEpOFjaF0rs6W/zLm56ltZR6kK
         vFUy1dJLEuGMP7RHNdzUs9pPq8Hh9GptQJR9jT0C2v/LuN3kjnVP4lrdR/N7vlshjr/V
         +fs3+PUp6kcNata1wIDQATi4qqrzQS13XlcOtwUuAwhspxtABz2GgvI+qpnoRGjS3+Xp
         hz3Q==
X-Gm-Message-State: AOJu0YytEWgPtBMRnaX7YRU/jGxY8RHNIpyTpJ64zlJ6Jz7vgj7xaVfY
	KJHgWcxr/V8VRmf0FZMbSRQ1h03CbZcMGOwGynA=
X-Google-Smtp-Source: AGHT+IHOBtlyLSaFk6vCD8t4XvPyG4YRM3Lr8Qa3ZF9/7z5zP57tqOClEXKELJru85dCmXEuImq69Q==
X-Received: by 2002:a05:6e02:1244:b0:34f:6742:1394 with SMTP id j4-20020a056e02124400b0034f67421394mr2222301ilq.1.1694788216222;
        Fri, 15 Sep 2023 07:30:16 -0700 (PDT)
Received: from hexa.lan (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id p1-20020a63ab01000000b0056946623d7esm2822600pgf.55.2023.09.15.07.30.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Sep 2023 07:30:15 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] schedulers.py: use newly created mickledore branch for meta-mingw
Date: Fri, 15 Sep 2023 04:30:08 -1000
Message-Id: <550c951f78ab7f262d54919c4edc07d2a93bc4be.1694788158.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1694788158.git.steve@sakoman.com>
References: <cover.1694788158.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Sep 2023 14:30:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61018

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 schedulers.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/schedulers.py b/schedulers.py
index 2f7a8ab..b70b5ed 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -69,7 +69,7 @@ branchdefaults = {
         'branch_meta-aws': 'mickledore',
         'branch_meta-gplv2': 'master',
         'branch_meta-intel': 'mickledore',
-        'branch_meta-mingw': 'master',
+        'branch_meta-mingw': 'mickledore',
         'branch_meta-openembedded': 'mickledore',
         'branch_meta-ti': 'master',
         'branch_meta-virtualization': 'mickledore',
-- 
2.34.1



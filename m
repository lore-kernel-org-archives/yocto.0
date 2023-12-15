Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3396BC4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 01:39:34 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web10.49847.1702604369826293249
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 17:39:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=O50DQO27;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5e2e873ed29so1550227b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 17:39:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702604369; x=1703209169; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ULevkF9S09ZlclYwchobNl1S2K5UOTY6c+7ZPc+sra8=;
        b=O50DQO27OUF9ABidO4xeYRwDmr6gy4tKljzofxns8H7gUtbSOOxFtRkPpOuQ4NexUb
         4ntAvoS8XF5Hu7ABQ/aOXJyh3XtfrbVP22JYyudd1SPNSJ+uslp6SNRHEYg2y1N9AYwv
         uupmQcf6C/YDAJSXFNBAW98n7HwFQirYdg7cF0+Jqoe3x+ahnfgtCkOYHapnv2JpdjpF
         wYjVriPp1qlQdCB9apU6NR/XpLIPOHmfzKIeZNpH01DDV51I7CuMgfHqFiB6r+PNBbK9
         4ofXLaViAnoP/Nnk0sd2ifRqMW/ykqgaRaiqloOnVJQuxOdIqZKWBXKSLy0rmA4iDujD
         f11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702604369; x=1703209169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ULevkF9S09ZlclYwchobNl1S2K5UOTY6c+7ZPc+sra8=;
        b=vQbnccDkrtIq4d+LOoen79WjG4ohiA/F/Ih4skqBhNxFr8vQZNBA8FT9mw5PeG+7Z5
         KqS3yzeZJSgI6rCty0+ZqmiZEKQ88oZ07BykcueNZ7Y9hy8/zGMED0ksPXoJ/hSyn3mQ
         l5qBxUQ1P+kCufV3gjKLWbPItoo6ZbF2WJaRphGkcjEm7EMaE1fjGdtnE8fNKRZ4PYN4
         5Na5H3mfUQa9iTtI1qNPUuNWYXaMxCkPE0ce23F8msBAZgnsOrXP9RrEk3E0xNund9ZQ
         oFBbE3xmyficz9M00ioSxM+mbc+JeLu78uJsyURU8MSIOHoBgOK2FtEb4FWnojydwefA
         RvsQ==
X-Gm-Message-State: AOJu0Yy1gFIV3I7BTKXJPXhzHFDI/DiV8N6oHVtLwx8gI3TVdCEQYbXi
	2I0fd6VaVnCwJSN+hfX6Gl+UTS2IDKReXg==
X-Google-Smtp-Source: AGHT+IHE2u8NcfTksVWJVSUiUPRTFvAJhmCGKRzPdxdveumLNRr2Fvsq1qdwT6pClv7xeoAdM3Zl5g==
X-Received: by 2002:a81:7285:0:b0:5d7:1941:2c1e with SMTP id n127-20020a817285000000b005d719412c1emr7958723ywc.75.1702604368709;
        Thu, 14 Dec 2023 17:39:28 -0800 (PST)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:9770:3d29:ab6:9b6b])
        by smtp.gmail.com with ESMTPSA id s7-20020a815e07000000b005b34d8b33ffsm5944400ywb.119.2023.12.14.17.39.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 17:39:28 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] layers: Move READMEs to markdown format
Date: Thu, 14 Dec 2023 20:39:27 -0500
Message-Id: <20231215013927.4167132-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 01:39:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61901

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README => README.md                  | 0
 meta-hardening/{README => README.md} | 0
 meta-tpm/{README => README.md}       | 0
 3 files changed, 0 insertions(+), 0 deletions(-)
 rename README => README.md (100%)
 rename meta-hardening/{README => README.md} (100%)
 rename meta-tpm/{README => README.md} (100%)

diff --git a/README b/README.md
similarity index 100%
rename from README
rename to README.md
diff --git a/meta-hardening/README b/meta-hardening/README.md
similarity index 100%
rename from meta-hardening/README
rename to meta-hardening/README.md
diff --git a/meta-tpm/README b/meta-tpm/README.md
similarity index 100%
rename from meta-tpm/README
rename to meta-tpm/README.md
-- 
2.34.1



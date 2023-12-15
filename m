Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E5D7C4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 01:35:14 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web11.49984.1702604111225814460
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 17:35:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LN6FgHiP;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5df49931b4eso1596847b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 17:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702604110; x=1703208910; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fxkOXCEEHk2og5Fxg/Pw4b2SYBNohGC2FBZhND57Yew=;
        b=LN6FgHiPUqmxcwNz/LSVBWb2SS45fHABOC3IK8DNnW52rusMZQ2y7c9HD03NS0NsiA
         FS0/ODpasm8zk78K3H3u9768Kw/DtygHB7mQHIQefBcPoyyZMvwnUlI/mFPGS/TqE229
         NuVGkJ1EJH/Nb3qnvsYiqJfP4wxGjBGH7nrggxn/Tskp7aAWv8yynIj8+gMCdAJ7eghY
         oh79nyfiS+sB/MqH5ZH6hc6oWIk3C7bAqIVha0uwBYRk7exeCOGmkKorq4xjUjAGv6B3
         knA+O3vyYp8krEq9aqK4sm6XNKrmg/BaKVpXc/cZUvWqmIHWIIrEnXZj34EzXd/cLBCg
         fCHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702604110; x=1703208910;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fxkOXCEEHk2og5Fxg/Pw4b2SYBNohGC2FBZhND57Yew=;
        b=bu+5UB/5TunxZuJg8reCAbzdQok2M/OKehqj4n56hLOW1zTTPmdE6bzHTeCLkNpRUB
         IdTrIC1zE4ZL4/P5XEw5g+mJNkRjSqq2fXgI4ZmZOuE1V/6RPUmlBfh331qecSp60UEu
         DPviW3oyxq2KvYGEd595SvOxRLqQbs8z9UxNQ/kO2SmW9HmUisOm44OJ72X2jKHZZ5SB
         PKLqM2DEjce8xH9deKMK9qQFNRu9XUSyYNpEaaDoHOiUkD5YBt2u4AXJiy0bkw2WtJhY
         sbMGDZaiU4kbSyKIVPCH97Ur/OsudeKi4Nfjk5oGgZRNlc2i5FGIfbtHpcAh84Qf7M4h
         P8PQ==
X-Gm-Message-State: AOJu0YwTpoy1KrEPcNSem0rIerPwE6+Yi0MHMo4EtBYD0lySCJEbNo5m
	Zm5tKfoMLfcudKSBjgGPoleBE6IJmX5sEQ==
X-Google-Smtp-Source: AGHT+IEwOt/vlG06eolIJCzMKBqoBaaSSB89cj9cMkXGkNw1WxzsJAaZuRuukTn+x0Nkt2qfRFzg5A==
X-Received: by 2002:a81:7156:0:b0:5d8:e267:78e5 with SMTP id m83-20020a817156000000b005d8e26778e5mr9372573ywc.61.1702604110118;
        Thu, 14 Dec 2023 17:35:10 -0800 (PST)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:9770:3d29:ab6:9b6b])
        by smtp.gmail.com with ESMTPSA id m9-20020a81d249000000b005d72c7c1241sm5895879ywl.112.2023.12.14.17.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 17:35:09 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Dawid Dabrowski <dawiddabrowski@google.com>
Subject: [meta-security][PATCH 1/3] libhoth recipe update
Date: Thu, 14 Dec 2023 20:35:06 -0500
Message-Id: <20231215013508.4166843-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 01:35:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61898

From: Dawid Dabrowski <dawiddabrowski@google.com>

Changelog:
    Dawid Dabrowski
        Add support for payload update protocol for generic Titan images.
    Nick Nooney
        Add BUILD rules to support using libhoth with external tools.
    Yoan Andreev
        Add spi passthrough enable and disable commands.
	Add arm_coordinated_reset.
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm1/hoth/libhoth_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
index 5c7305c..7ba64f5 100644
--- a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
+++ b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
@@ -7,7 +7,7 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
 SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
-SRCREV = "0e3eec6937d35c602ce497444eda05f3c465b5a8"
+SRCREV = "e520f8fa637589324ec56d34f26a48a8162a250c"
 
 DEPENDS += "libusb1"
 
-- 
2.34.1



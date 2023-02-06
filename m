Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15D9AC636D3
	for <webhook@archiver.kernel.org>; Mon,  6 Feb 2023 15:11:15 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
 by mx.groups.io with SMTP id smtpd.web11.55739.1675696268771793572
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Feb 2023 07:11:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IWrj45aX;
 spf=pass (domain: gmail.com, ip: 209.85.161.47, mailfrom: akuster808@gmail.com)
Received: by mail-oo1-f47.google.com with SMTP id 123-20020a4a0681000000b004faa9c6f6b9so1130231ooj.11
        for <yocto@lists.yoctoproject.org>; Mon, 06 Feb 2023 07:11:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=eTeZOizlkTd7RI9XZLJ5IL91JeYm4+wAztGQgUriAQI=;
        b=IWrj45aXkNduaVLyQbzDhxNUBJqZcJYslUHgeG62yX3+eFfXJEfaNBkLZw2iIObchH
         nQzbdkySh3VCxIsmnXVxiS5PfWciANPz1UaX3OTkr06WxQ8Q4J6aKGfaMB4eLZvhzbTP
         kx50xo/86JkEjcsLoz1XNkIc9i5QtIf0hMYPaG7w8+VDLrZRPYNXD4r84ohIgx+PvS8D
         oE0DyGNC9AaOgpDYLlO7JXzu0FsxPRrCmTOIRxQGR3sc4f2YibGzkiUak0sEG9ro+KbJ
         0ca1wRvmRQzY/tlhv/58DEJKmDGmCQAs5xO1yMwvxYdmXc1Fmf+I0D+mKKhacQtRtHf3
         7eSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eTeZOizlkTd7RI9XZLJ5IL91JeYm4+wAztGQgUriAQI=;
        b=AzX/olFkQqLEiGFarHPFqT1Gz2tvEB7GyCPTVsDKOuv5QWygMM5gXoly1dKrEQP/8S
         f19ClCYv5h1jITXOF6eBviMJZx7k/gE372GlOMvdEAH6Od8ZvhEkO6BJ/yR/yF2fjRyN
         kCD0Gw4zWCN1E6S28/iPlusGYvDXtp07E1yCXNnydHdDt8a77cUv76+9t4+ML/uyBxiK
         +b4Gqi7zBg7XiEj48f4vvGRwScC9gvMFG10sNCMg2OZAHHXUsKcYClW1y/oX5uToNBH8
         EvLhSvONd9JQxx+YX0FvLhqTqLcJAS6VKymOXlFbEqdAdYRv26lOxAWENRr3evcVDrXo
         IlCQ==
X-Gm-Message-State: AO0yUKXhKFD4za5QZP/ti2LjqmwL8+1bV5ZlUtxw+W3/rNQgoe60fVB9
	BYcGmyb06x7u7X6cR8gEQ09agE3ennk=
X-Google-Smtp-Source: AK7set9Bv0tnYwpkBTPuw6C3u9hYWzS4/fCtHtUZVgB09wgQNN4qfYN82IVXPd3nqFf4xhOcLSUDcw==
X-Received: by 2002:a4a:a5c3:0:b0:51a:4316:971b with SMTP id k3-20020a4aa5c3000000b0051a4316971bmr7484330oom.2.1675696267924;
        Mon, 06 Feb 2023 07:11:07 -0800 (PST)
Received: from mvwork.mvista.com (99-157-111-72.lightspeed.tukrga.sbcglobal.net. [99.157.111.72])
        by smtp.gmail.com with ESMTPSA id v8-20020a4aa408000000b005178a98b6d2sm4656128ool.30.2023.02.06.07.11.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 07:11:07 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][dunfell][PATCH] libtpm: update to 0.7.2
Date: Mon,  6 Feb 2023 10:09:06 -0500
Message-Id: <20230206150906.2019064-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Feb 2023 15:11:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59181

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 3cd65d96c1e880d378eab070ad6ae164525b78c6)
[Buf fix update only also fixes a build issue
Fixes tpm12/tpm_nvfile.c:347:27: error: ‘%02lx’ directive writing between 2 and 8 bytes into a region of size between 0 and 4095 [-Werror=format-overflow=]
]
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm/libtpm/{libtpm_0.7.0.bb => libtpm_0.7.2.bb}   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-tpm/recipes-tpm/libtpm/{libtpm_0.7.0.bb => libtpm_0.7.2.bb} (86%)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb
similarity index 86%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb
index 4588c8d..0ade01d 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb
@@ -2,8 +2,8 @@ SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=e73f0786a936da3814896df06ad225a9"
 
-SRCREV = "c26e8f7b08b19a69cea9e8f1f1e6639c7951fb01"
-SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-${PV}"
+SRCREV = "7325acb4777f70419fe10a1d9621c2666e977e73"
+SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.7.0"
 
 PE = "1"
 
-- 
2.31.1



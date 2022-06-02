Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9556C43334
	for <webhook@archiver.kernel.org>; Thu,  2 Jun 2022 15:45:53 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.695.1654184749818052694
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:45:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=i+cj7sao;
 spf=pass (domain: gmail.com, ip: 209.85.216.42,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id n10so5251354pjh.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=dkUzceXlVZW+ja2NqeX9ZW6r31JRs2p5bWa9PkAVCMY=;
        b=i+cj7saoUekIQJZ1kTgVYcJLYzDAJieI8Fonj6LpuMHjUUNOJ/CV4MTPkWjB59j3h5
         R5MpYBZCSsHmj4OZYKrdyBb7UBYz3GGvgPzv/d4nfUWaLRsJf9xFxtF8tA/3gwSS11ud
         PDU0yT5dOs4QjitGvnc6BmNK3WRKZi44HzjlXm1uw10m94gR2wAmcXM1JhG366lQuqIf
         gDiIvZx97Qt8WeTbemVXszoEDIj1FqZZqR6Szq2iNkInCFn+grq1G9bkt8TGMmK/TQWz
         TS00iGh/4o3uWaLzGeHHPdSfPtbpDpKWgV1S4938e1Z7jVwPJPq7fFcPF/GW7imOk2Dm
         HkUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dkUzceXlVZW+ja2NqeX9ZW6r31JRs2p5bWa9PkAVCMY=;
        b=4CxQrCfBUnmV7EY/EDAxwEl2Jh89JoVha/XcgPsFKTPqV5CpilGxey+D0uPkEG6PlY
         /Nkrcbm2jes10VhFeRfwR7ZByhEsfp4oPlTMtN6ydlbjgoBNOaBPKB2nzZrY2kRcR848
         4/cGjA8q9+sfwyqHJqFSGOfayih1qU0iMTFZXq9tRQHN5SbEGEzvC1Ve4ioYwbOknaEE
         KqWHNFpvsHq1Y6Xzn+XHX7fDwEfR1aMoEntXAk1vgM5DV8cXTrI4gr9w94ZfqCvq3InB
         AsvnxEGdrMAYCOBx2jx2Q1/Dm0GdZqA6CeVnwbcCEbVX/NyrochcDyNz+166GweeHRRO
         t/tw==
X-Gm-Message-State: AOAM531trBfjhOuPcJPRiTp2C7Qh7GUopjE/nStmHOWMl01qmu9cnuRm
	NqDpiD6OvJbnGhFedOCqzlyTnUGM6hI=
X-Google-Smtp-Source: 
 ABdhPJyMGppK3d87NM/kFsfHB45pOOznhCDxkFYmweEldOBAjqIGUCgO21To0OYnce2tgNrJ7jT9Iw==
X-Received: by 2002:a17:90b:4d05:b0:1e0:b53:f4a3 with SMTP id
 mw5-20020a17090b4d0500b001e00b53f4a3mr29405991pjb.3.1654184749028;
        Thu, 02 Jun 2022 08:45:49 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:e8e8:b71d:2c05:ffc8])
        by smtp.gmail.com with ESMTPSA id
 jh22-20020a170903329600b0015e8d4eb25bsm3705154plb.165.2022.06.02.08.45.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 08:45:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] packagegroup-core-security: add arpwatch
 and chkrootkit to pkg grp
Date: Thu,  2 Jun 2022 08:45:44 -0700
Message-Id: <20220602154544.245869-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220602154544.245869-1-akuster808@gmail.com>
References: <20220602154544.245869-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jun 2022 15:45:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57250

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 9010054..b20ef31 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -42,6 +42,8 @@ RDEPENDS:packagegroup-security-utils = "\
 
 SUMMARY:packagegroup-security-scanners = "Security scanners"
 RDEPENDS:packagegroup-security-scanners = "\
+    arpwatch \
+    chkrootkit \
     isic \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-daemon clamav-freshclam",d)} \
     "
-- 
2.25.1



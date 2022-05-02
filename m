Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BFEDC433EF
	for <webhook@archiver.kernel.org>; Mon,  2 May 2022 22:44:09 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
 [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web12.4078.1651531441814955686
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 May 2022 15:44:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=7IMBsH65;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.180,
 mailfrom: steve@sakoman.com)
Received: by mail-pg1-f180.google.com with SMTP id e5so1630782pgc.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 02 May 2022 15:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FYmpbBsjezNjyihUwWqKWg2V43J7phNMm2u/0BHrgkA=;
        b=7IMBsH65zq9C/TeGzgKYog7WKPUubnGxnW/jX6QdguZBBTJhh9o3WMnkrP6SxpNnbi
         qxDVw22UKfl1Pf+jkJp7RpLXJftI3Le09OxIcOjm3IQm5Ijay0AZaeEwGKkt64JOUpSb
         mMsYHw2IC2OAtPS8SLwod45FuSNNZ3tEdpT+S7zNt/Vp2bKxIHkDSU63Vjc4gXvFTdDA
         x7Ay1f5NMud5oVBsuCx8guZltt7Cmm7jEOkNVPZiuCfRy9luQXmBw6htkJ2V80IcjBca
         2sM4w2ax1dAMsyX+UrKCNPOKOOMt8IL/OQrot71xEtR8+w+jUILFtthIyziVMLXbm1d8
         nDDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FYmpbBsjezNjyihUwWqKWg2V43J7phNMm2u/0BHrgkA=;
        b=vP7RClhi4/IUiCmTF2n+2dijiT3X75zn9YbUGsEKJUYXStteSfOUsoXjk0rEUtFEiu
         wY+2YYWJV6UDj4DQ7iKTB8G5WbyNefdHnC2CbBGswAUgMbMaAYjbt7moHzA28AxgV/HY
         JBeyYBB9thnMzsal56zVtxUGEUWRITfMd/6d0i484GoKvkmf78CIWwHQ5ckg9zlOJLPN
         o4lAKx4Mz4fEOPNDa/NAk7pRr4NBeA81m+aBlOSDGJhEM9qbOlJE6+3mvxGVRhJiCKq4
         2BlM6e5JpSamlBUlRplFUOmBv5ON/TeHomP7kagVPXQcLo1TQg2xkCcQD2pCmqxgtfGZ
         bsBg==
X-Gm-Message-State: AOAM533udIjPdJl/4jx8SE1/PsvevLLPmOwbT0X54qDVpQN1g5/i+YVc
	cJkjMxq1/gKw5O11PfBsAs/pODcgtWho15PrTls=
X-Google-Smtp-Source: 
 ABdhPJyqkvLwxwhpIf1DNHfaGqSn8Fyo9pyjVNCJDvk3wktR5dM4MMCy6p9MOybRFe9QibbbstsOEw==
X-Received: by 2002:a63:8ac7:0:b0:3aa:f853:4f62 with SMTP id
 y190-20020a638ac7000000b003aaf8534f62mr11576673pgd.205.1651531440415;
        Mon, 02 May 2022 15:44:00 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 q22-20020a17090aa01600b001cd4c118b07sm216076pjp.16.2022.05.02.15.43.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 15:43:59 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH] schedulers: update branches for repos that now support
 kirkstone
Date: Mon,  2 May 2022 12:43:43 -1000
Message-Id: <20220502224343.427943-1-steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 May 2022 22:44:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56972

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 schedulers.py | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index d21c6bb..c0a4261 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -55,12 +55,12 @@ branchdefaults = {
         'branch': 'kirkstone',
         'branch_poky': 'kirkstone',
         'branch_bitbake': '2.0',
-        'branch_meta-arm': 'master',
-        'branch_meta-aws': 'master',
+        'branch_meta-arm': 'kirkstone',
+        'branch_meta-aws': 'kirkstone',
         'branch_meta-gplv2': 'kirkstone',
-        'branch_meta-intel': 'master',
+        'branch_meta-intel': 'kirkstone',
         'branch_meta-mingw': 'kirkstone',
-        'branch_meta-openembedded': 'master',
+        'branch_meta-openembedded': 'kirkstone',
         'branch_meta-ti': 'master',
         'branch_meta-virtualization': 'master',
         'branch_oecore': 'kirkstone',
-- 
2.25.1



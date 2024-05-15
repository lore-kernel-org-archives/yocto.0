Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B37C25B75
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 16:33:24 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web11.21153.1715790797145375984
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 May 2024 09:33:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=bepMyITH;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.171, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6f4d6b7168eso3995868b3a.2
        for <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 09:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1715790796; x=1716395596; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CDEc89pgD3NAUgi5TX3b61utgVx8ztRPuJv763gOBlc=;
        b=bepMyITHxPf3ZR3pcYxh2HaDmCTppI14doYZWXV8dhKb9NlWndu1zSvzS4ycooKdPP
         5RHmtIDUgJhEToYiSwCL7McStp7sSWZZ8PutWkv+h2q8oHyMdVOyRszErNkixWXuFjhu
         T5D9iWn9n16zV5DpgPXb+PdNalp75qrsIxNGRaPcmGUzGoT3QbC2Qw/59SNNgHT1yxu6
         XbcoFUf+4qD6YuIxY3MEKlep/EbyyWMKaXqOs2MQFM0KzzK2j4CRr0XsEFWa+bj7rGXz
         Ahq9vWvTRVN9lbLT8c0Vds77Mz+AJbvKHKAMddbAOsn3JeZTrB41ZGhXwCTVIb6GMRI2
         buTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715790796; x=1716395596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CDEc89pgD3NAUgi5TX3b61utgVx8ztRPuJv763gOBlc=;
        b=OEoSuDzUxGjkY1JrBgwPJgAakRJsZ6MTQGM0dB/WN/2Z5Fw0tg79IK+pDECms1VmzC
         nmjY9zqtfjg6VTZ/1AifZ7yqwHJuaOmf3w0oxkBEWjBnCK2G8wQywg6J+rN3eD3uOOFB
         AWNZ3UvmpsW2ASM92mUuQVb2a+9f5hozbNoMAepfQ8/ajuIKKeoCZRah3HARYQZAZ7ii
         WYmXmcn/CTkK2YyTd75q8CNPLCFzYu0PCvPvJi/Yhw+bYYC2HHU/qJgOwV/1v8PV154F
         nsLuY5/c/ZrlbWNygTy4jzIq2OUH7wFWLcaRD3OeectEGV1b4eYuPfilvTtrtXdJoRub
         8spA==
X-Gm-Message-State: AOJu0YwEAxZ+LHsZFQuXl6AxvZmh9GB7dJ8d7msqrdJNp4KKzZ84OEki
	sE4pWUvIgTe86v8u+n5TY06GWefPVnWnyOYuhyJ9RMj+Wfv7eDlCKhy+TcD7gGHoG5cWO+LqpSi
	k
X-Google-Smtp-Source: AGHT+IG6c7fngvf89uE2uDoxEKQ9nlda3QpZPZRIdKPmBj33+eLjZWHcv6aG0CzP3clEfbCe14UY5Q==
X-Received: by 2002:a05:6a00:17a6:b0:6f3:e9bc:7ed3 with SMTP id d2e1a72fcca58-6f4e02d3863mr18642344b3a.17.1715790796208;
        Wed, 15 May 2024 09:33:16 -0700 (PDT)
Received: from xps13.. ([98.142.47.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a819e7sm11301920b3a.56.2024.05.15.09.33.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 09:33:15 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] schedulers: update branchdefaults for scarthgap
Date: Wed, 15 May 2024 09:33:06 -0700
Message-Id: <29caab7f4f8fa28c42129ca9384c17dd987eb51d.1715790689.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1715790689.git.steve@sakoman.com>
References: <cover.1715790689.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 16:33:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63097

Signed-off-by: Steve Sakoman <steve@sakoman.com
---
 schedulers.py | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index 56c4260..efd049f 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -67,15 +67,15 @@ branchdefaults = {
         'branch': 'scarthgap',
         'branch_poky': 'scarthgap',
         'branch_bitbake': '2.8',
-        'branch_meta-arm': 'master',
+        'branch_meta-arm': 'scarthgap',
         'branch_meta-agl': 'next',
-        'branch_meta-aws': 'master',
+        'branch_meta-aws': 'scarthgap',
         'branch_meta-gplv2': 'master',
-        'branch_meta-intel': 'master',
+        'branch_meta-intel': 'scarthgap',
         'branch_meta-mingw': 'scarthgap',
-        'branch_meta-openembedded': 'master',
-        'branch_meta-ti': 'master',
-        'branch_meta-virtualization': 'master',
+        'branch_meta-openembedded': 'scarthgap',
+        'branch_meta-ti': 'scarthgap',
+        'branch_meta-virtualization': 'scarthgap',
         'branch_oecore': 'scarthgap',
     },
     'nanbield': {
-- 
2.34.1



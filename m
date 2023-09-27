Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 802ABE80AB5
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 14:35:13 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.19096.1695825305852972716
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 07:35:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=T56KdrUK;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.169, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1c4194f769fso83087735ad.3
        for <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 07:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1695825305; x=1696430105; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wZhCgUtA4AYhzXGC9pFsQSzI3n07wUPdwXcdPq/ITEY=;
        b=T56KdrUKstAWHwsyt+23crrrEnmEBAXXC00Xj5i5N9Iy5/VNX6cu516wCQhOeCqKtf
         kmEb1UsdiY3WeNkkOdPXfgLUkWls/RBGU0u4oAUhHRdeAMgurxBgyYxXhgIvS+mVYdw5
         Vkbla9VqxAtQ09clJ1CgI6uFvZCDKBVI9HrWm8x7xM9Ev+zDrMSwdZriaKuJTzgkh6Xw
         wLkXrDX5dhBVW48oZMfpyBLCZ7TbI2VJgYsiCKR5jiOkaUZGClDwANg1NZtEDfAvNrPK
         A7IrLnE95TJ8Y66iKFIq06dJqN4lq1w04uzsy7K1RpUk7IQXCiUKefW9z6ESg06MSJ4f
         volg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695825305; x=1696430105;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wZhCgUtA4AYhzXGC9pFsQSzI3n07wUPdwXcdPq/ITEY=;
        b=h9jlno/raW+Y8OlhVhhtDPmuOna3MNjlje7q63pofq+TaM7JFj6aDvDWRPSjlGJHCD
         QMlyZcKCIaowntMnCNfiMHx0+LMbaR6AnqWkV7eb+vm+XYl/kTq4nQxB1IvMq9lo73aJ
         BifsFv9/QpjRCMfGzZB75ufXqAwpKcDK0+1CDxnZ2wXHm+/ePRk+SOPFeXZZwloqGoHT
         Lzm5D8mc1Lx603wEHKdyGrU7gr+HS+DeUC3C+YwIRsGWTeKeCowqU7sA0/NvCH1Jqbl8
         kk8ATjVOsIhpcS4RpP9UATHt8dp7nF0BCqepGtb+a5kC1+hM603gqjPW8leDgsiLdoZQ
         6TBw==
X-Gm-Message-State: AOJu0Yw/fuJMWkGNTEUQTm62OsvQ7FgElrXKYDbg/hvZmqfFFbbuWxBh
	5Xy4PUKqJVKufOYixe90oTC4dWZ4fR8cAsUPlzI=
X-Google-Smtp-Source: AGHT+IEgiSmZFhN2ZvVo5mReGikjBFJSccQUeNgdYLsslAEraSKwY4hou5QlWkPp3qJ8DYModx0A6A==
X-Received: by 2002:a17:903:2386:b0:1c7:248e:7cb1 with SMTP id v6-20020a170903238600b001c7248e7cb1mr1594875plh.36.1695825304584;
        Wed, 27 Sep 2023 07:35:04 -0700 (PDT)
Received: from hexa.lan (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id u11-20020a170902e80b00b001bbb25dd3a7sm9592046plg.187.2023.09.27.07.35.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 07:35:04 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2 1/2] schedulers.py: use newly created mickledore branch for meta-mingw
Date: Wed, 27 Sep 2023 04:34:53 -1000
Message-Id: <e7206f0c5cf64804815030974cf3529bd51aad51.1695825197.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1695825197.git.steve@sakoman.com>
References: <cover.1695825197.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 14:35:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61141

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



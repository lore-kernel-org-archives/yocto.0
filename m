Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 837BCC25B47
	for <webhook@archiver.kernel.org>; Fri, 27 Oct 2023 07:22:24 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web11.1762.1698391338060583290
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Oct 2023 00:22:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=au0q1PEO;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-9c2a0725825so275589866b.2
        for <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 00:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698391336; x=1698996136; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c0mGAml7/4jaDg8uWbOFTEDUOoqKQwP0GA5xyEKhD8E=;
        b=au0q1PEOrQldP/nkNvPTkw1lV8mBvX58rQoGWcGbyUCQJANNZIzRyLNiy6wPT390Q5
         Ze7CoTINOsRuAGRrOZEFdAzakJGZqDAhsQXyp9HtIsu7spaS3QEvAfstZTo62dxiTe2o
         KJvRsFTc+DSdPi4xoM4z9YWm+dYB7X+eqKcYjVc8jWVRNeOkqffpXvdlf3KdkIpzzonv
         0IuoVJvQoLm0S9CtOLgxz5+jJrrCJYiwWG/Yz8tRKHa+VbzoA3xE+ZUIm2xDD+B9jkJE
         INI00hfhFVf4e0EFHixn5qLhDcOP6YunR9K2qysUTSU1Odnn+ePkeIKD2HDcbp6sxeLK
         iQow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698391336; x=1698996136;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c0mGAml7/4jaDg8uWbOFTEDUOoqKQwP0GA5xyEKhD8E=;
        b=IvdAaSczi97krwNIESxmVH4qGNIglpcCP2xzQXkpJlnQyaHFqMwQUEgNTyvWFNwrP8
         vl9t6ctUM9kDylxYF3+v2fRzQlWtQgvU1hVROuVdQ9nW1i2mwE+DDeuVMNGD6TTXJwIX
         mN9RdhCICcJ2bO7JcW4ZwgOGa2OSFZss9EkbychWaFd7GC1+w+ZgyfBH1AMgcUeW9c/D
         hRMT0ljK8MmyFPX4Ss5GgNuLpH6ulL5RlE+nTs3Ga81VVwNMVEqAMdvfaOesNlBGl/MD
         r5uTQ0XRKU4UnQjhboH22qhD3CNP9obgixemF32onl0zNmbLsAehW5nQglb78ZiNtuDl
         l4Zg==
X-Gm-Message-State: AOJu0YxFoyHs5I1V70eJhkRJ77CS0yM/vq1eIAz4mQobcDm+b2FqA9fF
	I7e+FNY718IloSIvqGiQWJOc4F40hO4=
X-Google-Smtp-Source: AGHT+IECv7mQFkO38tGZS/7Odtjrn9pyuENapxyeGiMwBeyBMtkPb4aiRrE+Wcvc1yNCkkCtKqxjeg==
X-Received: by 2002:a17:907:7283:b0:9c3:cefa:93c6 with SMTP id dt3-20020a170907728300b009c3cefa93c6mr1562649ejc.10.1698391336275;
        Fri, 27 Oct 2023 00:22:16 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:d900:f58f:7d32:a721:fcdd])
        by smtp.gmail.com with ESMTPSA id hb26-20020a170906b89a00b009ae3e6c342asm740235ejb.111.2023.10.27.00.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 00:22:16 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [yocto-autobuilder2][PATCH] config.py: add yocto-mirror to the list of separately triggered builders
Date: Fri, 27 Oct 2023 09:22:04 +0200
Message-ID: <20231027072204.111338-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 07:22:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61499

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.py b/config.py
index 50945b4..0da4c0a 100644
--- a/config.py
+++ b/config.py
@@ -132,6 +132,7 @@ builders_others = [
     "buildperf-alma8",
     "reproducible-meta-oe",
     "patchtest",
+    "yocto-mirror",
     "meta-oe-mirror",
     "auh"
 ]
-- 
2.41.0



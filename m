Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23391C25B6B
	for <webhook@archiver.kernel.org>; Thu, 26 Oct 2023 19:16:49 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web11.80003.1698347799629689533
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Oct 2023 12:16:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WKDhITEh;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-53f6ccea1eeso2146596a12.3
        for <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 12:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698347798; x=1698952598; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6LZJ1CAOlkMzSVZh+pBevIvrJ5LDncGx7TmxabbDN+U=;
        b=WKDhITEhPKZzjnVoqgEQ/pAqDeWufv6bs8p76sVW0rFXeV4H4Ay0DTQjr2gtxUfLdC
         dGXNixyHUZq/FZp/CNaxtIdrFSMcF4T6jIytRnHOf1wgsz8BuHqh26gjJeP/ENp6/15b
         5ZOZEj9D5pEpJhtqQpVWu91g5pBa5FUcMtLHBhpiqi8oqJar8He9pDqgOq038FUZ/OdF
         XqYV2diKa/2a7Eoqw6H6/owb567BOTVSngVJUBTEYtp15PU4K5vq6j1fUfHBuAeTLm+V
         UTER0P9r9jaPLp1/mEYbIe9/rdnLmSaNuMRyz8AW3wipT26cIGK2UbewR7gk8qe7pTC2
         Pirg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698347798; x=1698952598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6LZJ1CAOlkMzSVZh+pBevIvrJ5LDncGx7TmxabbDN+U=;
        b=iC0WlpnIurH9aXIr6vJzWIS0PZSbf8Qb3rQnOkrjB4st6wEmPmLv8sCOVDNdKZngxw
         I8itOoBYUbzFnmW3C1oqOHF2g+hyogSwLEF0chYoI2LF96qK1fWl3W4bAQJMbu88vSwZ
         7TTCOf9JOKgkaRrk3BxChTlG2IuQ2dut/UEmjSR16XhJYmY1LKqMZhw6O2gRmTaD1wzp
         tGYieJdbG+XAFcWngknkAEkXLmWr/BSoKKLljXzdx53r/Dhn6HSMtGSVfSbcxlTYmHmz
         /LeUvRB0pSZBLtuUonk5/dqPDmGP4XHLl91K9i9hxCXCsp3p7JZtLuIv1wrLnDnGf43p
         /GDw==
X-Gm-Message-State: AOJu0YyAh6O0y2Xpj7ETlChx7xC2LwhsKledilFZNlpGvttXwcxWHOpk
	wijfTVxquVGRaP9+Hi99XpXTY/KKoRQ=
X-Google-Smtp-Source: AGHT+IH/Jp4EKfgvSZLp3pMXVRD4tSPqvE5/93noKgoty+YgNU0ehjLa2r7pUqJoyYwDaZqKj8VxYA==
X-Received: by 2002:a17:907:6e89:b0:9be:36c2:162 with SMTP id sh9-20020a1709076e8900b009be36c20162mr593106ejc.31.1698347797811;
        Thu, 26 Oct 2023 12:16:37 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:d900:f58f:7d32:a721:fcdd])
        by smtp.gmail.com with ESMTPSA id mf19-20020a170906cb9300b0099ddc81903asm41744ejb.221.2023.10.26.12.16.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 12:16:37 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [AUH PATCH] upgrade-helper.py: trim default build targets to just 64 bit x86 with glibc and 32 bit arm with musl
Date: Thu, 26 Oct 2023 21:16:11 +0200
Message-ID: <20231026191632.52187-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 19:16:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61495

Everything else isn't really necessary and greatly lengthens AUH jobs.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgrade-helper.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/upgrade-helper.py b/upgrade-helper.py
index 4f0b6b7..1176a73 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -188,7 +188,7 @@ class Updater(object):
             self.git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
             self.poky_git = None
             self.opts['machines'] = settings.get('machines',
-                'qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl').split()
+                'qemux86-64 qemuarm_musl').split()
 
         self.opts['send_email'] = self.args.send_emails
         self.opts['author'] = "Upgrade Helper <%s>" % \
-- 
2.41.0



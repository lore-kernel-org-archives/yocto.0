Return-Path: <leon.anavi@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A2AFC47DDF
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 14:29:08 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web11.15202.1706711345857763970
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jan 2024 06:29:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=cLW/5MiN;
 spf=pass (domain: konsulko.com, ip: 209.85.208.45, mailfrom: leon.anavi@konsulko.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-55c2c90c67dso6106395a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 06:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1706711344; x=1707316144; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fv0QO22aUgzg0uBkZIEP5uNkrQ1ZsRiybTimWgNtDHU=;
        b=cLW/5MiN+g9wjj6y/4nNCYE0YR0kfqGjxCIulwQT+3DYmZzSm+unPv+hi/4lzC/PEz
         rgc+BCavjqTigr7aAqx0b5i7DUJo3KCZZUCEDMBD93I9Wcs2exTm4HZHrqeVXVEOrVKn
         +W/n/CXGiXd8n4ZQ7o2X49aNrsAs4zS408M5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706711344; x=1707316144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fv0QO22aUgzg0uBkZIEP5uNkrQ1ZsRiybTimWgNtDHU=;
        b=etq/NDQUCDMAXY5qHA1yDRlbrD+wz8ErTXbbnHGw6jbuf9m7BpkJTjK4AJi2MQ2bQK
         pbF+l4eU1QycPV78go2JFAtPxmgwdYQHUbtMGw/lrqUYQa0NyyvjWq6Uq8A77g4fAOHL
         c4yyb90SgenJc0sQL/YyDcvhadsAeXqbuNTnXGKDGNnj2KX49FC7M41U748Bgw5H9wbz
         RUXiXixxxPMiHj3KP8bQi828SoNDA5N9GFWj5w0MEh6HaXuPTgQwvCqixH/qN7S5Q+9M
         HEUMWcaflCOECHpE4Ek0e9ECZnCLFWSCPtcs8l7hBkOEni36H4rSLshB4tDftSIdaG7A
         wgOg==
X-Gm-Message-State: AOJu0YwemrfAPICg+6hXVCc2s4YUiGKNl2E6RMvA8DkdrP6QgCU0gbF7
	g4+CsrzfdJQV0J8VnThnsaEeKICodd504qllEAGCMvhoHfjlbQ7UoMvETsL/YP0aKkex67KgDKJ
	h
X-Google-Smtp-Source: AGHT+IG+SiSVYgT3r5OEjOTyThe1RX69Pw41Q5wvEPLwAGGcNnArUUR2z5oMyybfvnj+dZGQK1blRw==
X-Received: by 2002:a05:6402:a4a:b0:55e:fd3c:66e8 with SMTP id bt10-20020a0564020a4a00b0055efd3c66e8mr988151edb.11.1706711343936;
        Wed, 31 Jan 2024 06:29:03 -0800 (PST)
Received: from leon-desktop.. ([46.55.231.62])
        by smtp.gmail.com with ESMTPSA id e8-20020a056402104800b0055ef2c893b3sm3595864edu.52.2024.01.31.06.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 06:29:03 -0800 (PST)
From: Leon Anavi <leon.anavi@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com,
	leon.anavi@konsulko.com
Subject: [meta-integrity][PATCH 2/2] integrity-image-minimal: Fix IMAGE_INSTALL
Date: Wed, 31 Jan 2024 16:28:58 +0200
Message-Id: <20240131142858.2666224-2-leon.anavi@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240131142858.2666224-1-leon.anavi@konsulko.com>
References: <20240131142858.2666224-1-leon.anavi@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 14:29:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62351

Append to IMAGE_INSTALL rather than directly setting the variable
and does it after inheriting core-image.bbclass because in it
IMAGE_INSTALL is set with a default value CORE_IMAGE_BASE_INSTALL.

Variable CORE_IMAGE_BASE_INSTALL includes CORE_IMAGE_EXTRA_INSTALL
so the change allows adding auditd to CORE_IMAGE_EXTRA_INSTALL as
per the instructions in meta-integrity/README.md.

Signed-off-by: Leon Anavi <leon.anavi@konsulko.com>
---
 .../recipes-core/images/integrity-image-minimal.bb     | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/meta-integrity/recipes-core/images/integrity-image-minimal.bb b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
index 5022170..856249f 100644
--- a/meta-integrity/recipes-core/images/integrity-image-minimal.bb
+++ b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
@@ -2,18 +2,16 @@ DESCRIPTION = "An image as an exmaple for Ima support"
 
 IMAGE_FEATURES += "ssh-server-openssh"
 
+LICENSE = "MIT"
+
+inherit core-image
 
-IMAGE_INSTALL = "\
+IMAGE_INSTALL += "\
     packagegroup-base \
     packagegroup-core-boot \
     packagegroup-ima-evm-utils \
     os-release"
 
-
-LICENSE = "MIT"
-
-inherit core-image
-
 export IMAGE_BASENAME = "integrity-image-minimal"
 
 INHERIT += "ima-evm-rootfs"
-- 
2.34.1



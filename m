Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33AFC54E58
	for <webhook@archiver.kernel.org>; Wed, 20 Mar 2024 18:53:54 +0000 (UTC)
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
 by mx.groups.io with SMTP id smtpd.web10.53880.1710960827650346624
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Mar 2024 11:53:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Yb5j2Wln;
 spf=pass (domain: konsulko.com, ip: 209.85.210.194, mailfrom: tim.orling@konsulko.com)
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-6e6c8823519so259433b3a.0
        for <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 11:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1710960826; x=1711565626; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u+NeJUvn5ZsZGrnzq0Ubhybg4ti1Fmi59K9g4gnYk9I=;
        b=Yb5j2WlnwukJ3jpdDwr/b/g7E1t1IRRgOIbIj0BgqzvYnoi9QqfhiApeD5TBXC855J
         lN91461xXXQUWjwO78Uf8aatLDeMG3V1uQL0IolfwpCpB+nEj8kMYzevGXjOtYkqP9Mg
         X7qbGcqjlo36/H3JoHcq1SjETdbJrnLA1a2Ns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710960826; x=1711565626;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u+NeJUvn5ZsZGrnzq0Ubhybg4ti1Fmi59K9g4gnYk9I=;
        b=BfNK4UItCAQMfZNMQ2GIFbda4uqgLutu/7jCWL89nT63bqGGkXj18StSEtjad0HjGe
         vW9HMJ3uRSSA5HHyQkY23QEkQgC26UtGKmLZAfm5byNb1o1isVSfxw7/Zo3y/5yyufIw
         Qv57tCuYu93/d8lozRpGm79aKJdxdr1DLrwyf5XjOU4Sk/0zVnIUhUFOl7lkcj/QbWO6
         k3D7N4OvkxJCLnrEWo3mgd9FUS/gtGuVm4Y3ONdQg3GqjyAqsaFp3M5ozSabQL1irMDC
         4R/ymwPuNPMkY4rCW7l4jYPslueEuzATYsKkquVv+Z1HRHUvC+0tq6hb4rHK9782q/lk
         tSbA==
X-Gm-Message-State: AOJu0YwtC/VBtdcmKrXyKpKz6rdZqz1kzkg8TUQrTnD+LtUuEs1brQTm
	Qy5PwcYuDB5uai2Pknrhre2IhLWCXhxdjRe0WO5tzDlDHAGPUIhXu14xbCI+w9pFh6FP4TE7lKL
	FIh4EmfO4
X-Google-Smtp-Source: AGHT+IGKv8QR713U3SYNkqkUGdZLNaLaGPlF3jTvWnBhQh53VZRNiAG6fcACT6DI1/7lOkyUYqXM/Q==
X-Received: by 2002:a05:6a20:6716:b0:1a3:6378:1e8f with SMTP id q22-20020a056a20671600b001a363781e8fmr5873166pzh.32.1710960826365;
        Wed, 20 Mar 2024 11:53:46 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:fa32:ee43:a809:30af])
        by smtp.gmail.com with ESMTPSA id gu21-20020a056a004e5500b006e6288ef4besm12015354pfb.54.2024.03.20.11.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Mar 2024 11:53:46 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [meta-lts-mixins][scarthgap/u-boot][RFC PATCH 2/2] u-boot: bump to v2024.04-rc4
Date: Wed, 20 Mar 2024 11:53:17 -0700
Message-Id: <20240320185317.2173087-3-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240320185317.2173087-1-tim.orling@konsulko.com>
References: <20240320185317.2173087-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 18:53:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62808

https://github.com/u-boot/u-boot/compare/v2024.04-rc3...v2024.04-rc4

Release announcement:
https://lists.denx.de/pipermail/u-boot/2024-March/547988.html

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 recipes-bsp/u-boot/u-boot-common.inc                            | 2 +-
 ...{u-boot-tools_2024.04-rc3.bb => u-boot-tools_2024.04-rc4.bb} | 0
 .../u-boot/{u-boot_2024.04-rc3.bb => u-boot_2024.04-rc4.bb}     | 0
 3 files changed, 1 insertion(+), 1 deletion(-)
 rename recipes-bsp/u-boot/{u-boot-tools_2024.04-rc3.bb => u-boot-tools_2024.04-rc4.bb} (100%)
 rename recipes-bsp/u-boot/{u-boot_2024.04-rc3.bb => u-boot_2024.04-rc4.bb} (100%)

diff --git a/recipes-bsp/u-boot/u-boot-common.inc b/recipes-bsp/u-boot/u-boot-common.inc
index 3f29f23..69ecff8 100644
--- a/recipes-bsp/u-boot/u-boot-common.inc
+++ b/recipes-bsp/u-boot/u-boot-common.inc
@@ -12,7 +12,7 @@ PE = "1"
 
 # We use the revision in order to avoid having to fetch it from the
 # repo during parse
-SRCREV = "d49fa3defa50c6d3f04acbb52fd486c13c14ab6a"
+SRCREV = "f3c979dd0053c082d2df170446923e7ce5edbc2d"
 
 SRC_URI = "git://source.denx.de/u-boot/u-boot.git;protocol=https;branch=master"
 
diff --git a/recipes-bsp/u-boot/u-boot-tools_2024.04-rc3.bb b/recipes-bsp/u-boot/u-boot-tools_2024.04-rc4.bb
similarity index 100%
rename from recipes-bsp/u-boot/u-boot-tools_2024.04-rc3.bb
rename to recipes-bsp/u-boot/u-boot-tools_2024.04-rc4.bb
diff --git a/recipes-bsp/u-boot/u-boot_2024.04-rc3.bb b/recipes-bsp/u-boot/u-boot_2024.04-rc4.bb
similarity index 100%
rename from recipes-bsp/u-boot/u-boot_2024.04-rc3.bb
rename to recipes-bsp/u-boot/u-boot_2024.04-rc4.bb
-- 
2.34.1



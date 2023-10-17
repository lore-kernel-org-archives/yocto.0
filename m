Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ACBECDB465
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 00:55:44 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web10.197618.1697504138089947988
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 17:55:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Mp4osTx+;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6b5e6301a19so2971089b3a.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 17:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697504137; x=1698108937; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i0hKPh3veLRU35yUXGNcSQxKtSq1jIfq8Mkf1OG2dIo=;
        b=Mp4osTx+WUog6NUFAS9n7/3xFn2KTJPVnp15e0KaD3B0GYwFF4epIzq5ly3ObFdByT
         ICeYGRAqLMmptEUSQcNRTbNT90pe2TPWYxAKYJILcSOgu+F1H6Fr3FubVX+bLQ91fL88
         8nDSAMqRuKLOOZ4L0bKjPD+BRmEGmJNgkPyL4txzVTCG9AUEe7skoGN6Z475Ad1R+Ohx
         QBChKB4XuZEpdi85+VPhznnF1zC5tlRxOug2dPlzFmJRoPBh96iG+340I4BFKDjeWBbH
         /V9Lj0gDdwOywDiWUWtD4DYmZ+U36GwkL3/lX6oxDx/ecVEsCuOX+sg0KaUehFChFVuM
         FtiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697504137; x=1698108937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i0hKPh3veLRU35yUXGNcSQxKtSq1jIfq8Mkf1OG2dIo=;
        b=lk+EA2cy3oSnWCoMDSawhv/nHkibapTgS+okGQVxnYbtU2Ai1+WeTmOHxMnBcWGdV9
         c5yXYQS5/iTCdFhqvJSdBTgjsZuIBs5kBTWCLmCPLqx/ZqAXlq7OWINKtqwKInbdEFr9
         VPC+AE7e+kE3YgnlMi5rJTqJcC8Rl94tLJw9dWGNvAc1pWEd1vxFVnnF5S0wEqnRoT/J
         nSeXIPjHZs3HAV4Ixr5ZIhTB8LIatbhInrK44ZDCyar7o7aAAibiybBUoT4UmhHPokz1
         HCeKYG8BhfELcLBdw2RSqW8tAqUdIXZDnlfxmdgLGPGw2bj5/DroDeIbrRrm2Sp5AZxE
         i4bw==
X-Gm-Message-State: AOJu0YzOC6eZ5AW4/E30HXyiFjBHGL3f6s+tnoJLWyTXOgGtgsFiGgu6
	HAgN8wvFKvsV2wqFREqfF4j5OAeXnmKjsQ==
X-Google-Smtp-Source: AGHT+IFxcOzLVIf7xAg8LbUsLwRIOAgzoOxamQ0UsorDLr7eSi4gFrTkHVajde4ZHqhH3xznJ8iRFw==
X-Received: by 2002:a05:6a00:15c5:b0:6b8:69fa:a11 with SMTP id o5-20020a056a0015c500b006b869fa0a11mr925518pfu.12.1697504137141;
        Mon, 16 Oct 2023 17:55:37 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:ab5b:2a7b:aba2:aa8c])
        by smtp.gmail.com with ESMTPSA id z68-20020a626547000000b00688435a9915sm178337pfb.189.2023.10.16.17.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 17:55:36 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 2/2] update.py: skip unless layerbranch.updates_enabled
Date: Mon, 16 Oct 2023 17:54:41 -0700
Message-Id: <20231017005439.2616534-3-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231017005439.2616534-1-tim.orling@konsulko.com>
References: <20231017005439.2616534-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 00:55:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61357

If layerbranch.updates_enabled is false, skip the update.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/update.py | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/layerindex/update.py b/layerindex/update.py
index 7de9c0d..e7e5c63 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -375,6 +375,11 @@ def main():
                         if layerbranch_source:
                             layerbranch.vcs_subdir = layerbranch_source.vcs_subdir
 
+                    layerbranch_updates_enabled = LayerBranch.objects.filter(layer=layer, branch=branchobj.id, updates_enabled=True)
+                    if not layerbranch_updates_enabled:
+                        logger.info("Skipping update of layer %s  branch %s - updates disabled" % (layer.name, branchname))
+                        continue
+
                     # Collect repo info
                     urldir = layer.get_fetch_dir()
                     repodir = os.path.join(fetchdir, urldir)
-- 
2.34.1



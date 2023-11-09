Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A9F3C4332F
	for <webhook@archiver.kernel.org>; Thu,  9 Nov 2023 20:25:19 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web11.8777.1699561509812439385
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Nov 2023 12:25:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TXThxgfI;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1cc2f17ab26so11147225ad.0
        for <yocto@lists.yoctoproject.org>; Thu, 09 Nov 2023 12:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699561509; x=1700166309; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oUFseODKAJQ1DmMKGZ7Zd6qA1g3zZ9b94PFNn0QNEDQ=;
        b=TXThxgfICwwCfJI0BALRSx3tyBtwKFejh8ee2Lugwy9z7CIe2RJ5pFLEobUvbUFTUe
         Dwpg4wMOJA+m0Exg8K1MmgeVOwqbDzN15LIIIbqHm6oNCH890IB4bEST1DtIPrp08Bf2
         qIcLGrmBOSz4rM30yHLwbo/Xq5Stk2RIsE7UwFKnfBiEva5Ov/cytEguu5JU0a3n7Vd0
         8D+ahp+drq+WIjkcCFgd44+0ypkj72ccHcCtsdXNl94V82PUWaucCBBX/6n+P17ZXLXK
         BtMddGNKevmagAvZFHwVKGiHFqpmEpbhO0zl5fMRxxElEZ5AoRL1EyvpncojyYKN3/sK
         wrNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699561509; x=1700166309;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oUFseODKAJQ1DmMKGZ7Zd6qA1g3zZ9b94PFNn0QNEDQ=;
        b=qAadICoMaGUkYXvWT1Bx35Xm44VIstV9ksF2GGHuwnriVHKYuSr9KGTtBeC8VF6ohN
         +T+OXZ11O5FhdWUOmdH3K+mnRXiaRfVx0u2YfOuqlQZGCUx1T66nwMXX8LvABR6f+dLz
         xqtLaIZQctHwDv7jA4tpExa5tltJqkw8qYNus1u0FvjfqkB7SnTtzQOHsDCRiVJ8PQxm
         uPMYKeWRLeMMCTAEvLR04yY0j/IAGWsSeyU7jtrWf61fADiziKz9gA1ncRrwB/C4Wosj
         kENkZE/9iTtnTTflz6VWCBVc6SmZRf08u61xpBX5zT1fSFkDFOLtz3gzWjOK/ui0i42a
         Prxw==
X-Gm-Message-State: AOJu0Yx0wfav9XzyF9zOJ0iEZ79nZ+Jy/hlJHvc3QDtpPiOfIlLkKWTx
	veK6M5WGrHVGQq+efrGcN8CGx2srS76lTA==
X-Google-Smtp-Source: AGHT+IFK4w/CMJjzwziuHYM4DSB9EeQFipg9Ak49+sOZARSqgi8vFLhvX/4U7EXkkTSCD003vTMCjA==
X-Received: by 2002:a17:902:f551:b0:1cc:4fd6:71c9 with SMTP id h17-20020a170902f55100b001cc4fd671c9mr7847392plf.19.1699561508704;
        Thu, 09 Nov 2023 12:25:08 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:e261:4b71:4fbf:8070])
        by smtp.gmail.com with ESMTPSA id 6-20020a170902c10600b001cc20dd8825sm3930035pli.213.2023.11.09.12.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 12:25:08 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] update.py: fix updates_enabled for newbranch
Date: Thu,  9 Nov 2023 12:24:23 -0800
Message-Id: <20231109202422.3537398-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Nov 2023 20:25:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61648

When a new release is run for the first time, no LayerBranch exists
yet and the update_enabled cannot be queried. The unintended result
is that all layers are skipped. Move the update_enabled check into
the code path where the layerbranch already exists.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/update.py | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index e7e5c63..3da74e3 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -361,6 +361,12 @@ def main():
                         if layerbranch.actual_branch:
                             branchname = layerbranch.actual_branch
                             branchdesc = "%s (%s)" % (branch, branchname)
+
+                        layerbranch_updates_enabled = LayerBranch.objects.filter(layer=layer,
+			                                                         branch=branchobj.id, updates_enabled=True)
+                        if not layerbranch_updates_enabled:
+                            logger.info("Skipping update of layer %s branch %s - updates disabled" % (layer.name, branchname))
+                            continue
                     else:
                         # LayerBranch doesn't exist for this branch, create it temporarily
                         # (we won't save this - update_layer.py will do the actual creation
@@ -375,11 +381,6 @@ def main():
                         if layerbranch_source:
                             layerbranch.vcs_subdir = layerbranch_source.vcs_subdir
 
-                    layerbranch_updates_enabled = LayerBranch.objects.filter(layer=layer, branch=branchobj.id, updates_enabled=True)
-                    if not layerbranch_updates_enabled:
-                        logger.info("Skipping update of layer %s  branch %s - updates disabled" % (layer.name, branchname))
-                        continue
-
                     # Collect repo info
                     urldir = layer.get_fetch_dir()
                     repodir = os.path.join(fetchdir, urldir)
-- 
2.34.1



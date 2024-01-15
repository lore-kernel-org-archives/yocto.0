Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11D63C47DA9
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 18:03:33 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web11.89456.1705341807639378391
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 10:03:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GbYldAY5;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6da6b0eb2d4so4505463b3a.1
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 10:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341807; x=1705946607; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rQBfUxQpT+iHqV9dUv/Dz+CpVOq4dYTiW4sRo3NuEvs=;
        b=GbYldAY5oe7s/sm4MTvbjOqmCcE8B+jybSaY+r0cOLvVYFvqLoIzScI5Loj6cZWLzy
         9NMf4TxeZAJcIzM2liaztv9l/c4FN+sf0fWGkMnsk+dHihprlA6UXelJBmCzPvT4wJso
         3Z8ozQ/k0G4jdTatIOXNQoQvTJIu5eXkDp5j07Hzui52lCtfwMzU0Mq2oXJ8jmPYHwdJ
         /M2TWiUg54am9jNAv3Q7gUVvHfqtWHI9JNoVfDn6Wq+bim0SltJAjtGxi9C5/pfsqTTg
         lGvKMgkDAn7xkhdVmSd+7B/BNuLMXZsVF1eAKAKQJMVtrWcB3Gh0iZIVQrFkAgTBnHup
         A4Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341807; x=1705946607;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rQBfUxQpT+iHqV9dUv/Dz+CpVOq4dYTiW4sRo3NuEvs=;
        b=Ow6f8KlfCSXmVqXwYpukIT3xdldfwPcn9d1gx+t5xfFLa4YNJfhoKQzeVV+2w/8yGM
         KAiKRWsvxnn+emP728swTaWykEGhYmpOv08jxoZbur2HT5QNRG3TGG4fpDyBrrMHbzr3
         O2g5+Hs+FlehERLYIuUXtsf+U9p1elSIKCtuway/4SOEj0+VNjdc/3INvyeplJTdKewL
         5unULGMk7zjdGGLwWPnv2oZk6QtPG0YYn7Dcbi1jxHITeOpxgePqNaKbZRvScn7JBPrr
         7x0kfpCs2a9mDnUYSlX3BI3eqZT6g22q5XeOsdcx1g3SmvKYVNAgoCg/BtmDJUe31aOL
         ZLjA==
X-Gm-Message-State: AOJu0Yz1GAf8rkKoMLwaNrO35yr6bpcKWZ0fAFs8WmLeSLJiuqBsOx+0
	41hhgDhcqL/tf1wp4jiBCjEm3oyt3xc=
X-Google-Smtp-Source: AGHT+IEwhWxnMCe9o0AFInb9SIsSqx3s9bFhRiVgBkXyNMnEdRYhrIe4YE5yI/c7I5K/AbkmdDgLLQ==
X-Received: by 2002:a05:6a20:96c3:b0:19a:61d2:6fa7 with SMTP id hq3-20020a056a2096c300b0019a61d26fa7mr2319323pzc.105.1705341806729;
        Mon, 15 Jan 2024 10:03:26 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id s5-20020a056a00178500b006d96ad39308sm7880792pfg.165.2024.01.15.10.03.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 10:03:26 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 3/6] rrs_upgrade_history: remap new srcrev fetcher API
Date: Mon, 15 Jan 2024 10:03:14 -0800
Message-Id: <1fccf3217540a67751e6890ccfacfa23fc48b102.1705341467.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341467.git.tim.orling@konsulko.com>
References: <cover.1705341467.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 18:03:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62156

When performing rrs_upgrade_history for commit date 8/24/2023,
the 'fetch2: Add new srcrev fetcher API' bitbake commit is not
automatically added.

Fix this by remapping 'cooker: Fix error message' (8/22/2023) to
the tag on 8/24/2023 'fetch2: git: Check if clone directory is
a git repo'.

This allows upgrade history for oe-core to continue across the
8/24/2023 date.

Fixes:
2024-01-08 23:59:07,114: DEBUG: run cmd '['git', 'show', '-s', '--format=%ci']' in /opt/workdir/git___git_openembedded_org_openembedded-core
2024-01-08 23:59:07,215: DEBUG: output: 2023-08-24 13:34:35 +0100
2024-01-08 23:59:07,227: DEBUG: run cmd '['git', 'rev-parse', 'HEAD']' in /opt/workdir/bitbake
2024-01-08 23:59:07,329: DEBUG: output: a06619951a43acb80b80d92e0caac560657ca249
2024-01-08 23:59:07,448: DEBUG: Running "GIT_DIR=/opt/workdir/bitbake/.git git merge-base --is-ancestor 87104b6a167188921da157c7dba45938849fb22a HEAD"
NOTE: Starting bitbake server...
ERROR: Failure expanding variable fetcher_hashes_dummyfunc[vardepvalue], expression was ${@bb.fetch.get_hashvalue(d)} which triggered exception AttributeError: module 'bb.fetch2' has no attribute 'get_hashvalue'
The variable dependency chain for the failure is: fetcher_hashes_dummyfunc[vardepvalue]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 rrs/tools/rrs_upgrade_history.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/rrs/tools/rrs_upgrade_history.py b/rrs/tools/rrs_upgrade_history.py
index 9b74a05..42ba9b8 100755
--- a/rrs/tools/rrs_upgrade_history.py
+++ b/rrs/tools/rrs_upgrade_history.py
@@ -182,6 +182,7 @@ def upgrade_history(options, logger):
                 # Filter out some bad commits
                 remap_range('fef18b445c0cb6b266cd939b9c78d7cbce38663f', '39780b1ccbd76579db0fc6fb9369c848a3bafa9d')
                 remap_range('5796ed550d127853808f38257f8dcc8c1cf59342', '547128731e62b36d2271c4390b3fee2b16c535dc')
+                remap_range('a06619951a43acb80b80d92e0caac560657ca249', '2117db3146ce38bb4a6e2df40b6cd2ab11b514d5')
 
                 if options.stop_commit and (options.stop_commit not in [x.split()[0] for x in commit_list]):
                     logger.error('Stop commit %s is not in repository %s' % (options.stop_commit, repodir))
-- 
2.34.1



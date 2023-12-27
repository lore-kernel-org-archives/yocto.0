Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22564C46CD2
	for <webhook@archiver.kernel.org>; Wed, 27 Dec 2023 15:59:02 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web11.103828.1703692732518726521
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Dec 2023 07:58:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=G9GN8SvC;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.169, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-5cdfed46372so2627658a12.3
        for <yocto@lists.yoctoproject.org>; Wed, 27 Dec 2023 07:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1703692731; x=1704297531; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gIbh3+IhHQ4yz0mFa2v+/WI0aR5ia8IzIIbMUX4sU4I=;
        b=G9GN8SvCDQ2KKpacMTYig5XRIefSlRhFfp0M/Z3TNZpV+vQudMwa/4t8Ra4m5SSW4y
         l4n2Ckdq3fuscat1kENxpaH9aKwGqrEwTzniMORRjsVnybk7+1UtxiOUMbDtPcjwNr5J
         glh0lfw439Xoda/YZvaSHWGrwSX+H8hv9uplMiRrtyMr14YzcvrPcaP3DfoqRZbVcZmX
         8+kqTK+RSJvFNNz6l6qI7PqkpLCKLHzctgcVE8SvcaMPsOkknAtPR6WSKWUbt0etilJc
         I8rbyOyGFftlPRVhpYNEUsgFOb/Lsdga481UmhVnlOHSf747guw3dFA5dbjdCqeeJLVP
         MtGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703692731; x=1704297531;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gIbh3+IhHQ4yz0mFa2v+/WI0aR5ia8IzIIbMUX4sU4I=;
        b=j/6Kq5Ci+4+ZIlJFxxcsAPm5JTz5yG98WsYYz4d3itGtcvtLJqrbJkwuslp6TjA3T5
         3h21ZJknus4VJ/UX7hZYYHUCIcg7QEYovK9i71PJAcGkjVCk+H2iceD9Yp5YNSFiHS02
         JuQJ73WVAWWxQfMhNLEQxXVi12jR2uHwacl8R92tyVAyssINr7UMIz4VjRcynapR0pWJ
         W03RyOo2FBa8SdZE3PGgOHpX0ah3mSuxXPBuPRxUa7c+Fz9Jco/kLo5HxnO291Chhib4
         u6xPIA+NRwf6BXPtxFbOTBFHtXtAn/HulnIn/7IyiqNYY6qjDQN8EbyLbsBjleGQkpkr
         nxPQ==
X-Gm-Message-State: AOJu0Yz9TfhPQ3HBhyVNI5O3oUpLNHIvtgZmVwGzzMYUx0MTy8WPhEdn
	M/TCwxW7QeWDAz/v2oOTjCB2XC3ucW7F0fqunjQExOsbG9M9eg==
X-Google-Smtp-Source: AGHT+IHPSVoALyRkCU8Ifn9GhZgwa7j/ZlMNsfWdWWcW1ntDrHHbNCHq/vwZvGEN9ZrEiovU9szawQ==
X-Received: by 2002:a17:90a:cb87:b0:28b:fe1d:b142 with SMTP id a7-20020a17090acb8700b0028bfe1db142mr4679743pju.59.1703692730817;
        Wed, 27 Dec 2023 07:58:50 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-234-108-41.hawaiiantel.net. [72.234.108.41])
        by smtp.gmail.com with ESMTPSA id fz21-20020a17090b025500b0028c512f8040sm6763443pjb.24.2023.12.27.07.58.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 07:58:50 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] schedulers.py: update to reflect layers that now have nanbield branches
Date: Wed, 27 Dec 2023 05:58:40 -1000
Message-Id: <5d1f8c3c26a8dd4747e630099458213232531dd6.1703692639.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1703692639.git.steve@sakoman.com>
References: <cover.1703692639.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Dec 2023 15:59:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62045

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 schedulers.py | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index 9b97545..4d7522a 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -64,15 +64,15 @@ branchdefaults = {
         'branch': 'nanbield',
         'branch_poky': 'nanbield',
         'branch_bitbake': '2.6',
-        'branch_meta-arm': 'master',
+        'branch_meta-arm': 'nanbield',
         'branch_meta-agl': 'next',
-        'branch_meta-aws': 'master',
+        'branch_meta-aws': 'nanbield',
         'branch_meta-gplv2': 'master',
-        'branch_meta-intel': 'master',
+        'branch_meta-intel': 'nanbield',
         'branch_meta-mingw': 'nanbield',
-        'branch_meta-openembedded': 'master',
+        'branch_meta-openembedded': 'nanbield',
         'branch_meta-ti': 'master',
-        'branch_meta-virtualization': 'master',
+        'branch_meta-virtualization': 'nanbield',
         'branch_oecore': 'nanbield',
     },
 
-- 
2.34.1



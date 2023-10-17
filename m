Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94660CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 00:54:54 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web10.197606.1697504092591274154
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 17:54:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G5pzTWG9;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: ticotimo@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3b2b1ab6c98so2346289b6e.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 17:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697504091; x=1698108891; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X2bnyJIaC2c9fHLQhH8z6LPlY6Xe0pPB7RkJFxInJFk=;
        b=G5pzTWG9J4zfS5t/W/iY+nvKDm35QE4489TFVHGS8WmNGa8rqfVqj6fct5dcdGSJqP
         dRG/ksxiWn45xmU+5k/Z/OwsZih4hMb9zk7fccaDl8DMQPZmgmFq1SjkyqpP3EHR4Rcg
         gAu4nvoa/TFJ6dKOgdSW3rjn7Yxcq9M9VDfUPSeKofNY183A7dday8DBY0JHHQgMTVys
         R3YTbRmMKMeaMQcxa0B4WUPzirTCk+EvUutL1vOHQqswdi/s796VKABV7T2O3dGOoxl9
         6Hq8wYhaHQ3I6c07HKOjZu2rCV4b9xK5icRahXycTW2KdjC0qyqIoTAhxMZ1XZNSBS/U
         gshA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697504091; x=1698108891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X2bnyJIaC2c9fHLQhH8z6LPlY6Xe0pPB7RkJFxInJFk=;
        b=IopkS1ZFfWaJ2tTcqmRXdUDCTQqx0B4kaPQgRuOH3ilIv+xnV3WBHGV62xqwzL14nr
         Q0DtCocoS39B/5gUMejtLammmCPUjzruQ5YU9jlEwHEFSuCA+gMqWd5gwv9q6tfpQixV
         u3DC3osoU7NjnipKMAuWNYf/U7Aq88KyPOkVma50BXd4C37/BXPJF3tnpk/KrJD6uB4y
         0Ja8juJpWh8p8Ng3+3dVn/yS366myj5yqnUo7MitRicuJz7jQTeiqkjj1mrZkDBUlvYu
         nrKjjYk4foAkoRwE4dnM6bFIFs/rjGq5PQIJ4FtcEz5M05bDjD8/Q1bQxXmOVCA6szA9
         3qWg==
X-Gm-Message-State: AOJu0YxUywTHYyPaAVqyQAYbSw+2Rz0YRd9uzmVXI0R0xF9HSfJ7ZS9O
	YmzYCvrTcAV+Ou+f5fivAgtXKvXfRjzAcw==
X-Google-Smtp-Source: AGHT+IGmkChjp0gvKsC3w/ZoKqrgGnwoLL5zIAt88lHy7aV9TaBzpCCUbFWg4QWKniwB26xk6V4gog==
X-Received: by 2002:aca:1702:0:b0:3af:8ed3:d7a3 with SMTP id j2-20020aca1702000000b003af8ed3d7a3mr934601oii.54.1697504091501;
        Mon, 16 Oct 2023 17:54:51 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:ab5b:2a7b:aba2:aa8c])
        by smtp.gmail.com with ESMTPSA id z68-20020a626547000000b00688435a9915sm178337pfb.189.2023.10.16.17.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 17:54:51 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 0/2] Allow per LayerBranch update disable
Date: Mon, 16 Oct 2023 17:54:37 -0700
Message-Id: <20231017005439.2616534-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 00:54:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61355

Some layers have branches which match the stable release branch names, but
fail to update for some reason. Rather than completely disable updates for
a LayerItem, allow for a LayerBranch to have updates disabled.

Before this change, we only had the option to completely disable updates for
a layer (Change from "Published" to "No Update" state) or completely disable a
Branch for all layers. These hammers are too heavy and needed a little nuance.

Tim Orling (2):
  models.py: add updates_enabled to LayerBranch
  update.py: skip unless layerbranch.updates_enabled

 .../0047_layerbranch_updates_enabled.py        | 18 ++++++++++++++++++
 layerindex/models.py                           |  2 +-
 layerindex/update.py                           |  5 +++++
 3 files changed, 24 insertions(+), 1 deletion(-)
 create mode 100644 layerindex/migrations/0047_layerbranch_updates_enabled.py

-- 
2.34.1



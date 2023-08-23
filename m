Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBEEC71134
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 18:25:40 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web11.503.1692815132407103575
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 11:25:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=kt4Ompjr;
 spf=pass (domain: konsulko.com, ip: 209.85.219.48, mailfrom: scott.murray@konsulko.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-64f383be0d4so24015186d6.3
        for <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 11:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1692815131; x=1693419931;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZsBJ93DWvKTJC4U6JlKrxbuVTpbLXu7V5nXg8h0HiaY=;
        b=kt4Ompjr0bZI1QP5Vigm8S60wTvXt3HkxUqiinoRj0is2V/xZQMugdzeImpou07bxX
         l75vmb5UA1z+n2Bmsjv4/XLq0ycGciiF+T4P/uITwWie7qg0rIn2OQXaFmFuZ6jmGyrq
         mtA5R2YWV+BkBPBWzC6RnvEFI/jFWrPnjKPhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692815131; x=1693419931;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZsBJ93DWvKTJC4U6JlKrxbuVTpbLXu7V5nXg8h0HiaY=;
        b=f2sbqxZdkSmWIXo2iiJxV4rGDcbzSpBdMSiqTsjV1ZH+tPN4nBhg9r+qLqRzb2iB6N
         bH3gRVJCIWcNHN2gy7/YKH9qYLburCvTVB/u3AA9pa5EsqUvrI1N+NmOLeAHI7KKy251
         MFfvfN/VYLHLmxo1ME1SdDwI6DEk4xIkFBDO6+U42w6l+XI+mOJyCl7u0f2mUXKv3WBp
         N3k/oHPFLZm+hwLKQHtl6h+pKiqU0e88Zahy+n2wWJS3Tewud+o5TSDqllin8jOwrshW
         LvqMdM/SJ96yKL19MXvwk9EtbYGiiXBBQNdvbLSvEuFSwPKId+IUuvGOVtlGMAVloPqO
         BDBA==
X-Gm-Message-State: AOJu0Ywnw9zTdrq6aZM6oWqijmBom3u4boYQkQzqE7QSSwpL57F5iPir
	YaDqKgfkpq0lg79q/6Uz3DfbBUBvqgEFdoAPpcg=
X-Google-Smtp-Source: AGHT+IGw5hpKA5W3EEMnht23CjaunlmRHLoFAM7wTbhMfEqTGln/mlxPdkyeOdLx9wYezpX8BSQoHQ==
X-Received: by 2002:a05:6214:1395:b0:649:cbd0:8127 with SMTP id pp21-20020a056214139500b00649cbd08127mr13972465qvb.57.1692815130776;
        Wed, 23 Aug 2023 11:25:30 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a16b600b0076cf49bcb50sm4107431qkj.37.2023.08.23.11.25.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 11:25:30 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][PATCH 0/4] kirkstone/rust-1.68 branch updates
Date: Wed, 23 Aug 2023 14:25:08 -0400
Message-ID: <20230823182512.1073623-1-scott.murray@konsulko.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 18:25:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60863

Pull in a couple of recent fixes that were backported to Mickledore, a
librsvg update that Steve has queued in mickledore-nut, and a fix for
building for RISC-V platforms.

Alexander Kanavin (2):
  cargo.bbclass: set up cargo environment in common do_compile
  rust-common.bbclass: move musl-specific linking fix from
    rust-source.inc

Chee Yang Lee (1):
  librsvg: upgrade to 2.54.6

Scott Murray (1):
  Fix RISC-V support

 classes/cargo.bbclass                               |  1 -
 classes/cargo_common.bbclass                        |  4 ++++
 classes/rust-common.bbclass                         |  8 ++++++--
 classes/rust-target-config.bbclass                  |  2 +-
 conf/layer.conf                                     |  4 ++++
 lib/mixin/rust.py                                   | 13 +++++++++++++
 recipes-devtools/rust/rust-source.inc               |  5 -----
 .../{librsvg_2.54.5.bb => librsvg_2.54.6.bb}        |  2 +-
 8 files changed, 29 insertions(+), 10 deletions(-)
 create mode 100644 lib/mixin/rust.py
 rename recipes-gnome/librsvg/{librsvg_2.54.5.bb => librsvg_2.54.6.bb} (97%)

-- 
2.41.0



Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96D2C4332F
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 16:43:05 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web11.18006.1671208985140622945
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 08:43:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aqqGaa+U;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id t17so3022172pjo.3
        for <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 08:43:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=xRhiE4HVhRjVYtRMZXtcRrMZ3gUiRY1/0bPbrKgjU38=;
        b=aqqGaa+UEWQr4nw8Fs8l/vIta6UoY2jHUx5DIiYSIRlo0NDksHHMkXdaU54a0QXFdD
         naxNbN2vb58HLgGAw/0fLqymouZUve1tq+5cYoOwoMD+UN6NIZHbeKbJ49BOFyWDaz0a
         Mhz/gVyMEEPiuieS3h2N8XZsfjLk7TuOmgBwb2fRh/2jVMYsMoPPQTX0EUwqrN7QGdpf
         OCbeGVpbpuOCxvMp+Ro/gbiZeLc4WKjGuzNT6NB7A36CdOmuWW4Dq4tsSA3u9V5pMbw8
         KkYEn7rxeyI+D1eLyknOufR+5mDWanEsTystlh1OdlLQhIx0IVmzNZ6KgI9ThbERqBos
         RX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xRhiE4HVhRjVYtRMZXtcRrMZ3gUiRY1/0bPbrKgjU38=;
        b=4TkcZGEvrOWed5c88mKQFNRo+12Y612Ag1TxDsv+RNv1bDxnLlxHac4ixqiqra9P2h
         xAVDlM4k5rIMnmtPRmr0SmtnjWsSqwcaslG/yWQDE5tI72RZ/w9d7IMPrSDebNJTgDPQ
         V98QAO5JzsPNN0doKSqtJ9fp+u1LoqROo9I/iPdNcK2CNZB8loYB7BrRDbFFLFMEYVlu
         DkzoSdJIxyyoeeWp4Oz/biFQap7F5vITDsT/FHRv+eDt7QLEJW9FHGQTBMUFKRBMwXap
         8VQ4Q7aIBbYpqsMQcX689t8wQB0DrwbPm/g67vt0ecisf5HaqWNIuXLXe7lDjA3h4Myw
         9lGA==
X-Gm-Message-State: ANoB5pmjUs2CdFuwuHjUSOtYqHmEVeibB6r5U9cfX8yGz7qjpXw9GTjd
	myQIrzIDI5uRrEhillwJ1TqTA8u/nTk=
X-Google-Smtp-Source: AA0mqf5muuKzGRHawkOyUz8c6D+bzEkALJw8rHCoTGKIxKp6ZWSESudw3Xpvk0M+hJAM9cmeL7C9XQ==
X-Received: by 2002:a17:903:3317:b0:189:e14a:318e with SMTP id jk23-20020a170903331700b00189e14a318emr33071195plb.27.1671208983784;
        Fri, 16 Dec 2022 08:43:03 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:6325:4753:57d5:805f])
        by smtp.gmail.com with ESMTPSA id v1-20020a1709029a0100b001897e2fd65dsm1874588plp.9.2022.12.16.08.43.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:43:03 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 0/6] Patches from mailing list and fixes
Date: Fri, 16 Dec 2022 08:42:49 -0800
Message-Id: <cover.1671208436.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 16:43:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58823

This series catches up on some patches that had already been sent to
the mailing list, just re-iterating them here exactly as they will be
merged, as well as a couple new patches.

A big "Thank You!" to Robert Yang for sharing fixes that Wind River was carrying
internally.

One new patch, sent on Michael Halstead's behalf, represents the current
production instance changes in order to meet the Python 3.8 minimum version
requirement for current bitbake.

One additional new patch replaces deprecated distutils usage (which was only
used for LooseVersion), with pkg_resources.parse_version instead.

The following changes since commit d8ab1beebeb5b49693b522d8618393620495bd74:

  layerindex/utils.py: ignore 'core' in BBFILES_COLLECTIONS (2022-04-28 08:15:22 -0700)

are available in the Git repository at:

  https://git.yoctoproject.org/layerindex-web timo/mailing-list-patches
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=timo/mailing-list-patches

Michael Halstead (2):
  Dockerfile: add captcha dependencies
  Dockerfile: switch to ubuntu:jammy for >python3.8

Robert Yang (3):
  utils.py: Use get_layer_var() to get BBFILE_COLLECTIONS
  admin.py: Remove has_delete_permission()
  utils.py: Fix for is_commit_ancestor()

Tim Orling (1):
  global: replace deprecated distutils

 Dockerfile                             | 23 ++++++++++++-----------
 layerindex/admin.py                    | 17 -----------------
 layerindex/recipedesc.py               |  1 -
 layerindex/tools/import_classic.py     |  1 -
 layerindex/tools/import_otherdistro.py |  1 -
 layerindex/update.py                   |  4 ++--
 layerindex/update_layer.py             |  6 +++---
 layerindex/utils.py                    | 20 +++++++++++---------
 layerindex/views.py                    |  6 ++----
 rrs/tools/upgrade_history_internal.py  |  4 ++--
 10 files changed, 32 insertions(+), 51 deletions(-)

-- 
2.34.1



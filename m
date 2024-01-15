Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CC5C47422
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 17:56:42 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web11.89151.1705341398244682718
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 09:56:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BfwKZKug;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1d542701796so46365445ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 09:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341397; x=1705946197; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=WJZaiqgy0QRD9VkBYeVuorrKyhg8kT0F8xUrH67UzDw=;
        b=BfwKZKugp7okmsZcHOmMaCU5rJl5m0tTj07DJaYPuXNwi0Piwi7+73b/qH5NEyd+HQ
         sS2AuYtfZru6Glwyw7QLLsBwLlBu0osxRVtxQ4tPquP4S7OJCMmvI4I3+fMpyim//+WJ
         cAIgjlGEy6HVOnLnvmwSkFtdxbJqAe3+ELkgDN8MtaREldYmJ0EHDupOmaHX2jU4dLA4
         HM/LjPkt6Z2DhF5HJMnz1m9TLeqpSE0PPvQFoig8iBSPf6MjgOjns6mtG4BN9cnUF1yx
         gpWA1gaW9/V9EbgVkLrrA445f+laZdZLCtidqsSkm5kwvCebzGiLJfyTdKjL50epjBCZ
         7a9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341397; x=1705946197;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WJZaiqgy0QRD9VkBYeVuorrKyhg8kT0F8xUrH67UzDw=;
        b=C0oFZUMmfs6FYshATUWsJxjGlw57OYnRkwl6dOPeqQRqr20TCkOAHrCuDKYN7sLNvV
         21WGsoh6gXAqvS7Tki9MJKPjOET9hBuE998s5ZZZetnfTCONyhwEy3gUsNfeNWH5c7Nm
         foGw/zps4SA1kPRqa9RWQoOo8UTy3ms3BydWT8ygUxk/RJsaLZmyIcnxvKZTnxvmdnOU
         Kg99/yy4XyF5sk7YP9RbtRdjtn6e/lTEkge1Nc+rZ+pq0+NK4Oz/iP5Sy9kzvxYgFO1R
         hV4t9WdqP5rHnLllG7j5F1Ej5VReo+WMlUTP7nZG3nYwkWIApwywORJ9qU0wO/08Trkb
         ZNLg==
X-Gm-Message-State: AOJu0Yzm1JYjdb+nzuHyNOZwcUzwI9aR05ubOdsZi406PH6O+2ssLotE
	/jvlDwktnsdh+WbH0Afw0sNw8uHECl4=
X-Google-Smtp-Source: AGHT+IFiLmjUbBQwjFGrcHEa0Di6nHJN5kGA+M49vjs3iyjLjotdGTi3n6gQnWS3ky0lIJc8f22FoA==
X-Received: by 2002:a17:902:f688:b0:1d0:b095:9acc with SMTP id l8-20020a170902f68800b001d0b0959accmr3847766plg.22.1705341397124;
        Mon, 15 Jan 2024 09:56:37 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id h12-20020a170902f7cc00b001d59432a29csm6282455plw.282.2024.01.15.09.56.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 09:56:36 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 0/6] Docker related fixes
Date: Mon, 15 Jan 2024 09:56:26 -0800
Message-Id: <cover.1705341088.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 17:56:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62146

This series updates all the depedencies in requirements.txt, notably a
fix for a GitPython vulnerability and fixes enabling latest mysqlclient
(v2.2.1) wheel to be buildable.

Also included is a move to the mariadb:lts container in docker-compose, since
in practice this is closer to what we are running in production and is the
version we should be striving to be compatible with (unless upstream Django
has breakage we cannot fix).

The following changes since commit b0af957ac734b76bc7cc2b45b0beb1cde74df0a6:

  layerindex: improve updates for actual_branch (2024-01-03 13:33:37 -0800)

are available in the Git repository at:

  https://github.com/moto-timo/layerindex-web docker-fixes
  https://github.com/moto-timo/layerindex-web/tree/docker-fixes

Tim Orling (6):
  dockersetup: use .zst not .zstd
  Dockerfile: sort apt packages alphabetically
  Dockerfile: fix mysqlclient==2.2.1 build
  requirements.txt: bump all to latest
  docker-compose.yml: mariadb:lts
  docker-compose.yml: drop version '3'

 Dockerfile         | 31 ++++++++++++++++---------------
 docker-compose.yml |  3 +--
 dockersetup.py     |  4 ++--
 requirements.txt   | 14 +++++++-------
 4 files changed, 26 insertions(+), 26 deletions(-)

-- 
2.34.1



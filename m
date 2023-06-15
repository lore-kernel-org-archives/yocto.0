Return-Path: <pidge@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DEAC3DA40
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 16:16:12 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.22986.1686845767078488133
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 09:16:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=fGx/yZmd;
 spf=pass (domain: baylibre.com, ip: 209.85.221.41, mailfrom: pidge@baylibre.com)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-30fcda210cfso2585355f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 09:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686845765; x=1689437765;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ahc5k7tUE6viMKOFkBI6E2ZQEBisqm7zPB5NyP9EaRE=;
        b=fGx/yZmd/bnu24mgsuMNuEZV9vw2R9OPl2etzGPm/Nww8Nrm5+7JsbThfscx+2cWtq
         Vs6DZKNCzCR/0wS4QVxphWhziXMZaw/Tvm0NcNKdoAP6iJDkVoYELsX6Oh0Q1qPVY6FO
         Ws9UNQhlxCPYhstXSWTPFfUINFKsF0Qise4HCT9ORO8jw/2YlCoOvZApSv+dyErMzQkU
         8WYb5fiUOldxHDP2+ZAprKNA7+UB4xkbVCzNltw5rP9f4I3orRcouHT4nZsg7UkVOzQK
         PvQFY78PdLiseqkzl8qVPiVyQKbKP1sC2Js5rCrvvP3hu4CHU/5HAMH578ShCT5uFx1I
         k+CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686845765; x=1689437765;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ahc5k7tUE6viMKOFkBI6E2ZQEBisqm7zPB5NyP9EaRE=;
        b=C8n+VeOY7U484NUbhCQyHc4XiL72d5yQxOIWJlSppUX4ob2q7DDAm6bCnlgB8waANC
         NJYKmlrskN/mFURUMWSNfd388cz9JEYfTmGfnZJRZjJz2Kwe9oPZlGLUTsProH0sTvhQ
         02R8BP6w1vnS8uArCl+zwZ9dAaQ8GVMd8zxmBunzdCMyL5Vyjzcd30A8V9QoCaIo9CCW
         TTvOi/BCtQ+o9rkplJvdCcjwEPGAJKigYQWpMImcFOORPOZMZTSNAeOLwtl0/CicdIzf
         zA/nynZo652eQ1/m3sRFD0vX+pnbwwq4mZlVgt4qApffoYgFqdCpHL//BckXsCnRy2XG
         uGIQ==
X-Gm-Message-State: AC+VfDwz7ztmfxT2ci5BKyuYUxVltv1lYoCmytM2OxpNzfXAsnwCvnUp
	xUKiAUWiBkOM1aFSSRPsqwcnWvQT9IXgcQ5Utn4=
X-Google-Smtp-Source: ACHHUZ5calednMFexyFS7VLk0IajzgAK/u+q5sTcvy+toETqDGSfriby2Sim7WMWPpPB7s/EUwZPsA==
X-Received: by 2002:a5d:46ce:0:b0:30e:daf6:f8d5 with SMTP id g14-20020a5d46ce000000b0030edaf6f8d5mr10865840wrs.36.1686845765209;
        Thu, 15 Jun 2023 09:16:05 -0700 (PDT)
Received: from tapa.fritz.box ([194.110.145.180])
        by smtp.gmail.com with ESMTPSA id q3-20020adff503000000b0030fa3567541sm18308709wro.48.2023.06.15.09.16.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 09:16:04 -0700 (PDT)
From: =?UTF-8?q?Eil=C3=ADs=20=27pidge=27=20N=C3=AD=20Fhlannag=C3=A1in?= <pidge@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 0/3] wayland/weston upgrades
Date: Thu, 15 Jun 2023 17:15:58 +0100
Message-Id: <cover.1686845688.git.pidge@baylibre.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 16:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60312

Nothing really surprising here, except we should note that launcher-logind is 
being depreciated so some thought on how that is dealt with will need to occur.

Eilís 'pidge' Ní Fhlannagáin (3):
  wayland-utils: upgrade 1.1.0 -> 1.2.0
  weston: Upgrade 11.0.1 -> 12.0.1
  xwayland: Upgrade 23.1.1 -> 23.1.2

 .../{wayland-utils_1.1.0.bb => wayland-utils_1.2.0.bb} |  3 +--
 .../wayland/{weston_11.0.1.bb => weston_12.0.1.bb}     | 10 +++++++---
 .../{xwayland_23.1.1.bb => xwayland_23.1.2.bb}         |  2 +-
 3 files changed, 9 insertions(+), 6 deletions(-)
 rename meta/recipes-graphics/wayland/{wayland-utils_1.1.0.bb => wayland-utils_1.2.0.bb} (82%)
 rename meta/recipes-graphics/wayland/{weston_11.0.1.bb => weston_12.0.1.bb} (92%)
 rename meta/recipes-graphics/xwayland/{xwayland_23.1.1.bb => xwayland_23.1.2.bb} (95%)

-- 
2.34.1



Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86BFCC4708D
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:12 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web10.22116.1650834624076805812
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Apr 2022 14:10:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Kx3/BVSd;
 spf=pass (domain: gmail.com, ip: 209.85.210.182,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id z16so13103565pfh.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 24 Apr 2022 14:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6dI3d+18ESV0/+23M+WjokcqfHWABHD43kEfVgDOSxQ=;
        b=Kx3/BVSdlhRT4fii8odC5avxkscauki1QVmzdztIkrsCj5IE9V91AO+43g5Fs5Nuye
         m3xm8Hsxg9FHwPbIvZy8pclHFsgGua5uRfoS41oy/Udldf6G5R8S1TDhDWv1xAz0Bx/Q
         I70Ojez+nEGCUBl9VWCw8ep8S2fx4auSaC7v7oST81zGk/YIhxnrFDNk0R17gjAqTpv8
         42414VgSVnpaw/LMXRmdaXCc0DtO6XbPJHXl+/t1BN0Fr9gzcxDiI9qFdi0FDZvAAUYM
         NcYsFW2heosI80vm80s/zdOgWvsXgHBkkJHlObZdft81YxFEMGLUWd31r5lSGsfMDNVU
         m+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6dI3d+18ESV0/+23M+WjokcqfHWABHD43kEfVgDOSxQ=;
        b=PsWruSog9inNlydVj13QCcNUtG1aC8T94qqvFQWmH9wBItvf+3GTmO0V1Aa3cPU9A7
         CK074cEgR/1w2LUDd3nlo9ccfnn+3Mkz4NL9g/QLV3YNPu+qtvKrS1ipX8AvB//FH3iU
         +1YN8ygDssEWV/o+d89SdzK4ovRxaE+4YJXWJWe+dHIrD9+UsE5BoLN6s526uzZGTSyR
         eoxmqsMu24DSO8Uo1+ryA1HCzUpnyc4nMdDyOGtlyHlLMKhT23cG92I4Swgj0xHCj78a
         rIjrcbySi8xcWhzMdkHBH6zbXSXcA8n8QltxVIYM3e8ZHjXVpvdpB/s4fFzEPym30dhr
         Iq3g==
X-Gm-Message-State: AOAM532BV6AjHyJ4nJPAkAb2xvJ2WepLI+4KQHZ+0rfGfJXFnmz9UFYw
	8jTm3elQRHAKEKfaBO2mfuqDidc9F/I=
X-Google-Smtp-Source: 
 ABdhPJzeTI8ijZLRQK5TWFMkZ4wzTTQL9Pqb2jZTgPfDL1PlACV/Lz7qB9YBCjz8gGabNRlkEXkBzQ==
X-Received: by 2002:a62:a504:0:b0:50a:ceee:5f4 with SMTP id
 v4-20020a62a504000000b0050aceee05f4mr15723297pfm.13.1650834623087;
        Sun, 24 Apr 2022 14:10:23 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:7392:b24f:9023:5aa7])
        by smtp.gmail.com with ESMTPSA id
 y30-20020a056a001c9e00b004fa9246adcbsm9019250pfw.144.2022.04.24.14.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Apr 2022 14:10:22 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: bluelightning@bluelightning.org
Subject: [layerindex-web][PATCH 0/3] Fixes for updates
Date: Sun, 24 Apr 2022 14:10:06 -0700
Message-Id: <cover.1650833930.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56855

This series includes fixes to allow update.py to run on 'master', by
providing a check for the BB_ENV_PASSTHROUGHS_ADDITIONS variable
renaming in bitbake 2.0+.

To do so, an 'is_commit_ancestor' check is added to allow for checking
if a particular commit hash is present in a checked out repo (e.g.
bitbake).

Also included is an improvement on the prior patch to ignore 'core' in
BBFILES_COLLECTIONS (logging a debug message rather than a warning for
the case where 'core' is ignored).

The following changes since commit 4dd7f0ee8f31df927c3862677dc59636988d8dfd:

  layerindex/models.py: add Inactive-Upstream (2022-04-18 12:56:51 -0700)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web timo/fixes2
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=timo/fixes2

Tim Orling (3):
  layerindex/utils.py: add is_commit_ancestor check
  recipe{desc,parse}.py: BB_ENV_PASSTHROUGH_ADDITIONS
  layerindex/utils.py: ignore 'core' in BBFILES_COLLECTIONS

 layerindex/recipedesc.py  |  8 +++++++-
 layerindex/recipeparse.py |  7 ++++++-
 layerindex/utils.py       | 29 ++++++++++++++++++++++++++++-
 3 files changed, 41 insertions(+), 3 deletions(-)

-- 
2.32.0



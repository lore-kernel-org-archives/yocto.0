Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96352CDB465
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 00:59:44 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web10.197685.1697504382415819067
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 17:59:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F7UnBNyS;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1c8a1541232so44062475ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 17:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697504381; x=1698109181; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CF0uplBPn7WoHHdl/7vfC/tppOsXNCxkTiLYBQ4WhAU=;
        b=F7UnBNySBmMiYRBIKTJ7aOL98Qt93Bp4v8z9REjazbNeedl+/nLMI2CEPBQawOECLT
         9vV3WYvUo6N+/TmUiuUQPdrPE5IsaIn9Xr0C67DN7cwpC4cgfsjfGSTJBesrjljSsGZw
         YEiO/BRTVFHM5vHyOuxQOV7EvXi9z8fwCAPfTMaRforrnj4R/K+YTPM4UJCXcqZU/6G0
         bCVf3rnzWpN2mOGLay3L+1UnHuIImXH7o2jsPHPYqbnTgnWlELpCtJLqSyC4xG7Bj3Ci
         lnuH4ZfDrchGgEXG7F80EylYpIzEyfd5LBWQ7FMJLIcPF4notRVMO874prHA2zXfW7dx
         HSMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697504381; x=1698109181;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CF0uplBPn7WoHHdl/7vfC/tppOsXNCxkTiLYBQ4WhAU=;
        b=uJutRJJKDmualIfZd8SS4EnbKxGMHFwbc80UHkqrxBP6dCDu4lt9/fC8CIvzujcN2r
         z7hO1iyt3AtFReW8q2dVK8F2kHXiz+8IRuWku7AJwTN5DiqISbvXda/oMAKKdUqEJVYH
         mgirv36tyOGagelCBISq+QIWPlveZ6fjNOCAG+VmsmodMYJ7+fQQQhCzwVqjHVs9Tsfl
         XBP3dN3Ds/9Mtn6O0HnHBXq8e1ogzUxch7dwgaDYTbzs7h/fGZERtDU5USzXrKg3DsN1
         QnyZPe2dNYgpA26e4avnhU6J/ajQCAnmcCR3p3cWNxlsA+qXLDgZxRIDUzB7KJOch1ea
         +7Lw==
X-Gm-Message-State: AOJu0YxPuMgjoISGQ81/aMOWkno7rb9cEtloRmIOe4cASTkRzMSOcjs/
	DHm502Fo0P10dBOZsFvCTlrRAhIoLUQnmg==
X-Google-Smtp-Source: AGHT+IELDFzeNDyL4UtlI8jP5OJjkETDDzDABfV4ax1pdXGZXZZ7zoooD8DUG14x5cucGdFtux7ubg==
X-Received: by 2002:a17:902:fb0e:b0:1ca:7a4c:8356 with SMTP id le14-20020a170902fb0e00b001ca7a4c8356mr844443plb.27.1697504381558;
        Mon, 16 Oct 2023 17:59:41 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:ab5b:2a7b:aba2:aa8c])
        by smtp.gmail.com with ESMTPSA id f6-20020a170902e98600b001c60a548331sm210879plb.304.2023.10.16.17.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 17:59:41 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 0/4] JavaScript libraries upgrade for CVEs
Date: Mon, 16 Oct 2023 17:59:18 -0700
Message-Id: <20231017005921.2618459-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 00:59:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61358

This series upgrades our dependent JavaScript libraries to fix some known
vulnerabilities.

We are currently pinned to bootstrap 3.x because the syntax change in 4.x
is significantly different. bootsrap 5.x is even more invasive, as it drops
jquery.

We are currently pinned to Chart.js 2.9.x likewise because the syntax changes
in 3.x are a bit too invasive for now.

Tim Orling (4):
  jquery: upgrade 3.4.1 -> 3.7.1
  bootstrap: add version to filenames
  Chart.js: add version to filenames
  Chart.js: upgrade from 2.9.3 to 2.9.4

 layerindex/static/LICENSE.jquery              |    18 +-
 .../static/js/{Chart.js => Chart-2.9.4.js}    | 27979 ++++++++--------
 layerindex/static/js/Chart-2.9.4.min.js       |     7 +
 layerindex/static/js/Chart.min.js             |     7 -
 ...bootstrap.min.js => boostrap-3.4.1.min.js} |     0
 .../js/{bootstrap.js => bootstrap-3.4.1.js}   |     0
 .../js/{jquery-3.4.1.js => jquery-3.7.1.js}   |  2926 +-
 layerindex/static/js/jquery-3.7.1.min.js      |     2 +
 templates/base.html                           |     4 +-
 9 files changed, 15534 insertions(+), 15409 deletions(-)
 rename layerindex/static/js/{Chart.js => Chart-2.9.4.js} (96%)
 create mode 100644 layerindex/static/js/Chart-2.9.4.min.js
 delete mode 100644 layerindex/static/js/Chart.min.js
 rename layerindex/static/js/{bootstrap.min.js => boostrap-3.4.1.min.js} (100%)
 rename layerindex/static/js/{bootstrap.js => bootstrap-3.4.1.js} (100%)
 rename layerindex/static/js/{jquery-3.4.1.js => jquery-3.7.1.js} (82%)
 create mode 100644 layerindex/static/js/jquery-3.7.1.min.js

-- 
2.34.1



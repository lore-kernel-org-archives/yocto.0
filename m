Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D0B7C43334
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 19:13:00 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web08.226.1657825977177099258
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:12:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=i84huKXb;
 spf=pass (domain: gmail.com, ip: 209.85.222.174,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id v28so395945qkg.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=r2sUk6l1RTvR9ZfCcHjvIhqqTmo0wAxiv84FmcOIhXE=;
        b=i84huKXbxVgvsZOgJOoG8OEZQspBPz5pIIJ+mILRhGnKXq6MnRb3C5q0ZaAGFnarTm
         Jr7/gPvu9ilYrki4E+pGiKpAsMt+hK2u4Wa2Zy92WoeN6O2YTLalbX5iiSUz9LfLYUsH
         CYxHjYSOrWbM/aHRiZUOm7O9c+dRm/002z/JC9QCO8d4Opcxe6ywL1ovGpOGHAcVW+07
         iMlJcBhAyRItHyG777YWM0GuqPA6jjqXUM6P5vreII6ijjKTaWVRs/oey+X9eV8pszEn
         QJZ9qh3E4fyIeJ5EpKCUYZI5lDrEvw3FSDGw73vERu1MsFSP4ejB+VNWMneHaxFRDkrt
         g5SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=r2sUk6l1RTvR9ZfCcHjvIhqqTmo0wAxiv84FmcOIhXE=;
        b=eDWp5QpFzcsUdGQ0+ISoG6efH66kfIB1O+GZq/ZbwHwVYYMaKEMKWB2I0SvHtsrMEv
         BcOGH6EVauIhjTiqNByjE3I8solorfs8oLuWicmEsgHQjFDFp42wLkbh73bj85q6GSpA
         EZEDyektaoNUbE4Z9BDLUKNk7SlKpoSixbEs89PQgGkSnQF916eT+koQfwKrBVvENe0R
         CQ7TKoHBSm/0CuMGSJNI70ScFCnw7XkqWaY3AKxCS4787rRWWUGlxpnw48UhGqfjKbso
         W6sARL03Rg5UGDF2nvAkIxP6sPypSGjOw84TCt5F6ASUVXD7MuEdkNdouXVX58fmqdec
         Bdqw==
X-Gm-Message-State: AJIora/2Y+UOfC3bmGx9TwSBxGVd04JoA1e57+wYnd/Y2/sn+Xr3Sxca
	MVXTjXvXq8IBt1x79s2FxhQ=
X-Google-Smtp-Source: 
 AGRyM1spStJ55xeVBr2cDjk7xZM37bfUqBODjmT8TyynN8zjmi5E2g2/9VQ3upabJv14jhfHBfMdhw==
X-Received: by 2002:a37:4644:0:b0:6af:271e:a510 with SMTP id
 t65-20020a374644000000b006af271ea510mr7486516qka.515.1657825976171;
        Thu, 14 Jul 2022 12:12:56 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 x9-20020a05620a448900b006b59f4f66d6sm1778039qkp.112.2022.07.14.12.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 12:12:55 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 00/10] linux-yocto: consolidated pull request
Date: Thu, 14 Jul 2022 15:12:43 -0400
Message-Id: <cover.1657825809.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 19:13:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57537

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Richard,

The gen-mach-types patches are repeats of ones I sent before, but I've
included them to make the ordering clear.

After that, we have two -stable updates (getting ready for the "big"
CVE updates)

And then the pnmtologo fixes. That should be all the builpaths warnings.

I'm sending this all to oe-core fo simplicty sake, but obviously the
yocto-bsp ones are for the yocto layers.

Brue

The following changes since commit e65ee81d621e679107b5f4ef2dbbb8d1786e93ad:

  ltp: fix builds when host ld doesn't know about target ELF formats (2022-07-14 10:08:57 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/poky-contrib zedd/kernel
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Bruce Ashfield (10):
  linux-yocto/5.10: fix buildpaths issue with gen-mach-types
  linux-yocto/5.15: fix buildpaths issue with gen-mach-types
  yocto-bsps/5.10: fix buildpaths issue with gen-mach-types
  yocto-bsps/5.15: fix buildpaths issue with gen-mach-types
  linux-yocto/5.15: update to v5.15.54
  linux-yocto/5.10: update to v5.10.130
  linux-yocto/5.15: fix buildpaths issue with pnmtologo
  linux-yocto/5.10: fix buildpaths issue with pnmtologo
  yocto-bsps/5.10: fix buildpaths issue with pnmtologo
  yocto-bsps/5.15: fix buildpaths issue with pnmtologo

 .../linux/linux-yocto_5.10.bbappend           |  8 +++---
 .../linux/linux-yocto_5.15.bbappend           |  8 +++---
 .../linux/linux-yocto-rt_5.10.bb              |  6 ++---
 .../linux/linux-yocto-rt_5.15.bb              |  6 ++---
 .../linux/linux-yocto-tiny_5.10.bb            |  8 +++---
 .../linux/linux-yocto-tiny_5.15.bb            |  6 ++---
 meta/recipes-kernel/linux/linux-yocto_5.10.bb | 24 ++++++++---------
 meta/recipes-kernel/linux/linux-yocto_5.15.bb | 26 +++++++++----------
 8 files changed, 46 insertions(+), 46 deletions(-)

-- 
2.19.1



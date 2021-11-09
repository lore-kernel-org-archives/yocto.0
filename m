Return-Path: <brgl@bgdev.pl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27FBFC433EF
	for <webhook@archiver.kernel.org>; Tue,  9 Nov 2021 14:43:20 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web08.13052.1636468999369801116
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 06:43:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bgdev-pl.20210112.gappssmtp.com header.s=20210112
 header.b=c9vNClUv;
 spf=none, err=SPF record not found (domain: bgdev.pl, ip: 209.85.221.43,
 mailfrom: brgl@bgdev.pl)
Received: by mail-wr1-f43.google.com with SMTP id d3so33393823wrh.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 06:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h4L6YWlqt/7UjRobG2Q0F7RK9QBU0kOQ+3nHIsYxhhE=;
        b=c9vNClUvQ+sOIT19XZREdEr/X8dPa8AiBINAoTKJPSsPGCIicB+YkpFFikA+LqILWy
         /GedQSLLFZHCpV7RMgYvQhqFKqEkS60m+I+X55hgDkr6Eo6ol60SgvvrmHKk2HU0KjJp
         PX4M9RdxdSqzXgBUOcArMRlUBTO1j/p+fSiBrBVy8fL0xRd8z40z4BEyMeqyfo+E1rNx
         5S99uoMtk2qkSSejrwNA/PtsiS2I/4GMLqKosR5gJg3yxrv6EJVZfa4a4voO0TtKr6dE
         Dp74C7tQs312NcpteSfRCDd30pDOC95kw968Q2IZfxFCL7mjcK4s4fBOQLqFzNVg+igE
         ZbdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h4L6YWlqt/7UjRobG2Q0F7RK9QBU0kOQ+3nHIsYxhhE=;
        b=CFzTE+wFGOgkZEPS3HKOnw00SvxRR4fsPXidZEC2lI1QP3iT+BT6kLpB/MqUJdNM26
         HawkDD/6C/EB8PNXd9Zn8yWLEYZjcffvYJSN++YMm4pPajEVnVFcKsW6yr6k1NWBvcLv
         /L0DiUTyqfDlnCGmFm35bJNLVcPetsZBnJa0U8zV6PQ9QnVVfyGoPCKcxkt2ydNfp6v7
         wklKpQxTGIs+FGaq8kYXbcu8jDYIrKiscWdC+2FWt0/uMQrNWUx8Grz8jBJM9zgN5FLc
         Ukd0LEm4CGQacMg6XFpuN+o6yHtmcH3gUBpug3rUsn48RLreoMcgBvUkk9B7KDYYfX/p
         fQXg==
X-Gm-Message-State: AOAM531qxQfOzqaZdyZkJgXh1fstPB5C2I0VHVRWwcqusdmrGO6ZwwkI
	23tCXl5TC7A1e+VNzxiFkg2pkjNOjRXkiA==
X-Google-Smtp-Source: 
 ABdhPJxG0Dk0h5BQ1S8iwSxM2o4CsocccQCI15SdTVGBWY8bp+kiyOPhhrwSak8mXXIEemHJWcQJag==
X-Received: by 2002:a5d:4b06:: with SMTP id v6mr9904682wrq.194.1636468997446;
        Tue, 09 Nov 2021 06:43:17 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:334:ac00:7d50:ff5:f5c1:e225])
        by smtp.gmail.com with ESMTPSA id
 d24sm2644302wmb.35.2021.11.09.06.43.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Nov 2021 06:43:17 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: yocto@lists.yoctoproject.org
Cc: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [meta-zephyr][PATCH v2 0/4] zephyr-lvgl: make it possible to build
 the zephyr lvgl sample
Date: Tue,  9 Nov 2021 15:43:07 +0100
Message-Id: <20211109144311.26110-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Nov 2021 14:43:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55286

This series adds a recipe for the lvgl sample from zephyr. Due to how
meta-zephyr works we need to pull in some additional modules for the
build to succeed.

The first three patches are just coding style improvements, the last patch
adds the recipe.

v1 -> v2:
- rebase patches on top of current master

Bartosz Golaszewski (4):
  zephyr-kernel-src: order the SRCREV assignments alphabetically
  zephyr-kernel-src: use the preferred coding style for multi-line
    assignments
  zephyr-kernel-src: order git repos alphabetically
  zephyr-lvgl: new recipe

 ...0001-cmake-added-missing-file-ext-to.patch | 42 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-common.inc    |  1 +
 .../zephyr-kernel/zephyr-kernel-src-2.6.1.inc | 20 +++++----
 .../zephyr-kernel/zephyr-kernel-src-2.7.0.inc | 18 ++++----
 .../zephyr-kernel/zephyr-kernel-src.inc       |  5 ++-
 recipes-kernel/zephyr-kernel/zephyr-lvgl.bb   | 11 +++++
 6 files changed, 81 insertions(+), 16 deletions(-)
 create mode 100644 recipes-kernel/zephyr-kernel/files/0001-cmake-added-missing-file-ext-to.patch
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-lvgl.bb

-- 
2.30.1



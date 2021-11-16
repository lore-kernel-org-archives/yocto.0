Return-Path: <brgl@bgdev.pl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A31C433F5
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 09:41:10 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.7877.1637055668958791506
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 01:41:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bgdev-pl.20210112.gappssmtp.com header.s=20210112
 header.b=VGLaKat+;
 spf=none, err=SPF record not found (domain: bgdev.pl, ip: 209.85.221.49,
 mailfrom: brgl@bgdev.pl)
Received: by mail-wr1-f49.google.com with SMTP id b12so36336337wrh.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 01:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OwskqBa2UzAYGf0rP5Emo2P5NV94syDHBrDTgq1EWrg=;
        b=VGLaKat+k1v3T3koDutmrFmCmP7TqmHAS7aU+XVhw3dRdZhTVU9WbKAb46PhJwADJc
         hJVsUp57QxdNMb3yA73QdCIJqi47WY1/ENAyV1B767qJMabfEwaxIAHdtMN6KzJbJ1dY
         hjLematADwSJv8jBJ80vJc9NtC4tnhqnodv4i9o0fL7bME5w0SG+/AVbXPTcqqzekats
         q520kEkQvTC3s3/jzVTkhm0O9QEWLJb4emhktAutLrt+jeA9kdlC9jErUu6aO7PJrjAd
         iGNZW990i2EtJEnu3BwK6U2BaCzg2n4VmCI6C+TFIaxXnsB2Ui17jZ1+7gFko/n/U1yY
         93KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OwskqBa2UzAYGf0rP5Emo2P5NV94syDHBrDTgq1EWrg=;
        b=0Hm7In5+2O2QwIIQkkWymfZYDLxc9zlxC86uYd4wcqHe6wQhDqyAFYaO1dHGGAF1vt
         EjryUBr+gAoiigP1MZ1AFhCWGd/YzWYhMFZq8Nm9QYx4xfU2hoZZRuLSf6O2Zpu+/0yq
         TxvPa/5oj9rOmAq65CgEgvBLqNvIW8Xsf8HhoEcb06jLc+7VfRqGR+m3auYp1RvIMD0C
         dq9kKwMXFfruXdglriu65cvmm0HV3AHepESmje+M/7MJ6axgSQP9xIVbxNwqb6GCKD8v
         bLp4UPOiJLUh4PLTiklOEt55efDli32p1ON4JdZvU1+I88B+z28SlCpP6srvw8tq+MGE
         zVCQ==
X-Gm-Message-State: AOAM5319y4bNQMvqbN/KEzpdlgXD4oh7hQ3h7s2ILHuyYaEfoulrKgUD
	XlGOT4Bhwu9NIOyG8OqucGvIWImcG8o+CbKF
X-Google-Smtp-Source: 
 ABdhPJy4QFpuEpZBjzUmQtaYE3ex4LZFqfjbIdnsD7CBiT4qAdynZ9CmnAfTMNZQ4YDEcFA9d5wBNg==
X-Received: by 2002:a05:6000:2c2:: with SMTP id
 o2mr7751497wry.360.1637055667179;
        Tue, 16 Nov 2021 01:41:07 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:334:ac00:7d50:ff5:f5c1:e225])
        by smtp.gmail.com with ESMTPSA id
 az4sm1875099wmb.20.2021.11.16.01.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 01:41:06 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: yocto@lists.yoctoproject.org
Cc: Naveen Saini <naveen.kumar.saini@intel.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [meta-zephyr][PATCH v3 0/4] zephyr-lvgl: make it possible to build
 the zephyr lvgl sample
Date: Tue, 16 Nov 2021 10:41:00 +0100
Message-Id: <20211116094104.19349-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 09:41:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55338

This series adds a recipe for the lvgl sample from zephyr. Due to how
meta-zephyr works we need to pull in some additional modules for the
build to succeed.

The first three patches are just coding style improvements, the last patch
adds the recipe.

v1 -> v2:
- rebase patches on top of current master

v2 -> v3:
- move the modules specific to the nordic devkit into the recipe

Bartosz Golaszewski (4):
  zephyr-kernel-src: order the SRCREV assignments alphabetically
  zephyr-kernel-src: use the preferred coding style for multi-line
    assignments
  zephyr-kernel-src: order git repos alphabetically
  zephyr-lvgl: new recipe

 ...0001-cmake-added-missing-file-ext-to.patch | 42 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src-2.6.1.inc | 18 ++++----
 .../zephyr-kernel/zephyr-kernel-src-2.7.0.inc | 16 +++----
 .../zephyr-kernel/zephyr-kernel-src.inc       |  3 +-
 recipes-kernel/zephyr-kernel/zephyr-lvgl.bb   | 18 ++++++++
 5 files changed, 81 insertions(+), 16 deletions(-)
 create mode 100644 recipes-kernel/zephyr-kernel/files/0001-cmake-added-missing-file-ext-to.patch
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-lvgl.bb

-- 
2.30.1



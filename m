Return-Path: <brgl@bgdev.pl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEA5C433F5
	for <webhook@archiver.kernel.org>; Mon,  8 Nov 2021 15:43:58 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.46493.1636386237639495364
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Nov 2021 07:43:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bgdev-pl.20210112.gappssmtp.com header.s=20210112
 header.b=GD9KsUAT;
 spf=none, err=SPF record not found (domain: bgdev.pl, ip: 209.85.128.47,
 mailfrom: brgl@bgdev.pl)
Received: by mail-wm1-f47.google.com with SMTP id z200so13390021wmc.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 08 Nov 2021 07:43:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g3r/IR6HTwvG1OP2q9xLkNtapFNPqU/J5QmjFBr9pxQ=;
        b=GD9KsUATV1dM63aOY1S8mm15IQKcrujOsGikESkpjLx5OGyDu1UhXeO3E6ln0iYI3v
         C7H4yfvupSYOtjQJ0OEcSrKwNLOtL4KcvY1lR7tqsUTI3mSQIJX9tkuqa4HwQ56oVlTB
         koDEvVKTmwcEPCsLjQYcIOe9SgI3KQf0Q+SRMIonavzxeOSJrxVI2zwBPnT0nH/v/BPP
         c4dVq5nJ/FSl2qmo38VdCQJtTm30q+LG8H33bS5hAvKMmrQXTQefuqWozzQvX+fw7AUk
         E4s/Dky7mydBY/xiN5Tsgn/KVEtQVOOkLxnNB5VTRjSXAbJ55zNGA04vxnr2vRR5WeDu
         VJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g3r/IR6HTwvG1OP2q9xLkNtapFNPqU/J5QmjFBr9pxQ=;
        b=R227RsjszEmAN5MCsgjfQBtR/2Ww92HoQsmuR03RRVhTG67wCfQsfRRNZ2wwSIMegz
         aJPauEKnRSrM2OH03nAMIPpt/MHuSVFvlitaJ/3esVdfaB2pgFqtTc33txhL1NcrebPi
         lXtptVWMX3RlnNQ6kcYkMlrIAd/scpxqNcjuGwFani8IfMCdYfQKi/QKq7HBjJdMn80t
         ZteyE4fUqOiMRZppfsx+JEQ8RARWUIb1xQHkvX4urkWBlboMa3ZqaVjq7/ODLPWsPD/B
         IkqmplhlJkrfbS/gWWFbWtU+w0TS6aGyxeHRy0BBJWw/zRuDffQO5lxkH6MksXAN5ZXt
         NasQ==
X-Gm-Message-State: AOAM532Bt4QPFACUobTLTUVE79dkt6pwYGxuJeTJnS4P3OTyuNoTRkj0
	AoJ8+CNDCXYfjeCqBuzyvKKBnBFykH7yaQ==
X-Google-Smtp-Source: 
 ABdhPJx4S9P4r76VMyfEXZziRAZ12imQVP1P4hk0sC3jg8afn6s/Hm8z4z1ppYHwObWyqMdG9mCpcQ==
X-Received: by 2002:a1c:1f06:: with SMTP id f6mr205833wmf.55.1636386235529;
        Mon, 08 Nov 2021 07:43:55 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:334:ac00:7d50:ff5:f5c1:e225])
        by smtp.gmail.com with ESMTPSA id
 o4sm15026001wmq.31.2021.11.08.07.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Nov 2021 07:43:55 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: yocto@lists.yoctoproject.org
Cc: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [meta-zephyr][PATCH 0/4] zephyr-lvgl: make it possible to build the
 zephyr lvgl sample
Date: Mon,  8 Nov 2021 16:43:46 +0100
Message-Id: <20211108154350.24351-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Nov 2021 15:43:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55274

This series adds a recipe for the lvgl sample from zephyr. Due to how
meta-zephyr works we need to pull in some additional modules for the
build to succeed.

The first three patches are just coding style improvements, the last patch
adds the recipe.

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



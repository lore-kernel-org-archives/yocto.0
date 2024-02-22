Return-Path: <haokexin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08B6BC48BF6
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 01:22:14 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web11.3350.1708564933639457631
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 17:22:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ha9bcFc8;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: haokexin@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6e471f5f1a5so2302774b3a.1
        for <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 17:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708564932; x=1709169732; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a9yccNI4uMPxTYHpuv6exQs6I/tGQLA5QjyH+/9LH54=;
        b=Ha9bcFc8O7yzgpsiCRGNHnFQoSxyJSgjPioUMlJ1ATPsFy0YSwnalBYCs8+Zv0PIUU
         VgpIxzrvhuqxvRrqDdTDeKQ7sqxZGy/DS8YgP0jUTFVRTDo8+afhQcpv/7HPGu3wpC0Z
         3rzfx6mmcW5R71DG1apLGKwuUYFtPiTzZvtNC+AjzDamsJ2akSwupVlw9VpoDZeRMuwb
         wr+AQsyJNYu+VmKUK5xskFI2/Bck4y93Zd/4BWkkYkaSF9cS1kOMfgNcdHhVCCVqBFDI
         raWoWmobfDl+q1QLPDQ1x3dHji/T+I/aeYGxPiojYYMUiNE+mNwcCQY+kVdIX4RbQpOU
         HujQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708564932; x=1709169732;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a9yccNI4uMPxTYHpuv6exQs6I/tGQLA5QjyH+/9LH54=;
        b=RbUbtgD0Z4/qCBboFJieI+uAOoN1dIxxOyO8sYixq3URtBsPp/BMi2WOMDyl2mmHiO
         YP+/2XO7K/cuoWt0sjDpuxyFdNX0b6sT0Jc7DG8bzm2GrrUPjEBrnM+F41xbZConj9tc
         aA8YpeLodgb89eXdzyZVwO/zy34BVEhHtIfbX0/FwtSOe6j2z0CShGrGEaR4wXRk4KTq
         xXtyedBQtBxWPyXTc30O53ChbevRNGP9pM83MXocKQIpLQGCsZJfNhjB6YUYxV2vfW7G
         rEpKhiHXq0dTpaY7whNx095bGdH0eFaV/3W0775dxABfK2V5ZHHc7vXvSoaRWzSPcvRR
         OhDQ==
X-Gm-Message-State: AOJu0YylobZeIUy5xQ1/4KbVj+fFssMhYXA1byQnhNP7J4bnkDdypAIb
	AixmN5f8moQOHB0ogawsCuL8TtPyZs6KJSmWFxtoRvqmDgAMJe7iBT1lWVuI
X-Google-Smtp-Source: AGHT+IHNlpHvZokCWVrM2uT6MkOgySTBYRwRvFyhrcYXf8MjJHh8PJKej8/cqyDLxEZ3o8J3e0l2+Q==
X-Received: by 2002:a05:6a00:cc3:b0:6e4:bbf1:fa05 with SMTP id b3-20020a056a000cc300b006e4bbf1fa05mr3385886pfv.0.1708564932079;
        Wed, 21 Feb 2024 17:22:12 -0800 (PST)
Received: from pek-lpggp6.wrs.com (unknown-105-121.windriver.com. [147.11.105.121])
        by smtp.gmail.com with ESMTPSA id x7-20020a056a000bc700b006e4883591e7sm2975948pfu.144.2024.02.21.17.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 17:22:11 -0800 (PST)
From: Kevin Hao <haokexin@gmail.com>
To: Yocto Project <yocto@lists.yoctoproject.org>
Cc: Armin Kuster <akuster808@gmail.com>,
	Paul Gortmaker <Paul.Gortmaker@windriver.com>
Subject: [meta-security][PATCH 0/3] dm-verity: Fix wic image build errors when using the wic/*.wks.in
Date: Thu, 22 Feb 2024 09:21:51 +0800
Message-Id: <20240222012154.386022-1-haokexin@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 01:22:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62560

From: Kevin Hao <kexin.hao@windriver.com>

Hi,

So far we can't build wic image by using the meta-security/wic/*.wks.in
due to the changes in the oe-core. Adjust the wic/*.wks.in and
dm-verity-img.bbclass to fix these issues. Also fixes a typo in
docs/dm-verity.txt.

Kevin Hao (3):
  docs: dm-verity.txt: Fix a typo
  dm-verity: Adjust the image names according to the oe-core change
  dm-verity: Set the IMAGE_FSTYPES correctly when dm-verity is enabled

 classes/dm-verity-img.bbclass        | 30 ++++++++++++++++++++--------
 docs/dm-verity.txt                   |  2 +-
 wic/beaglebone-yocto-verity.wks.in   |  2 +-
 wic/systemd-bootdisk-dmverity.wks.in |  2 +-
 4 files changed, 25 insertions(+), 11 deletions(-)

-- 
2.40.1



Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35739C4167B
	for <webhook@archiver.kernel.org>; Tue, 31 Oct 2023 12:58:21 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.185540.1698757100332869775
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 05:58:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JjjgSE3E;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: twoerner@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5ac376d311aso55476207b3.1
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 05:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698757099; x=1699361899; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=z1l4ydSs2Jg3A5KO/yZl4d8e5zKSD5hUQZ7x4Uf1nPM=;
        b=JjjgSE3EK+YrzLNtN1MRU+5E9Y0jH9VLbJg+X4phjAywbIj5v7TURNfmURErIi+6a+
         P5QJehoqDi28swmqiTvn4RtXsSrjGbk+qU95CHj5nGI6JRonJYWdYCcqE0fPU73zVksF
         +Sb2NqKWaDseuxzhYGas+o/DkAfpEvZG2Bztzp5ggMMJZGXCX321dq4ILuKN56mH5B3X
         tp0kocOE0uPhUtAKq0kBGnWkCNu2uTLBN6ymBa0ywWkzRjpsnPQt7ReBBgZ0KsOFRQRB
         8dVNxaENl93bxY38VoHyHXPN6/I8W1FeYGkJrZh8JLs5QRtnkegfzBoE2+JGh9X4ifKE
         jgDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698757099; x=1699361899;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z1l4ydSs2Jg3A5KO/yZl4d8e5zKSD5hUQZ7x4Uf1nPM=;
        b=tuhoCBzuXbO4QgbLr/bnI3lpX1FW46OpI62qROH+JZP5ckmXnenLYow+K1TTFl2eCz
         ldhA5NjGOaaXZorJJ1dXSs+4P/pn6ITdqE0U4qy8JsslP2xOq9a1+Wg2UmYZC0hvydna
         C7rM3C+EAxzRg7kYk8b/lPmeGGovsPSc3ePCkga9Dlomq5cqRMLrV2++FLmXRLkVvuC8
         x9OgD2X7KeOXf4jJZpqGpWvzVgmRshke6IHTSgGTn40zHkdZf+1+Mbz+E0oelCT6t7z8
         dunNimbvB+fvj3ztjfHXjMWCb+YUQB6NFx+AUqK5APzW4dYiXgWS6S2B7r1d597iVbCW
         VwBg==
X-Gm-Message-State: AOJu0YyZX7hLLUhhHCW/LZpee4l0TsqMNOCbM/RsUHqdElbx/1AmDuvu
	Y9yaNAFYvOK5VoVitHW786ans1NK6dE=
X-Google-Smtp-Source: AGHT+IEMSAVILS+c4EuXRAd/XcMpeHzYMrQcUk1Sans2g2QC4IdBK19JmZkmJ2IYco3qNrQYIqD8oA==
X-Received: by 2002:a81:ad4b:0:b0:592:5def:5c0d with SMTP id l11-20020a81ad4b000000b005925def5c0dmr13037716ywk.45.1698757098743;
        Tue, 31 Oct 2023 05:58:18 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ph27-20020a0562144a5b00b006590d020260sm493982qvb.98.2023.10.31.05.58.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 05:58:18 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2 0/1] rock-pi-s: add
Date: Tue, 31 Oct 2023 08:58:04 -0400
Message-ID: <20231031125805.37314-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 12:58:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61527

Add a new MACHINE: rock-pi-s

changes since v1:
- while the actual patch to add the rock-pi-s was not merged, all of the
  cleanup patches that were submitted in advance of the "add" patch (and
  were part of the original series) were applied, therefore those patches
  are dropped from this version
- upstream master now contains a version of u-boot that supports the
  rock-pi-s, therefore using rk3308-specific overrides in the u-boot
  bbappend is no longer necessary
- add a separate rk3308-rkbin recipe instead of loading the rockchip-rkbin
  recipe with rk3308-specific overrides
- allow the user to choose whether they want the rkbin and u-boot debug
  messages to show up on the console (i.e. use an older version of rkbin)
  or have gibberish until the linux kernel starts (use the latest version
  of rkbin) by setting (or not) a variable; default is to use an older
  version

Trevor Woerner (1):
  rock-pi-s: add

 README                                      | 22 +++++++++++
 conf/machine/include/rk3308.inc             | 18 +++++++++
 conf/machine/rock-pi-s.conf                 | 11 ++++++
 recipes-bsp/rkbin/rk3308-rkbin_git.bb       | 41 +++++++++++++++++++++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb     | 10 +++++
 recipes-bsp/u-boot/u-boot%.bbappend         |  8 ++++
 recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
 7 files changed, 111 insertions(+)
 create mode 100644 conf/machine/include/rk3308.inc
 create mode 100644 conf/machine/rock-pi-s.conf
 create mode 100644 recipes-bsp/rkbin/rk3308-rkbin_git.bb

-- 
2.41.0.327.gaa9166bcc0ba



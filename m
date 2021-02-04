Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.7616.1612444196510632323
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 05:09:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=r9qLYAsy;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id b2so4477452lfq.0
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 05:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j6iQPhNBIAkrysLIqLew2HOQnuWeDIjETwYSY11Kh8Q=;
        b=r9qLYAsyXVXKCqHgaajFMrdW1XJGvzSYuii6/LEV5UxG2HSiKbaGyrgqG+cEiDXq3m
         7jMZYD9zHz9sOvfmxmxPb8qODtRRlUNiFL53HMYbRleaGPrTg3aVzUGxddAGRnDlOa9W
         lim2EW7t1nSi1H1vEP0o35Aj5WJqbBQiAP93B3x4PkwGD/1DDpyNNLMKu4JHSpLMYx+Z
         cDkh0ZAfsrnl92fCmeEWR5tXZvMExoMpKD539GIIcOty15EwRpnUCelEub9JPOBnYJfx
         y/mHKJYI5f3m3V/KyTgrDdlVcMl1AfwJ/vwIaGrPWBff9LUbZ6hmBWL3QpU7k2ZABnQJ
         ohYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j6iQPhNBIAkrysLIqLew2HOQnuWeDIjETwYSY11Kh8Q=;
        b=SI7waONoCej7bVMFib6kpVsC/cNoBGvna6E598eijIcaQqMmJZj7CC+TAzj8lQDIgq
         qX8wPT9UVrmJ0vWWnoL9VEFvck9eUT/cr+cSdnvkwmCPJxuJ9xd1RU83Wox7fL3njLdz
         luztGazMFPUHjFwH2Y5sc0gv1efnOb8KJttaAhyio6FgIOnhPFsZnLauXiLZRH7yHDRE
         JaIp96soU2i59KHnrb8U509vEV30Hay1cH3bG2hgpcrVP/yH5CkD1sNHflFR2RtWbFUT
         TGiecvD+HbrQC+9Skr94iJzcd/0p17VzTunYYLhA/LSiVHHLrYM/eLjeMXXbI7oVJPUH
         +new==
X-Gm-Message-State: AOAM530A/QaXoAWf1xWYrXNtZVGCeJNKIe5PBavO8rOoMjKVTEveej3c
	aQUdCzzWZBXz1Nb4JUE/3df5FdW5R72SFLH1
X-Google-Smtp-Source: ABdhPJwPeML3feW5z5uDArpKXWfYBYTdd0fc8Ubzza8/sy66dRxylP40JDpVvEOmypzacVDMLJD0Fw==
X-Received: by 2002:a05:6512:2248:: with SMTP id i8mr4355918lfu.632.1612444194419;
        Thu, 04 Feb 2021 05:09:54 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:6dc7:7f99:796b:dced])
        by smtp.gmail.com with ESMTPSA id y10sm599122lfy.57.2021.02.04.05.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 05:09:53 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: andrei.gherzan@huawei.com,
	stefan.schmidt@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 0/2] Fix Bluetooth Peripheral ESP sample compilation
Date: Thu,  4 Feb 2021 14:09:48 +0100
Message-Id: <20210204130950.3218546-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

v1 -> v2:
 - Addedd missing [meta-zephyr] tag
 - Re-sending with slightly different git-send-email
   configuration, so the authorship is pointed to my @huawei.com email
   instead of the one I'm sending it from.

Wojciech Zmuda (2):
  zephyr-kernel: clone Tinycrypt
  zephyr-peripheral-esp: fix compilation

 classes/zephyr-kernel-src.bbclass                     |  2 ++
 recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb | 11 ++++-------
 2 files changed, 6 insertions(+), 7 deletions(-)

-- 
2.25.1


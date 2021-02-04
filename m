Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web12.6177.1612435628023511321
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 02:47:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iZ8RvdwB;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id a8so3801497lfi.8
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 02:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mFu76aI3hUvRAoYJ9gtaMKUk1y5WkMzv7X/UEU260e0=;
        b=iZ8RvdwB1vxkEzzwZc14gTafPt62HALJIi1HzaYrZ63W+ntbDnqZTNQzfq0YRPjIaA
         qe7Gc894VpDPU+AfdIBL22OMjbQRPqPTXriuzkLjz3q7Ikyz0AxbJYIH9jnXIwaChG/S
         JSNugVpDkbVk2qSN1SGNKQchcCnt+QrySQJ4rV7XPreee0VyYzLVaEgT4gy5Cl4ST1oI
         SGJsQKYzOFShYt7FLUDCMs1ZXiqwouWPfvjy9YbWL5s20gIh3M30VFVIP/XZ0dqJWT1y
         7MQr20+aQlng0kcjClizIwmkIeTOrn/hNHwstqR1+Bh2jewYb5doETW8Ydtzj3vTUaGH
         LsKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mFu76aI3hUvRAoYJ9gtaMKUk1y5WkMzv7X/UEU260e0=;
        b=jcTvMdqUms8QwUYlYu/kVYqbhTyFGCHWzzGfsrqD9pcpf2Nu3fo3J1UnJZwDhE4kD8
         9EdxZB3cdUgtNwW7YVT3MDdW5wczGBIDubJeizskaJPjGuKSUs2hDAvlsQxe51OXjn3s
         aSkOl0z2PAxYAo4gBf5b5wj6C8oNbqd4yPAcHwgYuh/79UkAVoH+8ks1E3VkPmW+wdkP
         3eriC7SyD2d8bcGgIIUep9NUUFD/pFC3mV2tNTfRZ1LTvEp/h+InQU6+oWK8DQPZuien
         SKQy3duKySVqsFiRbux8PWw9brL9TlR7omk3ISiXkVWf4JS10wCdgc6SPw1SiRWOEw58
         vLtQ==
X-Gm-Message-State: AOAM532C5GNkYRiZJjr9WHNWfG6CHqyaWP419s1ZxUm5umu6DfzAmCTt
	R/Mtj7naLxJCL/+wIK6dn7gmdHsmxQNPDkvi
X-Google-Smtp-Source: ABdhPJwlFRs7g0QYwHuxUmTuSS2GKvuzFvSi1OTESjpZ3VgejzXq5JYVH294p6caFWMm05BQh9Mn5A==
X-Received: by 2002:a19:7f44:: with SMTP id a65mr4298736lfd.386.1612435625828;
        Thu, 04 Feb 2021 02:47:05 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:6dc7:7f99:796b:dced])
        by smtp.gmail.com with ESMTPSA id y29sm554389lfj.198.2021.02.04.02.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 02:47:05 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
X-Google-Original-From: Wojciech Zmuda <wojciech.zmuda@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: andrei.gherzan@huawei.com,
	stefan.schmidt@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [PATCH 0/2] Fix Bluetooth Peripheral ESP sample compilation
Date: Thu,  4 Feb 2021 11:47:00 +0100
Message-Id: <20210204104702.3214176-1-wojciech.zmuda@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The zephyr-peripheral-esp target cannot be built due to multiple of reasons,
mostly missing tinycript and the recipe being not aligned to changes that
happened during upudating this meta-layer to Zephyr v2.4.0.

This patch set applies necessary fixes and clones Tinycrypt so it can be used
in other recipes that need it.

Tested on 96Boards Nitrogen.


Wojciech Zmuda (2):
  zephyr-kernel: clone Tinycrypt
  zephyr-peripheral-esp: fix compilation

 classes/zephyr-kernel-src.bbclass                     |  2 ++
 recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb | 11 ++++-------
 2 files changed, 6 insertions(+), 7 deletions(-)

-- 
2.25.1


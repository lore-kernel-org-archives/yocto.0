Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web09.505.1617731829236175054
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 10:57:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sT/H0+TO;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id d12so24114907lfv.11
        for <yocto@lists.yoctoproject.org>; Tue, 06 Apr 2021 10:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S7AqvDNggjN5s/YKW6RKCyQnUZlXQ/Ka11T1pmioHyY=;
        b=sT/H0+TOru34vSt2d2ytoV7txaYVBTuG6OcK9kGm4sMpivuR9qdES9uJcQb+gPIMod
         t2O6Bh8LWt8nw6gccXLdEnNGbXQvr4zmG9+wHp+4Hp5+ufTt0r18822YMZvCJu89E4rk
         upoP3BuYknCoPbJrB1tXblgHB8aWliS/yzmUHJHuN7BaTpJb17Hmh/C83buN+FntcDnN
         VCG+GZhGH1fp4opw6wlHQfJywN/Apae+fJeVW12nv8HAjHxizop4QNIfumfmr42kBxwA
         eFQqlSoFOZCKJX2KjnuoQXGJgGCTyGKet8yzL6Jzbhu+dSvqnvXpYf0sWmzmXb8sxO3P
         acaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S7AqvDNggjN5s/YKW6RKCyQnUZlXQ/Ka11T1pmioHyY=;
        b=rJSTAYMBaZh7790Mctqh1WTo6nA/rUOeeF5vmKyVz17P7PMjR04uyfttMBYCHd/mMl
         iAL15Qfe1YhtMK0MTMYwzmT26rfaN/5IcWvUwr6zy3CS8maoLLFF3f7jyqjAcsktULP2
         XYIEsfBm03yeq/WA1ZUDah5RpqpZ+8evc3EnumYGgFZvf963WI80oDrTek+e7Xu16Dm8
         TUsEWYusmzgzyWsqGzRQaTnRaig5rMRZ7FRc93Pir760P9PDlC00LXVIOMtQPyPaocIQ
         jEQYaGeU39dhCUAsGN5gB0gJ2v72mA9QPKtHgi5YWDZuTbKHZPhYtl8ePQiJ1lYvGQi0
         W7JQ==
X-Gm-Message-State: AOAM532ivQoNpRSayOQxwBnqx8ZncYvMVSsvwReOjtC6+lJMg0mk7Y/+
	iIViP10jEM6ZVyOEgtxZSwH0Ah80sWk8fw==
X-Google-Smtp-Source: ABdhPJyq07Rc8xvzI1LcsM0UwXZumJRlr33KKLWUGsiogWyGOF3G6CvTsLBi1GPH41ZIK+NIX+LVwg==
X-Received: by 2002:ac2:5e2f:: with SMTP id o15mr21249291lfg.190.1617731827063;
        Tue, 06 Apr 2021 10:57:07 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:d916:28c0:7dfe:8a6f])
        by smtp.gmail.com with ESMTPSA id w26sm2280697ljm.38.2021.04.06.10.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 10:57:06 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: wojciech.zmuda@huawei.com,
	amit.kucheria.ext@huawei.com,
	andrei.gherzan@huawei.com
Subject: [meta-zephyr][PATCH 0/1] Fix flashing with pyocd
Date: Tue,  6 Apr 2021 19:56:58 +0200
Message-Id: <20210406175659.34019-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

I'm submitting this patch with the consent of the original
author Zbigniew Bodek <zbigniew.bodek@huawei.com>

The flashing process occurred to contain an undefined behavior,
resulting in flashing garbage data to the connected board.
It rarely occured with small images (e.g. zephyr-hello-world
or zephyr-philosophers samples) but became visible with custom
applications.

The exact mechanism is described in the commit log of the patch.

Zbigniew Bodek (1):
  zephyr-flash-pyocd.bbclass: Fix problems with flashing particular
    boards

 classes/zephyr-flash-pyocd.bbclass | 10 +++++++++-
 conf/machine/include/nrf52832.inc  |  3 +++
 2 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.25.1


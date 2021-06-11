Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web09.5724.1623400225537984758
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 01:30:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l7elka6r;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id j2so7383479lfg.9
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 01:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qyurJry2at0kw4rkXPXQZGMQkIG0560Gue+UIBqjkY4=;
        b=l7elka6rsCKbgmsmsfD8JfUlknARngy1/NoL2V8OcK+KZAWz1F8F0nX7k20VnZqaED
         P2Ye4S1R1Vqz3S+gDSYCq1vEYbM2tsqmYZB7cMmvjkMXos/6S4x9ac3PVGkldeBH7U2P
         Dn7HUz44MoEsoeya0s4TN1QRet4fkh9NHzjGV15tXAjhgm/wt8rMRXI73RPRbsONEkDF
         RDZdB30zLWgHZaMfeovr3B0h1WkUcLNgRZl34QupmdwLEk6XqZ1BvTPjgdo0OPhLZ6Ko
         BOv4UgOdJwVUFuwIizmjLW0Iu1pvx8POaoZJ5u3nsp235wUVJS1TrG+cmEpFyzvyMHrm
         8JsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qyurJry2at0kw4rkXPXQZGMQkIG0560Gue+UIBqjkY4=;
        b=fbhMeaN7uUdnDizB6Xi7VOWG0i2dAd01uICXmxBtdbKj/VBawYG6EFqXItOb2NVee5
         wboIWawEHfNjbIlffP41ivP90kT5Dh73XwIE1D8jvB+khU4V2aYHXlyqEHl7dxg6bXUv
         g/cGB5JTdqWXencJicV8YECIyTM1wUjtcrKPvd7EpZnHfOWt01HxwGEM4vzkl+rgWsvj
         E93D5xx2BIOIuHMXwOdWRGMJ8YnPUepfa+Mpa68KmfzaB55FwMb2NoWS9MsGVpKr+CaO
         EaC/MAW1vVI77aGGdqDr7mltXWHF3rYxCzYY+iMMUJUo8fp8SxMprKFrnhxSk9Lb4+Xh
         /VsA==
X-Gm-Message-State: AOAM530xoW29uloQDbksQBSPQqe6kJB7Qdvfl+oY2ciVoD6v/bBHhoEm
	I+h+R5eoKam2h46xnszkkLfWj3PtIeugjA==
X-Google-Smtp-Source: ABdhPJyTFdXjBCxUGC+Rwm1+taND/5LUWASBr+h5S4eUrWM0VHfHX05bqkgPxh//m3y5GWbjzqDdvw==
X-Received: by 2002:a05:6512:3baa:: with SMTP id g42mr2001394lfv.195.1623400223185;
        Fri, 11 Jun 2021 01:30:23 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:b71d:7ae0:b524:c53d])
        by smtp.gmail.com with ESMTPSA id h11sm528513lfc.247.2021.06.11.01.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 01:30:22 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Davide Ricci <davide.ricci@huawei.com>
Subject: [meta-zephyr][PATCH] zephyr-blinky: add sample app recipe
Date: Fri, 11 Jun 2021 10:30:17 +0200
Message-Id: <20210611083017.1870066-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Davide Ricci <davide.ricci@huawei.com>

Blinky is the most referenced sample in Zephyr's documentation and
recall Arduino's first sketch example. This .bb file allows to build
such example.

Signed-off-by: Davide Ricci <davide.ricci@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-blinky.bb | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-blinky.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-blinky.bb b/recipes-kernel/zephyr-kernel/zephyr-blinky.bb
new file mode 100644
index 0000000..bd5ce4f
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-blinky.bb
@@ -0,0 +1,3 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR = "${S}/samples/basic/blinky"
-- 
2.25.1


Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web12.9267.1622043390310998208
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 08:36:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=CyqVsbdb;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.210.181, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pf1-f181.google.com with SMTP id c12so1213297pfl.3
        for <yocto@lists.yoctoproject.org>; Wed, 26 May 2021 08:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=We4LlpEeyPMVPkHoSaYYI7yDEYZqnTQYCq32ZsFuDqY=;
        b=CyqVsbdb/W5mJxXba6aM5knuXc8jnoYFADHOhkL1iw3AlBw+GMAbGlC+J23audakOo
         UHgqaR6XfRYIpFvcssstAJdl4mf4Ww8EqFLmf7HR8fqcg4ogq1P4feH8Z0VXNjR+Jxgt
         gf5kbRgvSmfk7KxfpmB4YLIFlE6Pvb6nJuhhWyI5dhnOxCh36lOagLiS2XsJsO+I69d+
         YjVIcmr2Frz6fNtT9QXXgxJUCQiGh9d8REMrDzx/IPQxsCT7JcEOzB+w3kBSVeUCBkuc
         SZ1rf5wdDaR7t+4NtuepXBmQ4RQMii72xDJX6N9co7ethILwsDyPt574fUOqqrEMMMOy
         g+tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=We4LlpEeyPMVPkHoSaYYI7yDEYZqnTQYCq32ZsFuDqY=;
        b=cJ7KQpW5PPZVDY5QaQC4j22xFcw/PsWHEjYha5AaUMQGtrlr1ehTIDR65gpWILuzmr
         BerKdnn2Fw3GD3HmmBg4XdnXd1pc5IqEuQ9bclE2iPV+ZxHmp6sjJ2pBh4VfFtVG0Yve
         hp3shhvvlzPiCqFuKw+oyfJZdp42pfNhtNQlnFTzECSRyBC1Vn/MQjiWPX+JEptn4mjP
         grNv7wKHw4J9FZHMuIT60X2hZJppjMNfJ3Gbzgv2FPt9jeEpLD/N4403jcEkgPMziE4C
         g1BFGWG8wcIctRrckJf3MQlnc4rgmLAk4gti/Shc/fJnZkNnKgqJ9MvZdUfU/4nbrBno
         vRJw==
X-Gm-Message-State: AOAM533x0DQ1aM+84auS+Z4bR7LYbPWjachxIGo1PC+XEoE7GSI63srt
	8WwzATDmHVCo2XJ06XKLDYrBZR/GPGIgZw==
X-Google-Smtp-Source: ABdhPJyrv00Ecj3fI6kaTiKDKf480vVbkuk0a48Xry4VCfT/MH2ferdZITBYbiE2MXDZV9CKxTpDNQ==
X-Received: by 2002:a65:5a08:: with SMTP id y8mr21190346pgs.199.1622043389530;
        Wed, 26 May 2021 08:36:29 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.71.66])
        by smtp.gmail.com with ESMTPSA id o10sm15979065pfh.67.2021.05.26.08.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 08:36:28 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com,
	zbigniew.bodek@huawei.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCH 0/5] Add mbedtls support and sample applications
Date: Wed, 26 May 2021 21:06:18 +0530
Message-Id: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Amit Kucheria <amit.kucheria.ext@huawei.com>

MBed TLS is a library that implements cryptographic primitives and SSL/TLS
and DTLS protocols that are needed in secure network communications.

Add it to the kernel include files to build and link against applications
that need mbedtls. Add a few sample applications that utilize mbedtls
library too.

Amit Kucheria (5):
  zephyr-kernel: Clone mbedtls
  zephyr-echo-client: Add recipe for echo client
  zephyr-http-client: Add recipe for http client
  zephyr-websocket-client: Add recipe for websocket client
  zephyr-mqtt-publisher: Add recipe for mqtt publisher

 recipes-kernel/zephyr-kernel/zephyr-echo-client.bb           | 5 +++++
 recipes-kernel/zephyr-kernel/zephyr-http-client.bb           | 5 +++++
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc        | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc           | 1 +
 recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb        | 5 +++++
 recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb      | 5 +++++
 7 files changed, 23 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-echo-client.bb
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-http-client.bb
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb

-- 
2.25.1


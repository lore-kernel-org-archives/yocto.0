Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web10.32592.1623045648342226367
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jun 2021 23:00:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=x+H9ivgn;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.215.178, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pg1-f178.google.com with SMTP id n12so12957346pgs.13
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jun 2021 23:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tVUfpC+cWbjR+hnIT2YH5eLCnWYbbV4zKOUrLelR1mg=;
        b=x+H9ivgnLb4/wnKRykZfENUgJ0SvqnDJm0637tF/3hhm0SRJM9v8qagVdoHNm7hmN3
         RE4AMqxmG6xH9MgdbVqTQJl9JqyU8nH09to66ae01uAmzRCsEL2VQdQX/4hWdwi6mquC
         5H0htjPtQyuaghY6GKHuOXXk2TnXJM01f436z2aeW/E3+/RHJtFczX2CDjKzAm+w9fgo
         2HJAy/UezK8oliPhO3RkhS2e/yevo7N+kEekXgaww0T+H30YtiWN3gUXjkSOyPCAv+EU
         TYm322J5WSJ2OwCAiEneQhgC7vAl+yciuSSh+ILQTTJnqh69qrNB5WW6Mm1riwuB8zW6
         JIVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tVUfpC+cWbjR+hnIT2YH5eLCnWYbbV4zKOUrLelR1mg=;
        b=DCFEpzNIEScyNI7EycPjTirfoXwpUoMmxdKFFzXe3cpHhqM6YagNQ23XJXWURRs7On
         /psHgrE2yanPw1R6jF8z4NF2xWkEhht/y5SDwpM2vUETuevdJ97G4wAWiRt2ftskd9eL
         sk57hL0UhuEi5kSgIo0Ls8LC2SaROdzEAVdLhFDbh8k3Q91IR00XNC1vj/5mFWh1iOsB
         t4iwb7U0Ur/g4kW78NNHO58rjasw2XfOdrBWq3YRk5VCORfgXlqd5IpgwKFvD9ulzO+E
         o6kb8a5keuydSDWDUihBVEwWOiwmWiOlx2hv11pbIMatupGZZZiHT+ld1ZINILhyDRNE
         ZtpQ==
X-Gm-Message-State: AOAM531s+D5Pm7nR/s12Je1IC5zIFuRdEfV319YU/tJOcyywyxiES7s6
	G3jLSOMzlkLlGWrt6yKbbpfosGuQrzAxsw==
X-Google-Smtp-Source: ABdhPJw/sKvMYG0HWXnpvlBP4U3Bm1wHt0vXXgMxIHCSUZBhTLAIVhzTQDAy/t8H6Lu4aL4HPPeLJg==
X-Received: by 2002:a63:3449:: with SMTP id b70mr16032661pga.292.1623045647334;
        Sun, 06 Jun 2021 23:00:47 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.69.126])
        by smtp.gmail.com with ESMTPSA id p19sm10883212pjv.21.2021.06.06.23.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 23:00:46 -0700 (PDT)
From: amit.kucheria@verdurent.com
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com
Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: [meta-zephyr][PATCHv2 0/5] zephyr-kernel: Clone mbedtls
Date: Mon,  7 Jun 2021 11:30:39 +0530
Message-Id: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
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

 recipes-kernel/zephyr-kernel/zephyr-echo-client.bb       | 5 +++++
 recipes-kernel/zephyr-kernel/zephyr-http-client.bb       | 5 +++++
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc    | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc | 1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc       | 1 +
 recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb    | 5 +++++
 recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb  | 5 +++++
 7 files changed, 23 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-echo-client.bb
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-http-client.bb
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb

-- 
2.25.1


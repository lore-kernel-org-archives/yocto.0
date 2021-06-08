Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web09.11201.1623153059161146046
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 04:50:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=djbnHgoR;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id d2so22438006ljj.11
        for <yocto@lists.yoctoproject.org>; Tue, 08 Jun 2021 04:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EHOMYrwVPAhMtPKxc04MhBg5tg3bjposSSFifa22Z90=;
        b=djbnHgoRYpLq9/cpgn+FSOvqtnIhsZ9hIQB4GE0cYZzRxJTQBJZnQGB4VT5eBKhAon
         CLZUw1sQmcrEyhbrOti4HdMsy+CooqzQ0Dvsmb9jjXdWmY2jea0hGRjuOga4KBnSm1jK
         0fl5XKg4N68rAVChgsM0suo1S745BklDc1Tc98tbrnVQPNbVVC4IiWcJRE1xKomCR2M+
         MP2B4yHwtBjYEscQpk6JwMJb8pZ6dbikdrO5N7JcTCQtx1kPT6azQTSSifpOXC9MN3Mz
         GMiU+fkTvD4eAOYbVPZM1nMLpgW5uQdp5mv12uJNsTeMdHkkL2PZPCbL8Wu6wiYB0GuB
         Rd8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EHOMYrwVPAhMtPKxc04MhBg5tg3bjposSSFifa22Z90=;
        b=hd1kAnETnxrymJIgXfL/hL1yfcrywnm21A9uFdhQIkECL0OI2/jKDWQ6qpXywUSLRh
         X+fOYv7VP5/3usXUmGHrC1+4nVfnooSKWizAaOX0brl0BgKpuOxa9EmRWsRpjx15pnTv
         UjZX86YzYmRdUNBD7BO/PerC8fxGSQxFsFJj4z8Dgun2X44M9JbYS7qumVgWrynDKB1C
         59ABmCk3jfSPzEZT68khI8CUPBQh+1H0D6FVeV1PDnjdgXK0w7MFcH7xcH8cwFo9ngJp
         v0sK8kboLXR1YjAYx9a4qri1SMRzcFiSKA7HkYzB0LH3sZoFFdqX5OLqg1bLr4YiY5hl
         kTng==
X-Gm-Message-State: AOAM533s8eidt+1l22GQhCGVkLKdmODH4yjchATVAefyePthwm2G5s5/
	vVBMUgmT0w1ndCkVrKEr0mTNBxMSsV7vuw==
X-Google-Smtp-Source: ABdhPJz6nNdAeqWCPSXpZzfoGtKO9jAfEzmMIqghnZBByMe+wiHjFfDckomuBQDGI1I92fPFPuvKqw==
X-Received: by 2002:a2e:9a0d:: with SMTP id o13mr1114594lji.440.1623153056809;
        Tue, 08 Jun 2021 04:50:56 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:41ca:d8d:7bc0:8ed2])
        by smtp.gmail.com with ESMTPSA id n17sm1605830lfh.220.2021.06.08.04.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 04:50:56 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 0/2] Bump Zephyr kernel to 2.6.0
Date: Tue,  8 Jun 2021 13:50:46 +0200
Message-Id: <20210608115048.17205-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

This patch set bumps Zephyr to 2.6.0, as stable revision has been
released a few days ago. It also updates revisions of submodules.

Tested with zephyr-philosophers on nRF 52840 DK.

Wojciech Zmuda (2):
  zephyr-kernel-src: add 2.6.0 release
  zephyr-kernel-src set default preferred version to 2.6.0

 .../zephyr-kernel/zephyr-kernel-src-2.6.0.inc       | 13 +++++++++++++
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc  |  2 +-
 2 files changed, 14 insertions(+), 1 deletion(-)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc

-- 
2.25.1


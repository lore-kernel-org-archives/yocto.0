Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.10923.1621429280045849195
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 06:01:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hEy9MEOi;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id j10so18906049lfb.12
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 06:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5aYZqw/kkPIBacxtM+rI+QrOpiBkuo973niI6/MFsHM=;
        b=hEy9MEOihfINH0MjSzwK87Wnigf6lcPMzBfOprQDraml/ELQMPMdsyoa68rSLPs1j9
         zGKdLCD0r+LqJ2I75czuVpqERZMx8Pd3FRT1uHhdqtn+1W79CILv0ny3pLzOAgx/55F7
         i+/6VOijgu3RpuQskYqe2cSS5/xc/hDEtAGK8TL1lox5/Kbpy9OWQa69hHn6LaYbLskF
         exEChUImU61gsr1rKc/O0Unuq6T4mwLqOkQdeQvbxgIZK/3N+WXuSTIfwlFvVEjNYMDe
         Qgz1nnuIfBNqGURqtHMBYzuWA/Sp1afmfc+bv2XZPafCFmRq0MmIj4idF+UdgHMBsT++
         wxWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5aYZqw/kkPIBacxtM+rI+QrOpiBkuo973niI6/MFsHM=;
        b=B8N5umyyacxt7wovW/cdfII8hL9mHqlYDTbsurnXHlW2IWMLYN2BlzqJFgYOE4bNB2
         0Lm9PJTr8rmcbw2GSvbcuI2SpJbWyaHlIF4fVxRGsa8i6lEg9Cu8r4zlbLM8jyn8MP+6
         oFaao5lj67wTkEDTfBbAvwrvpJ0ADpxUi/DDa/iJDBXSU+NxCpBQzhzNGKinUrFHbuBI
         OMKKfmIuDj3gPgkMXJA6Xs6GEkhaQmfQvOpUWlE1rzblr0XmBjUGj+gmJnCYtjVrESW6
         OUnPobHR6xIxHP+8aVEqFmDh8uuJTul+UgPmuLqgNh2Jjr7AeFBgoxisxamsClV/zHJ5
         OZBQ==
X-Gm-Message-State: AOAM533CeLedLl7sc9A/rf8BHWay5GvKZq3kv5y5ExY55ZF24NUVrxX4
	174Fs+6YwiAPYFKzG7nssTITZN54wRpfeAN0
X-Google-Smtp-Source: ABdhPJx5y2mQkUNwdswzz0dr5IanpfrFREVMMxciX0WBHCtaNVYX8U4uypScEMuAyUWEf1Tbo4ZCFA==
X-Received: by 2002:a05:6512:3684:: with SMTP id d4mr8388195lfs.90.1621429277900;
        Wed, 19 May 2021 06:01:17 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:ef2f:5b80:79d4:29e9])
        by smtp.gmail.com with ESMTPSA id k21sm2536015lfu.98.2021.05.19.06.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 06:01:17 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 0/2] Add nRF52840 DK support
Date: Wed, 19 May 2021 15:01:09 +0200
Message-Id: <20210519130111.2585823-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

v1 -> v2:
- MACHINE configurations are named using '-' instead of '_'.
  Reame the new configuration accordingly.

This patch set adds support for Nordic Semiconductor nRF5284
Development Kit board. Since there already is nRF52xx family
chip support added (specifically nRF52832 used in 96Boards
Nitrogen), make this support a bit more generic to cover
the whole family, then add a platform-specific configs
for both nRF-based boards on top of it.

The change has been tested with the actual nRF52840 DK
board by building and flashing with `-c flash_usb`
some sample applications.

Wojciech Zmuda (2):
  nrf52832.inc: Rename to nrf52.inc
  nrf52840dk-nrf52840.conf: Add nRF52840 DK support

 conf/machine/96b-nitrogen.conf                   | 2 +-
 conf/machine/include/{nrf52832.inc => nrf52.inc} | 4 ++--
 conf/machine/nrf52840dk-nrf52840.conf            | 8 ++++++++
 3 files changed, 11 insertions(+), 3 deletions(-)
 rename conf/machine/include/{nrf52832.inc => nrf52.inc} (86%)
 create mode 100644 conf/machine/nrf52840dk-nrf52840.conf

-- 
2.25.1


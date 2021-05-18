Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web12.7165.1621337315849802473
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 04:28:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HfMB8+bR;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id z13so13625309lft.1
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 04:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SP1vJ4ofc6ZLqOIgHJsYd/FT9O2epSBgbSPi7k4B2TM=;
        b=HfMB8+bRlre0vfO1/xYEGWaMWpQZ4TkbS6HLOIV/yAXizDhvuQIhsOM0e1kNpY+avY
         HdU0N7RIfIMhtlyag9RjRfT+2i5DZ3YKMYV13yACVehiZWJAYLpK/1mAHEycgjmZr2Fs
         rmoa2znyFBK+/N9P49g/cYGWlHLYa0rJAvhG8agAMagommhXc0lf4zFHylUb70y2CJne
         Fe0O1RFDRBchMIENHhJK4VEffcVhCbfzv9y2gX2vRPDZIYsL8wp483+x7TTLzj2ort3E
         gNN8G9+VaEwOA2Xwx+B1SaSveSrFWpEpYVR3Oe/79IVJVlHTC0ipoXC06YfyM3iS/5kq
         sQ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SP1vJ4ofc6ZLqOIgHJsYd/FT9O2epSBgbSPi7k4B2TM=;
        b=OkZw9SleGavoiqoL/Js5bRI003ON+KaKDjSTDjk6brx1fiy+L7kIEGCZ0QGx/vR4Oq
         REiBV7jp0Tvl8rZYf99rcMU41bDU7QlDFG5S+7s5mylVhX1Y/V0sF2VIQeM62SJPPg4s
         XPERWEcazCAl0R8w2N7nZSYkiuPOxoo0F+J+2Y7Odd+XkZSrdpIMKMxRU7VOKYyMCIf0
         slSkvpiqboc1RqK1P3bj9ufdFRBcrHlM7LKUlnXtFx5NCmO2f+VHivr3VMxT6akrJNvQ
         aLriFZ/dajX/8qPqOXJKno4RtApxqF8SOBg2cLHjyflDdh1OyHLIi4XSLDnUsDjz+p+d
         B55g==
X-Gm-Message-State: AOAM533leGL9+BTB1WQY4WySWEX6O7gT8BjgPujE4RS8wKA6EwuKSXbB
	poM+QSonG+Mz1pqLvO7SgvBXkQYUd7ij2w==
X-Google-Smtp-Source: ABdhPJzgwhdSJA087bG79RKEpcstJYuC0b3BcPE5JQcrv3z9ittUxHdiAYcrTzjBx8UIDk0F+IioIA==
X-Received: by 2002:ac2:4211:: with SMTP id y17mr3647781lfh.607.1621337313439;
        Tue, 18 May 2021 04:28:33 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:4a1:dc07:cf12:9f1f])
        by smtp.gmail.com with ESMTPSA id b14sm765968lfb.111.2021.05.18.04.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 04:28:32 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 0/2] Add nRF52840 DK support
Date: Tue, 18 May 2021 13:28:01 +0200
Message-Id: <20210518112803.2548979-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

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
  nrf52840dk_nrf52840.conf: Add nRF52840 DK support

 conf/machine/96b-nitrogen.conf                   | 2 +-
 conf/machine/include/{nrf52832.inc => nrf52.inc} | 4 ++--
 conf/machine/nrf52840dk_nrf52840.conf            | 8 ++++++++
 3 files changed, 11 insertions(+), 3 deletions(-)
 rename conf/machine/include/{nrf52832.inc => nrf52.inc} (86%)
 create mode 100644 conf/machine/nrf52840dk_nrf52840.conf

-- 
2.25.1


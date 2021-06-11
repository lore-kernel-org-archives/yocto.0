Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web09.5860.1623401535443616261
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 01:52:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GccQRR6S;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id z22so8603457ljh.8
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 01:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WPfNBJg7kWqFcKHMYSmDNq5klT4NgLwdlY5Zc9dA4no=;
        b=GccQRR6SuwErY8y/7JFIc7nhUZWsJfKAvMSIIe3XDpeo5ybsu4dDXaPDxy8Z5uGPi+
         9bQgugXdHUNLDTB01CmlSHcYG50PnHmbsq5Emir3hSB7F6enX7i28rAFGsfPJYnZyMNG
         v+sKB7YkpCAI5pCr1yt0ocUfmEQGhHOmm2HXXUBNXr9lK2L9rYHTPHIGlzbpSjf25PHs
         1+LUfGMBUATWO0W5Me8mzIlHeb6Aam4XJxLx//VNrNQ2IYLtgdxT4Q/1ntDPSl8B3uvM
         q3cmES8ofcDQJYWMdAR2Qes+Yw2hzmLSBaivFqX0QkUASx1vl9NsfsOj7xntAg2B+5MZ
         iW9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WPfNBJg7kWqFcKHMYSmDNq5klT4NgLwdlY5Zc9dA4no=;
        b=NWKaP/dckL17ijtcZLv9nwyl1rt8tHX0m58kjuW97wxW2vFxcgOGkgau6cogUPb+eG
         jC4Pq0SNu53ub/lhY3aC0eKknqhty7Y+twtYUKjoy0pAv80XdzzfIuxNTEDqDjNmT9Z8
         qcl/FtVBQ5UkRIMMWUJfY4WsEKvVGFaZ/sBGLnN48ZGwfsL+WMF41JS+NHF4JuPGFA28
         hTckeN47gKy3I5jDFooz6xMJ+abdBlJmQEbx8ebA6+AwkRvZu4WAibC1hgyCUuyhOwNZ
         XJVxoYO8S0tiAnpjKmGxCG4XClLtSnv7ZFmi88MAEgBPWKRFQbO7AIW4CwO1M5e8Kfsu
         mA4w==
X-Gm-Message-State: AOAM5313wjoMqV+V4kgqt1ruX2EpKC1EYQrTqzFMb73HbQbecNl3X9yp
	qZokbqhOgqVRgeyK6LwSlSDGXGDC1geYyQ==
X-Google-Smtp-Source: ABdhPJxetkY+gx1LI3mxmYITUp2+j9HQRud2L26Ug/5GhVhs7+QQJWP4Edvel4G9oTs7eZ6JgT+U/Q==
X-Received: by 2002:a2e:b614:: with SMTP id r20mr2205032ljn.382.1623401533156;
        Fri, 11 Jun 2021 01:52:13 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:b71d:7ae0:b524:c53d])
        by smtp.gmail.com with ESMTPSA id e29sm528825lfb.258.2021.06.11.01.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 01:52:12 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 0/3] Add Arduino Nano 33 BLE and BLE Sense support
Date: Fri, 11 Jun 2021 10:52:02 +0200
Message-Id: <20210611085205.1870988-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

This patch set adds support for nRF52-based Arduino boards - Nano 33 BLE and BLE Sense - to
both build and flash Zephyr applications.

The board support itself is a trivial MACHINE config. Flashing is done with a new bbclass, that
is a wrapper around `bossac` flashing tool. One general kernel recipe fix was necessary to produce
and copy over the .bin file, as the flasher requires input in that format. This does not affect
scenarios where .elf file is required.

Tested on an actual Arduino Nano 33 BLE dev board.

Nagesh Shamnur (3):
  zephyr-kernel: install .bin image if available
  arduino-nano-33-ble.conf: Add Arduino Nano 33 BLE and BLE Sense
    support
  zephyr-flash-bossac.bbclass: Enable board flashing via bossac

 classes/zephyr-flash-bossac.bbclass           | 50 +++++++++++++++++++
 conf/machine/arduino-nano-33-ble.conf         |  9 ++++
 .../zephyr-kernel/zephyr-kernel-common.inc    |  1 +
 .../zephyr-kernel/zephyr-sample.inc           |  4 ++
 4 files changed, 64 insertions(+)
 create mode 100644 classes/zephyr-flash-bossac.bbclass
 create mode 100644 conf/machine/arduino-nano-33-ble.conf

-- 
2.25.1


Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
 by mx.groups.io with SMTP id smtpd.web09.1494.1616886474107664372
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Mar 2021 16:07:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=ssXPUj3v;
 spf=softfail (domain: sakoman.com, ip: 209.85.167.169, mailfrom: steve@sakoman.com)
Received: by mail-oi1-f169.google.com with SMTP id k25so9543862oic.4
        for <yocto@lists.yoctoproject.org>; Sat, 27 Mar 2021 16:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h78naIBm7kaeiZUC1yrg0OWDMnb9ShvFNQawn7XTo+k=;
        b=ssXPUj3vYe9i6EVltx/C+uGyIbzoprEj6vACZc7XCGXuxr+SqaZT2eNwPYvyrQ74H4
         Xvj4QYezu2ie6irChDY4FWaWAeGJSXTIlKAyt/NQoO2E86CLAzxvd5is2NrxcHywEa5+
         0pKt/ZH01cNL0bpVGbSU1uF5kvnDYVZcm2Pce00cw0Nz1uiuD52eGqMB5pza+pPY3ybS
         rrksU6LoEiqMKLUI/hB+EavhkabqAHp/lVudHEhoQrHCVtuuyzPnzcsIcO+8QElovdaC
         MtoD5GAQfd/6W1MTS+V1+dwEDaWz9Py0H4cEwEKml1uc79NRRM1A+lij4YOyE3pxAb+r
         FqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h78naIBm7kaeiZUC1yrg0OWDMnb9ShvFNQawn7XTo+k=;
        b=pZb0VyIxEicmfh08BtdyAnVOA89lzlto05LW4wEk52SzRsSqhu9keOnkK+tcOOFhtD
         K87JJgsVoUmsRUr5pm9Ek+NxpL9iFmClBKUMyLjbCCqsXtqqSlBoIoRyhHOPOY8t5HwV
         lTiVmMFq/mWmYExVspl9Y636ABZG/i6APn1wxjkv7qzarkVEzSiJnIj7VedxaZ9WikEC
         WyalFDGVKtxWvhMxXsYi/EuejQ+hFQPnFxDD2ic14kIx29t+5nEiBHJdcescEUGLhjt7
         Ckp44UTBwzdfh3aGIEC90js7ZgLyMgMdFC1hikLk32YJhOUHoFPVmMMwm/QZSCT+hkNW
         oeIQ==
X-Gm-Message-State: AOAM531I2Mpp3FHdcmZ2DEVGYEEbhjptXCo2rIeMy8tvjR2cpP4kqigG
	bSaHGbWX3K4yfIRxeRkPBXFeRni8Hmb6t0ea
X-Google-Smtp-Source: ABdhPJwcUWGXLCyOZqrNJvT4pte4ZNt3FIhsXlHGhXqACVMSZHlnTHaj8S5EIC5SOn5Gm3coCCvzXw==
X-Received: by 2002:aca:d608:: with SMTP id n8mr14042577oig.127.1616886472827;
        Sat, 27 Mar 2021 16:07:52 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id r16sm2504239oij.13.2021.03.27.16.07.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Mar 2021 16:07:52 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 00/15] Pull request (cover letter only)
Date: Sat, 27 Mar 2021 13:07:30 -1000
Message-Id: <cover.1616886363.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit ef52b284e8cbe90c18fdab6a0d6fa8095a2c4ed9:

  send-qa-email: Save the QA email in case it doesn't reach the mailing lists. (2021-02-23 10:24:14 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman

Richard Purdie (14):
  scripts/run-config: Don't execute steps that don't exist!
  scripts/run-config: Ensure stepnum has a value when there are no steps
  scripts/run-config: If target is present default to 1 step
  run-config: Adapt to two pass execution
  scripts/run-config: Improve logfile naming
  scripts/run-config: Ensure logging to both logfile and stdout
  config.json/run-config: Add human readable descriptions of steps
  scripts/run-config: Remove redundant boilerplate json
  scripts/shared-repo-unpack: Add flush call to update the output more
    regularly before buildtools
  config.json/run-config: Add support for shortnames and descriptions
  config.json: Unbreak qa-extras locked sigs test
  config.json: Add further descriptions
  scripts/run-config: Disable output buffering
  config.json: Split reproduciblity tests into their own target

Ross Burton (1):
  config: build and test SDKs when using package_deb

 config.json                | 101 +++++++++++++---
 scripts/run-config         | 235 ++++++++++++++++++++++++++-----------
 scripts/shared-repo-unpack |   1 +
 scripts/utils.py           |   5 +-
 4 files changed, 259 insertions(+), 83 deletions(-)

-- 
2.25.1


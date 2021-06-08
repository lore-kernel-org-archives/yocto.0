Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web08.11114.1623153071001241604
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 04:51:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aLUK+BVZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id s22so6182850ljg.5
        for <yocto@lists.yoctoproject.org>; Tue, 08 Jun 2021 04:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ma79wsbR5mWzEdmcvRm7Jv6ZK/iGoabEmugZ8OC1xVU=;
        b=aLUK+BVZ54glSisfRzZxYcFvhwVeeBsjT4sgQm6JKVEa5B2T6mxz6ejY8m/5rgFdWM
         9a0APga30xk6NxkPxwwxotmOKvEfjvAg2rfmyt4T9N8wppqbilWKGT3arXFqNnIP/rmc
         IWqD+jzZprCb8ekHK195FiKx+1ZvjDTUmPVeLStCsumlPoXGD7KJQPkDovTV73FYrFJW
         KkOkgBPW8uaKLNmQJEj0fcxTmJ8DQ2IZ426CJtzZAgVbStjt1VazYq3xCufTwoiScuy/
         ErqxVNuVfMoxCtOmFVpNPSPx6VtkAAeEcJ4VD9FSawVtFDsdM3S/MaU/89ErTV/TXqMW
         yxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ma79wsbR5mWzEdmcvRm7Jv6ZK/iGoabEmugZ8OC1xVU=;
        b=ipWBkLprPwGX4ENZbSqjSU5/Et6ITAgfuPDLwd9tLpxNdKJQgkXAqesyNK4AUHTiby
         cm3zvEIfWPKtkaSksSXoao2o0ZbObjlF5oDLx4xwdJcpdW1DsNbLTmqVDiyoWEWxFe2l
         0a/GgeVuWMX20ZWk8TCPDOvDzVWytEP/wfPaPnzlEym/P68YXe03+daRTNAo1L/W/pkx
         GWzrzsS+4kREvPJ2Uc7ziJhUjiyWwVy8eXOEvWD7wYhyCoAgHv4q06nJShpYWCW38Wqg
         eYdZGKkxi1Gg/w90feZLDAqb0r0Bx3KePa0jRX4KdVjmm+dpni1KAfMSIWfQDxxT6DbF
         R1dw==
X-Gm-Message-State: AOAM530zyVDpjqHtBd5votLCRXju1RpJvmtADvwc9/l9yRw74HufGkqX
	RsgO79XA+8S3Kf6pIzgqfTr29MVS7eWe0g==
X-Google-Smtp-Source: ABdhPJyzJUJo9LG/yOlKixQkiBc1eCkv7E9c/iiBJf7hFtwyys3//yuh3GOu2cwnKLNrCSZh99B2RA==
X-Received: by 2002:a2e:a7c9:: with SMTP id x9mr18213690ljp.216.1623153068933;
        Tue, 08 Jun 2021 04:51:08 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:41ca:d8d:7bc0:8ed2])
        by smtp.gmail.com with ESMTPSA id n17sm1605830lfh.220.2021.06.08.04.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 04:51:08 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 1/2] zephyr-kernel-src: add 2.6.0 release
Date: Tue,  8 Jun 2021 13:50:47 +0200
Message-Id: <20210608115048.17205-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210608115048.17205-1-zmuda.w@gmail.com>
References: <20210608115048.17205-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Zephyr 2.6.0 release notes:
  https://github.com/zephyrproject-rtos/zephyr/releases/tag/zephyr-v2.6.0

Update the following submodules to most recent revisions:
- hal_nordic:
    nrfx_dppi: Fix variable used in logging function
- hal_stm32:
    dts/st: use a pull-down for SPI SCK pin
- openamp:
    lib: update open-amp lib to release v2021.04.0
- libmetal:
    lib: update libmetal to release v2021.04.0 + VERSION path fix

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 .../zephyr-kernel/zephyr-kernel-src-2.6.0.inc       | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
new file mode 100644
index 0000000..7ef1697
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
@@ -0,0 +1,13 @@
+SRCREV_FORMAT = "default_cmsis"
+SRCREV_default = "79a6c07536bc14583198f8e3555df6134d8822cf"
+SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
+SRCREV_nordic = "574493fe29c79140df4827ab5d4a23df79d03681"
+SRCREV_stm32 = "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
+SRCREV_open-amp = "6010f0523cbc75f551d9256cf782f173177acdef"
+SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
+SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+
+PV = "2.6.0+git${SRCPV}"
+
+SRC_URI_append = " file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
+            "
-- 
2.25.1


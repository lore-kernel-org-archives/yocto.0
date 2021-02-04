Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web12.6178.1612435628543496915
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 02:47:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W61clHNZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id f1so3844150lfu.3
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 02:47:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cN4qph+vzHl5cOQ0RVc4DnNLVgEhR/WYY5CejYf0DFs=;
        b=W61clHNZkEgbZTPSr/ia8/PZ0YOmdGAPaO1HSt0x594hzspj1/zT8gfpUOL31d9nvU
         TRCYnF3ZGIsu+rGDuzsajVJiwuwFDdmXoj0b2MefQ09foimXfqWT4SIEevX7WmocHD/x
         zFxXgy0chFAoSfNpvBtQpEm8crsZWgopFYOrmwbITS1C76nnVCwFPJbVsQD07UyRz7LD
         d2ju2GO/Xgh+nPSeJIpoAVQgKzd76HJAtDtg3LmL5JsJgYms2kDYpG+p2pz8LTBM64MU
         Txh8V+z1SE/tT9KGuXK8CeHG8DX0BIURWBhsGc4AReyAmhE1QFtOfUK2imAxOL9/pKfy
         lL2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cN4qph+vzHl5cOQ0RVc4DnNLVgEhR/WYY5CejYf0DFs=;
        b=d3UW0AyYb8IOTvhEWQ5F9Cj0L5KnALMTBBzaBGE9ZdgEy8kPPpP7Opz98kEanJ8lt4
         OOmNZyDZ3clcIim2e19Ufbwf4ksP2c6RjXGaut83EgnCkHISmJghI+6YTpRUXMC2GWKT
         zhPrbMNuzq0VlDXAC+lS85dCBh99/g3+Rd6QWEwdQ7ZiZmp841ln+KtMdsTL75olonJO
         hdB/hd8k1rgmrk2JwzAHtnIHlNg5ghUy20fWwUbnoHnANn75XcM3Ko7e2xFBkSM/Ctoe
         9Y03VIkH7nZyJwYsDia5tYiuhPQl43sDy6kOSYvSGLqYwU3KQSqqzyqtegpy6s/+gtlC
         WiKQ==
X-Gm-Message-State: AOAM531qLH0YDrPRrX9ha4stQ6jziMxmuQv1SuGy1iJI2yAoDgF0df/+
	uxhN3Sx6sXeRLBDLLn9JjiKvyp2vgK+g4ULu
X-Google-Smtp-Source: ABdhPJzse+nDLInsm5JZI8FvPRWoprTvgWsR5FQXTnjNG7wORpJSRSe17B72bW7lP7czYm/WYq7phg==
X-Received: by 2002:ac2:4154:: with SMTP id c20mr4497259lfi.145.1612435626724;
        Thu, 04 Feb 2021 02:47:06 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:6dc7:7f99:796b:dced])
        by smtp.gmail.com with ESMTPSA id y29sm554389lfj.198.2021.02.04.02.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 02:47:06 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
X-Google-Original-From: Wojciech Zmuda <wojciech.zmuda@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: andrei.gherzan@huawei.com,
	stefan.schmidt@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [PATCH 1/2] zephyr-kernel: clone Tinycrypt
Date: Thu,  4 Feb 2021 11:47:01 +0100
Message-Id: <20210204104702.3214176-2-wojciech.zmuda@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210204104702.3214176-1-wojciech.zmuda@huawei.com>
References: <20210204104702.3214176-1-wojciech.zmuda@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Tinycrypt is a library used in some sample applications,
i.e. in zephyr-peripheral-esp. Add it to kernel bbclass,
so it can be referenced in applications recipes that
use it.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 classes/zephyr-kernel-src.bbclass | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index b7fb81d..c6c8d61 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -9,6 +9,7 @@ SRCREV_nordic = "d8a6ea9695ddf792bb18bb6035c13b1daac5d79c"
 SRCREV_stm32 = "f0e11398128ac9abdff713da5d3035e6c96e9b86"
 SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
 SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
+SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
 
 SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.4-branch;name=default \
            git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
@@ -16,6 +17,7 @@ SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=
            git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
            git://github.com/zephyrproject-rtos/open-amp.git;protocol=https;destsuffix=git/modules/lib/open-amp;name=open-amp \
            git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
+           git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
            file://0001-cmake-add-yocto-toolchain.patch \
           "
 
-- 
2.25.1


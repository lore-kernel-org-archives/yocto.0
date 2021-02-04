Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web11.7617.1612444197152457251
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 05:09:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JNmxqXgQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id c18so3295785ljd.9
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 05:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gGWGni5N4XrZlEnWaR5BkC/prTEBodmz1b8pTpuX7kE=;
        b=JNmxqXgQbt7MQ62mSM7fglcJXef8apv5y6uFvxCl52Ly7vzdLAjPCTPFhtwqdqAV5l
         cg6dJSzy5RlPr1lvNSx7TDZfQTsNhj5HVKYaeZkVxZ/7dXmgeK8B3nFVvX6V93NYhTzL
         EnBDpR9NHhM4OnvaK+WY1ONNIpCwYP5mdz14+RgA1NF0S6FemguZNVwvSWJMb9k/7ydL
         HAsH2lB9ZyUfaZ5NQ/4nrXbE5mOW8Lve2rUZZ7ZcL3pRuMXuqfZy3KgcO+eBNMd1aFUh
         RQcrG30lehWaMRT3wWaguZATPexwB/JPnaG8+wNZ4+k5XHB8+kVUH8G/Y5fQ0H6za8jh
         qfvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gGWGni5N4XrZlEnWaR5BkC/prTEBodmz1b8pTpuX7kE=;
        b=g6Qy7a/pb2sfGepjBXZzioQ1xJd1rddYhHxOQbU/ysRecgU8Jv9qlk9TUbffNDQdfs
         K8aS7EXeVC5O8ze9XX56WuFc/gRT766VC0NbTyNMz9CSZS1N8WNerS76oqyEx2nwEJBT
         YeL1OHLazAfKpGYGziWZ8zWjHSKTcDuXvUutODHqxwKK1rZfT8LSgmWD61/w31I7ZbNZ
         ThYX97bxszAl+AtjEhUHJgZujAgIdxiDCRE8p126DqxlCl4AOz/YIqDCxMpX3pVmZac4
         f2OoaXMd7pZ/5sh76NcrXajHeOfVFzkbEm4oqRyUDorininlJl/8TeAyD4aeC5YS4+oS
         EvDg==
X-Gm-Message-State: AOAM532bftWWpEVVGHPo7NFb5cSrpjOtrRPMin5Sxtq0JJGqTanOvpx6
	Cl+ew0F6f2hRtil45glt8JIKYuW6wi85EOqU
X-Google-Smtp-Source: ABdhPJwoqolgHBQ2g0VWaLJPCqc8P1yp1KohM9tr45s/EdGUHefGwzMUP4J9Ou0PfBa6CmFWm3r49A==
X-Received: by 2002:a2e:8005:: with SMTP id j5mr4789814ljg.34.1612444195238;
        Thu, 04 Feb 2021 05:09:55 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:6dc7:7f99:796b:dced])
        by smtp.gmail.com with ESMTPSA id y10sm599122lfy.57.2021.02.04.05.09.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 05:09:54 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: andrei.gherzan@huawei.com,
	stefan.schmidt@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 1/2] zephyr-kernel: clone Tinycrypt
Date: Thu,  4 Feb 2021 14:09:49 +0100
Message-Id: <20210204130950.3218546-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210204130950.3218546-1-zmuda.w@gmail.com>
References: <20210204130950.3218546-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

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


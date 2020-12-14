Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web09.36161.1607958901607338235
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 07:15:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDDqPIwX;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id y19so30912386lfa.13
        for <yocto@lists.yoctoproject.org>; Mon, 14 Dec 2020 07:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/+j1B6S+/cQuu7Sb+TAmw8Y0zI22SoxG+A/NuYgXoZ0=;
        b=uDDqPIwXw71owRz2uFtzaivCNJ2VFpaxabrvlVvMlrngGYUC6ZstzFfQHMbT4K7syz
         SRVRoCyfqXhuObqYkb/XxfFWoZN/N4NyoR05HVP2uhKoxnPoKeqXo4JFu0jLP57crktq
         YBJdZvfW7vMR3CJRUfl7aqzprzSBMcqGmbZsrC0QKamUyQgPSo0zWFyPpOxAq6HCSyky
         gzuqUMaK/uG83g1biVT+8/jA5ydXoW2k5mqGfQGtcjADQzI/bgpxVzvf/tU0HIpgiqwI
         5ebTt6Q+YfYVKb48iXRZ0IC1YVgYfKVoO3mGidpG/gw0ttldpskdeczrZNfY7CMGPDRB
         4khQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/+j1B6S+/cQuu7Sb+TAmw8Y0zI22SoxG+A/NuYgXoZ0=;
        b=AnvMNvlJqMaLODQguzUfCEYfTB7fKw0QsKhINVYvNf4QAqiao0f4PWIlvQNcuwOf7j
         dNpIR0LMkFoPaAtSlMJtltFDV1zQPH6IvHltKKv2FkZslgVZayPVB26UokpNfyE7cGCj
         6L+ltZyX8WTnWRJUuPCVBQ671MRoPhBbsjHLYyEo6TzTUZN5Nxz6zhfck6mUxZ50NqvV
         XuuWn0/BnzfqTcnIaUKr75MEB4mBQLwtzOFhYOngnciX1gEyXRviFnwpBXcWgIS8Lmjn
         vItkwPfYMl6mZf4rhLpUJeKCc4F/ANTp+2403VYxYSCFzLzrv4faZJ4NgLwbszVUXMSS
         3r6Q==
X-Gm-Message-State: AOAM532OQBZRdq4tohCufoQqsMRGtWbtWBjV8u6ymi1KwetZMJ149TeX
	uyIwR/8J11EcWWINFRD/WCOYP48IYHSaNQ==
X-Google-Smtp-Source: ABdhPJwLZ1mcZeZCdT7Uf0EYuYCH13RGQIGLEj+wkgp7NWvdXc/PnkhEBROp2dl5LunVEm5d4oZ3ng==
X-Received: by 2002:ac2:5c5d:: with SMTP id s29mr9412374lfp.88.1607958899810;
        Mon, 14 Dec 2020 07:14:59 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id d23sm1885286ljj.24.2020.12.14.07.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Dec 2020 07:14:59 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 2/3] zephyr-kernel: clone OpenAMP
Date: Mon, 14 Dec 2020 15:14:41 +0000
Message-Id: <20201214151442.4592-3-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201214151442.4592-1-zmuda.w@gmail.com>
References: <20201214151442.4592-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

OpenAMP is a framework providing software components enabling
development of software applications for AMP systems.
It is downloaded by default by west from two Zephyr Project
repositories based on original OpenAMP repositories:

 - open-amp - IPC layer that implements rpmsg communication
              between cores,
 - libmetal - HAL abstraction layer used by open-amp.

Clone the repositories so they can be used for building images
for boards with multicore chips.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 classes/zephyr-kernel-src.bbclass                     | 4 ++++
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 1 +
 2 files changed, 5 insertions(+)

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index 4e05182..b7fb81d 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -7,11 +7,15 @@ SRCREV_default = "7a3b253ced7333f5c0269387a7f3ed1dee69739d"
 SRCREV_cmsis = "542b2296e6d515b265e25c6b7208e8fea3014f90"
 SRCREV_nordic = "d8a6ea9695ddf792bb18bb6035c13b1daac5d79c"
 SRCREV_stm32 = "f0e11398128ac9abdff713da5d3035e6c96e9b86"
+SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
+SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
 
 SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.4-branch;name=default \
            git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
            git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
            git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
+           git://github.com/zephyrproject-rtos/open-amp.git;protocol=https;destsuffix=git/modules/lib/open-amp;name=open-amp \
+           git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
            file://0001-cmake-add-yocto-toolchain.patch \
           "
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index c7c894e..1357c8f 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -18,6 +18,7 @@ EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD}
 EXTRA_OECMAKE_append_arm = " -DZEPHYR_MODULES=${S}/modules/cmsis"
 EXTRA_OECMAKE_append_nordic = "\;${S}/modules/hal/nordic"
 EXTRA_OECMAKE_append_stm32 = "\;${S}/modules/hal/stm32"
+EXTRA_OECMAKE_append_openamp = "\;${S}/modules/lib/open-amp\;${S}/modules/hal/libmetal"
 export ZEPHYR_BASE="${S}"
 
 
-- 
2.25.1


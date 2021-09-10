Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web08.14154.1631302894828152755
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Sep 2021 12:41:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=U1i4Hpzv;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id w17so2501689qta.9
        for <yocto@lists.yoctoproject.org>; Fri, 10 Sep 2021 12:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y3QuhlSzQHifREkbvYz+1xQKWEjmqqanwaZpRKLnRmk=;
        b=U1i4HpzvT6QMb07KfMp/Jn9CQqEv3UwW+NdvNupj6oOGSHXkoJP5og+HTHMY1iQbgs
         XRGlUrCs86DLUSR4meU1ICuMpFDTtMPL/h4ewaSGrXc0eTrVWB/Y5cEHYfrthk7s8w5z
         RzKLErgvTVuTreDJD4qHimCxNHJIBtvI74coUMXnR0yRPo6J3LlukAxSzNcd0OZwvPxy
         GaTHUKqzsf5SxcmCytjRFijHc8oYjy4HEr5mbs6w9IWNySmozs7Y0Q6PyHu9hzd2WXfv
         X4Gao3jIj7YpHRQHnSqIs6q4gsYLxAnqbY0bY+f6k9/TXiFsiqgTt6kcDfc/nz983Hf3
         M16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y3QuhlSzQHifREkbvYz+1xQKWEjmqqanwaZpRKLnRmk=;
        b=JIngqNmjF0qHXix00Gcikm7iKNpiWUKwsCADBlF8b7AbtnWXpuZo6dvbHW+oOZAYtI
         zav0svctOOgpd8VM7x9VZIM7cMrSxQctri2djlgnmXMStRpTcfiK8fmdVDf2V70k/BF8
         oK/k6TayXUEN3l9FowxGGVEgJbxmmGjtKP3kas44rIvNuFGRTXSLyewkqPUcOhzPPrz3
         qMwNG10F+HPAZAm9q3wrM1j8Lm9qcmvsKus9PPNLnWS6HbzH6ZNAs/k52fsNeQY4j8/D
         XweBrDgEPC32gmBCs9HAexmCWRmZMgbt1dIl27tRXCRMSmI/3Dv/WKsT/1P1XbpA0rKc
         220A==
X-Gm-Message-State: AOAM5316kT89j0S9yUUAJRvMImqD3hFu7RZ/gD9Tgr/0BuBQEWtQAlDw
	nWtEReDkSnX5fhRFcqso4H0=
X-Google-Smtp-Source: ABdhPJxQAXvmxFwkdFeuEySGIs6HwymxrW//B54/sKrbK4FvwaPyc6/E5KOBgeHdVlpNGXG90n1Uvw==
X-Received: by 2002:ac8:7396:: with SMTP id t22mr9580806qtp.199.1631302893931;
        Fri, 10 Sep 2021 12:41:33 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id t64sm4373589qkd.71.2021.09.10.12.41.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 12:41:33 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2] yocto-bsp/5.13: update to v5.13.15
Date: Fri, 10 Sep 2021 15:41:31 -0400
Message-Id: <20210910194131.55917-2-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210910194131.55917-1-bruce.ashfield@gmail.com>
References: <20210910194131.55917-1-bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating the reference boards to match the oe-core kernel version.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.13.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend
index 6089a94d75..daf5fd2cd6 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "fe64083abac67ac736aa0133f3a4088286aece40"
-SRCREV_machine:genericx86-64 ?= "fe64083abac67ac736aa0133f3a4088286aece40"
-SRCREV_machine:edgerouter ?= "7b80606f7484fb1967a261e7e262de9adeb7ed59"
-SRCREV_machine:beaglebone-yocto ?= "e486ea86794d62e7e6adbb3a2b2fd65222f323f7"
+SRCREV_machine:genericx86 ?= "7280c93f5599946db3add473eeb05b34c364938d"
+SRCREV_machine:genericx86-64 ?= "7280c93f5599946db3add473eeb05b34c364938d"
+SRCREV_machine:edgerouter ?= "a832a0390e96c4f014d7b2bf9f161ac9477140f7"
+SRCREV_machine:beaglebone-yocto ?= "dbdc921374c057a75b2df92302124994e241ca51"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.13.11"
-LINUX_VERSION:genericx86-64 = "5.13.11"
-LINUX_VERSION:edgerouter = "5.13.11"
-LINUX_VERSION:beaglebone-yocto = "5.13.11"
+LINUX_VERSION:genericx86 = "5.13.15"
+LINUX_VERSION:genericx86-64 = "5.13.15"
+LINUX_VERSION:edgerouter = "5.13.15"
+LINUX_VERSION:beaglebone-yocto = "5.13.15"
-- 
2.19.1


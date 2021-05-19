Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.10925.1621429285943928940
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 06:01:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JfJQ1jTO;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id s25so15505123ljo.11
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 06:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T6VYdLEHYd2cz3wgtgUMhQL+yKctjk7CzyuL45MEHEg=;
        b=JfJQ1jTOu9WIODY1nD9RA3cAR/Vm6Zte3YJIN5/iUE3KdLj4QBG76XLiUYkTI7iKB1
         MvcYLkYXycx1qNhknpdTAetFebuEumrudjJUp6byAF18T7FhwIc0IU1KUk5Him8sy2R8
         JN3WKNxDLCHnqotJESD260VA6aX+Fc0sfwvPOazxAEm6um1bV8gHKYkIwTCSOzyCfFyO
         uetSKvdOcvK009wBbQzJjzg59cXvzkWESqnwwRVD1sAk9a84oHfaJTsFS3qgEfpNBYEA
         /FEXgw/IUnfo6PTH/KE5pcKggGcLhaOb/BBquEpRBlGLA8/oDLkAJS+gPonoHaTqh7yV
         T0cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T6VYdLEHYd2cz3wgtgUMhQL+yKctjk7CzyuL45MEHEg=;
        b=WlIwbUZFmI38/Gv7UlJCz7leODcdbvhNwifHRdkWAtIUk7FaFWRGbV9rdxcrxJOp7B
         9DEHWWFmOuFtps8qReDYqr8u6jd740fkEkdixb9+8YP1eL46KhnKvK/DpieQkw2kzTh0
         M+gepW8DxUhqd0FfdkBRwXhxxVJSOc6ULSSSVjafclbsElSHXFjGQNhz8d0PVqh5SwOD
         3jdWRoHym4cTdh1KjTZdVzkEa2lbml2/PK30Do4KLZIjDEIPFvNee6umHITMGMvQIvqU
         tt6IwA/nQ8Uv5WwuDZ6EyinD+VmLBrqvw7hN3JbZm6asTz9T/02tYCWHkJ2lmxIl/nZZ
         OGWg==
X-Gm-Message-State: AOAM532Un5+s3tU1eUearkgYZSFcPeuENo1BfSlrJVxZmi+MiQR1W/Fu
	uTtZQ6DJ4SqpXYsdQpB+vtuDWTyRhDJhvmw6
X-Google-Smtp-Source: ABdhPJwsn7xtBAxEXhbYWtuNmLKXGKeozAWBkArD1arHmXdUgVd4IxDhjQot9B8dszzSybID+e/NYQ==
X-Received: by 2002:a2e:a365:: with SMTP id i5mr8855423ljn.344.1621429283945;
        Wed, 19 May 2021 06:01:23 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:ef2f:5b80:79d4:29e9])
        by smtp.gmail.com with ESMTPSA id k21sm2536015lfu.98.2021.05.19.06.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 06:01:22 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 1/2] nrf52832.inc: Rename to nrf52.inc
Date: Wed, 19 May 2021 15:01:10 +0200
Message-Id: <20210519130111.2585823-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210519130111.2585823-1-zmuda.w@gmail.com>
References: <20210519130111.2585823-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

The file is so generic anyway it can be targeted for
the nRF52 family without any harm.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 conf/machine/96b-nitrogen.conf                   | 2 +-
 conf/machine/include/{nrf52832.inc => nrf52.inc} | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename conf/machine/include/{nrf52832.inc => nrf52.inc} (86%)

diff --git a/conf/machine/96b-nitrogen.conf b/conf/machine/96b-nitrogen.conf
index 998db4c..48f2041 100644
--- a/conf/machine/96b-nitrogen.conf
+++ b/conf/machine/96b-nitrogen.conf
@@ -3,6 +3,6 @@
 
 #@DESCRIPTION: Machine configuration for 96Boards Nitrogen Board.
 
-require conf/machine/include/nrf52832.inc
+require conf/machine/include/nrf52.inc
 ZEPHYR_INHERIT_CLASSES += "zephyr-flash-pyocd"
 ARCH_96b-nitrogen = "arm"
diff --git a/conf/machine/include/nrf52832.inc b/conf/machine/include/nrf52.inc
similarity index 86%
rename from conf/machine/include/nrf52832.inc
rename to conf/machine/include/nrf52.inc
index e938aa6..d22f8bc 100644
--- a/conf/machine/include/nrf52832.inc
+++ b/conf/machine/include/nrf52.inc
@@ -1,7 +1,7 @@
 #@TYPE: Machine
-#@NAME: nrf52832
+#@NAME: nrf52xxx
 
-#@DESCRIPTION: Machine configuration for Nordic Semiconductor nRF52832 (Cortex-M4) SoC.
+#@DESCRIPTION: Machine configuration for Nordic Semiconductor nRF52xxx (Cortex-M4) SoC.
 
 require conf/machine/include/tune-cortexm4.inc
 
-- 
2.25.1


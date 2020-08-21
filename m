Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.140910.1598036886338941393
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 12:08:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CK8BxsTW;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id cs12so1107958qvb.2
        for <yocto@lists.yoctoproject.org>; Fri, 21 Aug 2020 12:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=l/JNuTwnQcJDk6iFW91qqNZJieuNV+G+6vo2Tgyi1zQ=;
        b=CK8BxsTWW/8gtR3t6USY4wuoaD2pR/rdcRI6LgXspH66N0OLn6GoEkU2D5uZq0FIvK
         GZvB2P5gMBffIlEoRgXClZhiG/kTpmopivTkdxhPJE4KsT18oKwbY4MBqS5LSh+miiIQ
         VFtH3vfgNm/O3dfukS883XwP0gmzCnbEtbsHMkpeIy67zmNZ6HxgJkrlpTgT6G7y4ESY
         ILDsAFZB3iMTwIf34VjWJMWv9agfnRsnT6hR0iUy7eWsvfaSRC66sApFQ89xT6s7rg1Q
         iAKCI5b1CQK/pXjqm3cmSic+5NM4qRNF2NrJuuJAlZQbT/4SONwze4uQbRgr23Zzuuk8
         kqFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l/JNuTwnQcJDk6iFW91qqNZJieuNV+G+6vo2Tgyi1zQ=;
        b=YfAkgQkUapQefZWruKeJNgXMTAZz81+gaIcz11h8w73fVp5rPE8j155XuZjFireyPa
         0Qd4ni5N7hfi53Sj1yUSxc8vVkS4GAD/S+F7k8051RZanK99gtYZyeOVU9iKXGslEtV9
         C/6ZCKtyEHdt2eC3+/YZCqHwT/oIEoWVKLpUCio0AiIeu54smTGbJDv+WXTx7VCdXGOk
         TtGeILlpoj7bub6TVqUWJI+LXxeKWczfXMUYeOCxXpunu80gLESBsJFiH4rxMW5LgQBH
         YhsFBRpSNF5JpDfhw6Y1RhKl/mS/nWGaD55aX/54LZQjpokXRQQXTPw3SWU+fDSRJpnz
         VpYQ==
X-Gm-Message-State: AOAM5310iJUnonj+w+A8SqOLI9kR7EAyFyHV9FebrUHAZhb9huaggazd
	a87AfhtnsQdULoCjMmhn1uk=
X-Google-Smtp-Source: ABdhPJwpvniWPupyVVB7WJ0PeUp3NFpvQrVt6OVfbxrLK9d37NESOsewmEX6Y2hKPXP9uu+RSQzLRw==
X-Received: by 2002:a0c:b681:: with SMTP id u1mr3595570qvd.189.1598036885499;
        Fri, 21 Aug 2020 12:08:05 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id y46sm2927264qth.78.2020.08.21.12.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:08:04 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 1/3] poky: set preferred version for linux-yocto to be v5.8
Date: Fri, 21 Aug 2020 15:08:00 -0400
Message-Id: <adcc43f5834a7d378f0904d0c3c0af3db88d2f05.1598036643.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1598036643.git.bruce.ashfield@gmail.com>
References: <cover.1598036643.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index f2ee0d1877..826f0d633a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -21,7 +21,7 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "5.4%"
+PREFERRED_VERSION_linux-yocto ?= "5.8%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.19.1


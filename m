Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web09.72407.1629392447706046385
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Aug 2021 10:00:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YuFK5p+1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id u15so4248539wmj.1
        for <yocto@lists.yoctoproject.org>; Thu, 19 Aug 2021 10:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=pBw2YpAeIZAuI0yN1HBBHksfCMmyoS3EtjPbVLToSTg=;
        b=YuFK5p+1AG/veUUS/0I+dNrPla8Jbp+zWbj2WAtEvndfDn+zHWWgowXt6YyUVSnMuC
         Q7uuPeRIpTSLvuxRdRancAyqTUvfVkhTshW4g/PhpSZjiyXJHYz2tiEO7lligKsJLHJL
         Gin6aNYoR+Sv6ptYzht67V47amCUElkRZEuRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pBw2YpAeIZAuI0yN1HBBHksfCMmyoS3EtjPbVLToSTg=;
        b=qBSZCtvmrosDvLrw70/jkg25TOP6v7quW4Kr/X0n9UIWyCZ0UbuunfegZ6L0+hzl1w
         che45DZ52tABEuxWpxBZVc4vPAY4J5cb8c+OKjIvEBnMiql521AY7cj/lof4zcYv+S3s
         lTBkGvOCt+SPQQJTVToTvkaq90zgIQsK/IYIRJOIeYd1SBMiRJ4K/YOMv4oqLv5Ph3/b
         LuxMIODZikDTAlLAK07EYBKUubYGhzNbaThIgogR2H1KxTeJOdI3xd7fH5mBlVgw3zIb
         3UM7BnjPIDQmhUdrBnRx9voj9OtByZ2P/RpgPA5Wzxuy8KnkDIQsZ9t5fl7raw2wbYDR
         NmjA==
X-Gm-Message-State: AOAM531vdZkPuaU/wbns5jF5qUIznE1uMxZagiIsSFM6DMj0FCl+yrqc
	DRtzJMp3fdNiG0vJDuZBd1Zrmem4w6fqAQ==
X-Google-Smtp-Source: ABdhPJwvuyiZhrypNi73XdmkBY4ZfAn6a6hV3poiu1u16nqDnvaUcQTEup8JuPCoxJ3BJPx03zp1gA==
X-Received: by 2002:a1c:ed03:: with SMTP id l3mr14158370wmh.56.1629392446052;
        Thu, 19 Aug 2021 10:00:46 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:893b:b0d7:8112:9a58])
        by smtp.gmail.com with ESMTPSA id o34sm8342265wms.10.2021.08.19.10.00.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 10:00:45 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 2/2] elfutils: Work around reproducibility issue
Date: Thu, 19 Aug 2021 18:00:44 +0100
Message-Id: <20210819170044.45851-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210819170044.45851-1-richard.purdie@linuxfoundation.org>
References: <20210819170044.45851-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The version in this layer doesn't reproduce, so disable the warnings/errors
and allow it to build.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 recipes-devtools/elfutils/elfutils_0.148.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
index 848e2cf..97d88a2 100644
--- a/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -66,6 +66,9 @@ CFLAGS += "-Wno-error=format-truncation="
 # but 0.182 has different license, so to be safe don't backport the fix, just ignore the issue
 CFLAGS += "-Wno-error=stringop-overflow="
 
+# There are fixes in later versions for this but the old version won't be reproducible
+TARGET_CC_ARCH:remove:class-target = " -Wdate-time"
+
 EXTRA_OECONF = "--program-prefix=eu- --without-lzma"
 EXTRA_OECONF:append:class-native = " --without-bzlib"
 
-- 
2.32.0


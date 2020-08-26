Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web12.5123.1598411516091058961
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 20:11:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=L/u7qOJp;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id s16so437497qtn.7
        for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 20:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HitK9rResjRtMVOf2JbdrA2V9I03vLtlIjAwmJaChwE=;
        b=L/u7qOJpqr8lSMZLUQsyhhqHO4jyc782QD43Bmdjt+2DizNRTmnNm99nGUIAeXCJ2m
         AKNR1Ns/I1By6G5vm4CvZWiKFgzybQ3vm6+E79DqUhSt3mCKRIBJOEqxEPZ+kJ2AmY6J
         KstjdAtq52VaZiuX8W9G8KahPETgs4Odvfh7k9a38UW58gu9KPpxWn7jgBC/Gxzjt1e6
         m07jHI0+KRHBC8c3/LH8d001Z3LmARBsUCd+qI+Utq0nnikZ3UEOUiDvwP7z7GQwsshY
         EBzD0WyRsV2uPCUd9ZA/SnxIboWAxL447sVLNah7HnGwgl/uMAU0P58mdDgv8tx9EAQs
         zt9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HitK9rResjRtMVOf2JbdrA2V9I03vLtlIjAwmJaChwE=;
        b=VACF4uFINJ6uJbFmovcJNnev5vywxqfW7oEaOzgI/+O1siX4j1KrZLAEDFPm9a/y40
         fVxRaQ7JdvIWU+fivMluw6wYh+n3i4GBVt/7xzttegajouMicq6t0u0OWsYlnZ3HTrEr
         NNs4lBpGqsGFTPIoUBdOtKKWibcxqRG4Ln2y+5ZkbiSqdn82Nb7ocF2FYB2R00fpIOKO
         lUsKOFpzIZKFlQK4k9zzAQNnzPM5sbhugc6UY8lIXdJbk5u9ec77J8S1pg9Fi/udNL31
         8jzs/3/801q6HY68TQ7K/jWH474Oe5e0uu3TvvGdbeBlQ8xoo2aXEwUpgL4CgHyBb3Bl
         Wbgg==
X-Gm-Message-State: AOAM531/8LOrIrcZtKF+xfFTvCBUZ0Fn+phICKJHNcuisffICs3Yyema
	gYvVFKfBBHOJfzjrJLbw5Z9cZmGLcruvXNeY
X-Google-Smtp-Source: ABdhPJyuOCT5Y4u8La2bTpRxVXY3Z/nwFY0xrWexdEx+AqdxOb5pvdioWNs5FYG8Z7VlI8rxyO17LQ==
X-Received: by 2002:ac8:6b84:: with SMTP id z4mr12521202qts.279.1598411515213;
        Tue, 25 Aug 2020 20:11:55 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id h20sm691218qkk.79.2020.08.25.20.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 20:11:54 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2] poky: add preferred version for linux-yocto-rt
Date: Tue, 25 Aug 2020 23:11:51 -0400
Message-Id: <20200826031151.6605-2-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200826031151.6605-1-bruce.ashfield@gmail.com>
References: <20200826031151.6605-1-bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

As a step towards getting more testing on -rt, we should explicitly
set the preferred version for linux-yocto-rt.

Newly introduced kernels lag in -rt support (as we wait for upstream
projects), so we don't want the version to always be the latest by
default.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 826f0d633a..b89dc5c1d9 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -22,6 +22,7 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
 PREFERRED_VERSION_linux-yocto ?= "5.8%"
+PREFERRED_VERSION_linux-yocto-rt ?= "5.4%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.19.1


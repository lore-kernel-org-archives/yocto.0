Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
 by mx.groups.io with SMTP id smtpd.web11.1562.1603175947137610042
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 23:39:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@miraclelinux-com.20150623.gappssmtp.com header.s=20150623 header.b=Tg7rt2uj;
 spf=pass (domain: miraclelinux.com, ip: 209.85.214.195, mailfrom: taisei.nakano@miraclelinux.com)
Received: by mail-pl1-f195.google.com with SMTP id d23so490391pll.7
        for <yocto@lists.yoctoproject.org>; Mon, 19 Oct 2020 23:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=miraclelinux-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VOd+1Xfr/xyIIw4XAYN6N/bWplxuhAHh7Rr9HCcZFH0=;
        b=Tg7rt2ujuX2HxzLTZsf24I0CumcgmioJgslHTTQitQCQ0Fs6DxB3eGKCdxT//d8Mfc
         3A981MM9SAffZ4TbLRUSz1Zy9KTIKaPLU8ky99Tsd7ib/qfjxRF2w0p18N93gRNJQqi4
         Asr8O0pciIO4DZMW9sOHiCJm2EpI8PV1VT6vVzGxPH0+t+0rjy6LM12tma/jZYLYveqJ
         OLYM4Dmo3pNmrXzMM6tO4NR4kWev7+WePoxFZb9KPPiFIDCYqTpIv5EBa8sMjDOgLxEO
         xGKiguIXW16ewBQUvpguoRS/UdgvmsS3Tyz+T8p+QF1hVxOwrzFGGwCPs8FNHFOFRYka
         yKNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=VOd+1Xfr/xyIIw4XAYN6N/bWplxuhAHh7Rr9HCcZFH0=;
        b=WzeEaG+sad4sgz03ThtvdkWVDUaJTIluI2T6/do4f6Xu6s0TlwF0gGzhOrXzL/8bVv
         K0rw5JvW6TKhdst6b7HplZlXHtNMeDJH01+MveJBpoMEWWwGVFLc2WSz6qmhpAzXxjYC
         h7hjF+GC6woyOfarc68ZnKMeVI7AnxpQeq7wlSGPoOCi/F3SxW1EUKdeUDc3ocQ6H/dL
         8xSPq8+f8leT0gaO+2yxsNHfH780VsMTdKZed6T1N+TSIbb6UEaWTnKI3y4OSJXlw6Rk
         i1NVqvff7dS3bzcc2IEu//cOb6+ZJd6p7spKGUK/ig560D+G8EAwgQo5Sto9xhh26M2F
         cicg==
X-Gm-Message-State: AOAM530CJeh7TkfDot1pBK6m/zNjlb2U0F5Rg7XvtM4qrIENSvNBu/Pl
	lKaLLfAY1+6nZjJw+Qy74M2hIw==
X-Google-Smtp-Source: ABdhPJyzlRF4QGFUKB1+Dd9Y2rJJeiOMOwD5WRId/Auo/v1+Gx2y6RYaSW+KwgwfEgVp0gAeXZOf7g==
X-Received: by 2002:a17:90b:e87:: with SMTP id fv7mr1440542pjb.187.1603175946464;
        Mon, 19 Oct 2020 23:39:06 -0700 (PDT)
Return-Path: <taisei.nakano@miraclelinux.com>
Received: from localhost.localdomain (h175-177-044-207.catv02.itscom.jp. [175.177.44.207])
        by smtp.gmail.com with ESMTPSA id f21sm982998pfn.173.2020.10.19.23.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 23:39:05 -0700 (PDT)
From: "Taisei Nakano" <taisei.nakano@miraclelinux.com>
To: openembedded-devel@lists.openembedded.org
Cc: yocto@lists.yoctoproject.org,
	Taisei Nakano <taisei.nakano@miraclelinux.com>
Subject: [meta-oe][PATCH 1/1] anthy: add GPLv2 to LICENSE and add LIC_FILES_CHKSUM
Date: Tue, 20 Oct 2020 15:38:37 +0900
Message-Id: <20201020063837.21217-2-taisei.nakano@miraclelinux.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201020063837.21217-1-taisei.nakano@miraclelinux.com>
References: <20201020063837.21217-1-taisei.nakano@miraclelinux.com>

Add GPLv2 into LICENSE, since this software includes alt-cannadic/COPYING which indicates GPLv2.

Signed-off-by: Taisei Nakano <taisei.nakano@miraclelinux.com>
---
 meta-oe/recipes-support/anthy/anthy_9100h.bb | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-oe/recipes-support/anthy/anthy_9100h.bb b/meta-oe/recipes-support/anthy/anthy_9100h.bb
index a65d324ea..9d78c3457 100644
--- a/meta-oe/recipes-support/anthy/anthy_9100h.bb
+++ b/meta-oe/recipes-support/anthy/anthy_9100h.bb
@@ -2,8 +2,10 @@ DESCRIPTION="Anthy is a system for Japanese input method. It converts Hiragana t
 AUTHOR = "Anthy Developers <anthy-dev@lists.sourceforge.jp>"
 HOMEPAGE = "http://anthy.sourceforge.jp"
 
-LICENSE = "LGPLv2.1"
-LIC_FILES_CHKSUM = "file://COPYING;md5=11f384074d8e93e263b5664ef08a411a"
+LICENSE = "LGPLv2.1 & GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=11f384074d8e93e263b5664ef08a411a \
+    file://alt-cannadic/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b \
+"
 
 SRC_URI = "http://osdn.dl.sourceforge.jp/anthy/37536/anthy-9100h.tar.gz \
     file://not_build_elc.patch \
-- 
2.17.1


Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.16758.1627599270922288065
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jul 2021 15:54:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RdxhbBml;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id h24-20020a1ccc180000b029022e0571d1a0so5073895wmb.5
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jul 2021 15:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y3ZqXhTXpe93S1KDehH84YJFF6wpZb89ugpu+zx0IkM=;
        b=RdxhbBmliH8BviwrEQ59qFH7zBfhkL6KKmnrvJ2O4FN0Jye/OuzSyweYnm/wcLfDXw
         20JomsHo40ag6smbqeEkj3V7CJpR5wYPmc+ElKWI43HFIFOKJ+QaZUXD3Axjw4C55fx7
         BMrpjOBQLsQgwF683cmvzGNWGpfvN3lJk3qdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y3ZqXhTXpe93S1KDehH84YJFF6wpZb89ugpu+zx0IkM=;
        b=XnGLuOHZ0VQXdro9GsdcMj0MmFnzzmCpglCIiFO8iAnvG3i8kDPd+PzZBxx9fZYDZr
         UIm/P88YN94eQM2PMCQ/KhXkckxElbg9DOvwHinyNAUxJqNLSs7lsnIDDRW68byo3ZUp
         S2/iq2llHqBcxLEm9eghDConn5vFZfemDlnS/6qWMWBWAVklc6VZySAUr2ZTLFdWrXIC
         l+a0ur+Bmm0iY5RNQxrnCouAHCTDQ44MhTPpMRtmLVT9PaQtm8wx1lwhZjmWKX6ytkiD
         VwTTGmBhmqplegEPCnvsEtQo7OvGf8LFTUvwlcRWCDZsFa6tqHA+73sShjN+rSaGEUAa
         aN4w==
X-Gm-Message-State: AOAM532fi3MX89lQjEIAUwLULewi5gvyFe8SJsoF1djZIrUQJUarm30T
	A6Nk0IBxx3XUr/0vjrdSMtsWM1EXk5RWHA==
X-Google-Smtp-Source: ABdhPJyEjumCfLB0LyuMAE1VHseuoWG4jX3DAP4Sdx1a842UOWDQTwjLruZg1AoR8vf9Ri4QpESEUQ==
X-Received: by 2002:a05:600c:304a:: with SMTP id n10mr695660wmh.79.1627599269008;
        Thu, 29 Jul 2021 15:54:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:47e7:2d3d:e4c2:218b])
        by smtp.gmail.com with ESMTPSA id i5sm4762296wrw.13.2021.07.29.15.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 15:54:28 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH 2/3] meta-mingw: Override syntax conversion manual fixes
Date: Thu, 29 Jul 2021 23:54:25 +0100
Message-Id: <20210729225426.3337271-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210729225426.3337271-1-richard.purdie@linuxfoundation.org>
References: <20210729225426.3337271-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix a coupld of mis-converted lines from the automated override
conversion script.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 recipes-devtools/gcc/gcc-runtime_%.bbappend | 4 ++--
 recipes-graphics/wayland/wayland_%.bbappend | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-devtools/gcc/gcc-runtime_%.bbappend b/recipes-devtools/gcc/gcc-runtime_%.bbappend
index 0013e88..1511abb 100644
--- a/recipes-devtools/gcc/gcc-runtime_%.bbappend
+++ b/recipes-devtools/gcc/gcc-runtime_%.bbappend
@@ -1,5 +1,5 @@
-FILES:libstdc++_append_mingw32 = " ${bindir}/libstdc++*.dll"
-FILES:libstdc++-staticdev_append_mingw32 = " ${libdir}/libstdc++.dll.a*"
+FILES:libstdc++:append:mingw32 = " ${bindir}/libstdc++*.dll"
+FILES:libstdc++-staticdev:append:mingw32 = " ${libdir}/libstdc++.dll.a*"
 FILES:libssp:append:mingw32 = " ${bindir}/libssp*.dll"
 # FILES:libgomp:append:mingw32 = " ${bindir}/libgomp*.dll"
 
diff --git a/recipes-graphics/wayland/wayland_%.bbappend b/recipes-graphics/wayland/wayland_%.bbappend
index 86a9061..e8ca57d 100644
--- a/recipes-graphics/wayland/wayland_%.bbappend
+++ b/recipes-graphics/wayland/wayland_%.bbappend
@@ -1,6 +1,6 @@
 # The assembly file that encodes the DTD string into wayland-scanner is not
 # compatible with i686 MinGW
-PACKAGECONFIG:remove:mingw32_i686 = "dtd-validation"
+PACKAGECONFIG:remove:mingw32:i686 = "dtd-validation"
 
 EXTRA_OECONF:class-nativesdk:mingw32 = "--disable-documentation --disable-libraries"
 EXTRA_OEMESON:class-nativesdk:mingw32 = "-Ddocumentation=false -Dlibraries=false"
-- 
2.30.2


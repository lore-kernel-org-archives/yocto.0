Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web10.1312.1619827169241235567
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Apr 2021 16:59:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sd0BUgn8;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id z16so9542861pga.1
        for <yocto@lists.yoctoproject.org>; Fri, 30 Apr 2021 16:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p6d2YERws6oB17Zq4YDbOAaFE/Uf5vG5QJdxH1opTsA=;
        b=Sd0BUgn8XN1R2BbGsxd3bObkKdEbocVlbKZAcFp/Hc3rnOMyQUzIHTs/u6KX16Gy7L
         Qt8gVcZukKg+C18UPQLN9nWn7CZvVsO1Ns0n3rsMOSQvqMBXIH6RuO4a+7smn6ZAvNzl
         E8IiOlFigR/JkUzi+JahiYcNdZ5ir2BqtVGRGd3qKtdnhxLfNWSKhHlO2wattm1Kphf/
         7u57pMR22qwPnoivXWMENoi4oweTnX1rvkQ4VBfnOpaOZ3iWabUzQXK/KzSPuc33b94I
         9+XTz5zqNuf2zZbynH7ylNhAULBm5pLBWORgzEjw8srK6xbSQvEfy2EoZQ2HmU42RBh8
         0euA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p6d2YERws6oB17Zq4YDbOAaFE/Uf5vG5QJdxH1opTsA=;
        b=WdHgiFFhFz7yPPMYBqO3J0kbKujc9snDc3Z/iuPysrTUSZCcerzif54wZEC3USAzcY
         5LmsZDbfdrNbarjtCfAh8swvZWgdQe0gFW3kgKSuDBEmwrbKXp3HC8N98tujMUXfhtuY
         VxcWPhLJ7MGvfu2JRfuALviMs4eYsAFoS5gS1vQQLs2hQK3tDvDET+HgqQj870KWDsH+
         gi2yn1Cha0n6HK0cFwo+9gK/YYa+dwh90Iassr5N6XkAdv8yXwSTXEUAj+1Rrh9wCdN8
         Fu7qxNOgLjc4M+LQLSqQKewmRZAAm2kL/BmBYzbjdMpERqbyzP/O6UBXJiaIRmgUaMuc
         mUIA==
X-Gm-Message-State: AOAM531XJ1MJnZwtN1+m3nbC12njhy3OoJ6swGEaQgMuSUam1eGqKg7n
	1zE6UtXZXKkMi6nL3yEZLhZaAK4PMhSiOA==
X-Google-Smtp-Source: ABdhPJwlMBi3fJBPioaVdPmyEqqEtaCnCcclP18Hio0cCFvD2QMintBofO4fOsanJLlAovW1+MLNVQ==
X-Received: by 2002:a63:9e02:: with SMTP id s2mr7268356pgd.134.1619827168390;
        Fri, 30 Apr 2021 16:59:28 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::ef3])
        by smtp.gmail.com with ESMTPSA id a16sm560557pfc.37.2021.04.30.16.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 16:59:28 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH 1/2] mingw-w64-runtime,mingw-w64-winpthreads: Upgrade to 8.0.0
Date: Fri, 30 Apr 2021 16:59:19 -0700
Message-Id: <20210430235920.3800985-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-devtools/mingw-w64/mingw-w64.inc                        | 2 +-
 ...64-headers_7.0.0.bb => nativesdk-mingw-w64-headers_8.0.0.bb} | 0
 ...64-runtime_7.0.0.bb => nativesdk-mingw-w64-runtime_8.0.0.bb} | 0
 ...hreads_7.0.0.bb => nativesdk-mingw-w64-winpthreads_8.0.0.bb} | 0
 4 files changed, 1 insertion(+), 1 deletion(-)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_7.0.0.bb => nativesdk-mingw-w64-headers_8.0.0.bb} (100%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_7.0.0.bb => nativesdk-mingw-w64-runtime_8.0.0.bb} (100%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-winpthreads_7.0.0.bb => nativesdk-mingw-w64-winpthreads_8.0.0.bb} (100%)

diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/mingw-w64/mingw-w64.inc
index a435dea..d40d4a5 100644
--- a/recipes-devtools/mingw-w64/mingw-w64.inc
+++ b/recipes-devtools/mingw-w64/mingw-w64.inc
@@ -5,7 +5,7 @@ COMPATIBLE_HOST = ".*-mingw.*"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
 
-SRC_URI[sha256sum] = "aa20dfff3596f08a7f427aab74315a6cb80c2b086b4a107ed35af02f9496b628"
+SRC_URI[sha256sum] = "44c740ea6ab3924bc3aa169bad11ad3c5766c5c8459e3126d44eabb8735a5762"
 
 UPSTREAM_CHECK_URI = "http://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/"
 UPSTREAM_CHECK_REGEX = "mingw-w64-v(?P<pver>(\d+[\.\-_]*)+)\.tar"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_7.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_7.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_7.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_7.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
-- 
2.31.1


Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.4888.1614552970215531979
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GSbOJy1J;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id ba1so8758655plb.1
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=MkzMISFlXuZZ/W9Cctobajlaaf5CB9cQlN7fq5SoFsM=;
        b=GSbOJy1JGlnqZX1xy+nvZonf+rUn+0YKCjx6Q/0TyxbG+abhZFdpu+LlcIDKnK5gGt
         Ta66P1nPKuyxgORQyUV6WsqiTOZD8txuGj0CkXyX+Rl3pKiOm8q8P4Yi3RsrREj89PPJ
         gijCXdS4yzj6jAHuRR/4YHJ/0YKeDfZVoZQ+J+nk3b5N5S1NZChFKhYm77Lv2MGbG/qe
         ADGdhOatprAMDLng/ebTWDtJJYDKHLOpLvzCdiWRswOpIkCgRW9dQBUoggJ/ZbpEOkdr
         H9FhBTbo+jv2Vg0psFBr5p6aXEi+lwpRTGqWWSffI4d0L7/YvrYffKT+74j+Le5GbRoO
         5eYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MkzMISFlXuZZ/W9Cctobajlaaf5CB9cQlN7fq5SoFsM=;
        b=DppdFL4+RAhusLurGTKgV4z6PI5kyIb4kTH1DEOxGQ6EeGaLVu566ymdmAyKMTyCOD
         vUDpKrxmcqZJkSnE1fR4QFRRFTbctvNfCoUOpnerjzuMODE5DPHELlsjWgZpDTOKOQml
         07AT0U2sflDk6M9A8wCMAwGMTc6C9sCZgii+YkbLYC0vwSxBBMeFY+XDrQFOYB5TJA7J
         7EdmET1ah1n0EP5lMXC3vVMP0Nj3XXjYTj5BqYNPGamqrsBAxW8G0BsrmAJr/VtCqHe/
         GlyCkctahpbqiQT1C6xiWLKMRhq1uRJwS/H9wbviSsFvhqQsrmyeneh8Jg9I2mSJptbb
         njow==
X-Gm-Message-State: AOAM531WzIeIRc+gFIjkyzQLS7Ndu565VhZUXRS08BPny9DGEpUAX0Ku
	jbe0h90jxSNkghBL2wyLlu+bl70iSGg=
X-Google-Smtp-Source: ABdhPJz0w8hX9LfHPIEYpz4xz6+wQpKy9e26l73A7rIwqEwJ1i3h0qWD7GzvBcprpUUf6NAWJT62hQ==
X-Received: by 2002:a17:902:bd85:b029:e3:11d0:367f with SMTP id q5-20020a170902bd85b02900e311d0367fmr12627182pls.12.1614552969405;
        Sun, 28 Feb 2021 14:56:09 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:09 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 04/12] fscryptctl: upgrade 0.1.0 -> 1.0.0
Date: Sun, 28 Feb 2021 22:55:57 +0000
Message-Id: <20210228225605.3442507-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228225605.3442507-1-akuster808@gmail.com>
References: <20210228225605.3442507-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 .../fscryptctl/{fscryptctl_0.1.0.bb => fscryptctl_1.0.0.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/fscryptctl/{fscryptctl_0.1.0.bb => fscryptctl_1.0.0.bb} (94%)

diff --git a/recipes-security/fscryptctl/fscryptctl_0.1.0.bb b/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
similarity index 94%
rename from recipes-security/fscryptctl/fscryptctl_0.1.0.bb
rename to recipes-security/fscryptctl/fscryptctl_1.0.0.bb
index 8847a0f..440b4e3 100644
--- a/recipes-security/fscryptctl/fscryptctl_0.1.0.bb
+++ b/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
@@ -9,7 +9,7 @@ SECTION = "base"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
-SRCREV = "142326810eb19d6794793db6d24d0775a15aa8e5"
+SRCREV = "56b898c896240328adef7407090215abbe9ee03d"
 SRC_URI = "git://github.com/google/fscryptctl.git"
 
 S = "${WORKDIR}/git"
-- 
2.25.1


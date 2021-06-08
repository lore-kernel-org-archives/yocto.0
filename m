Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web09.11204.1623153074327465108
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 04:51:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q3Kr9lDT;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id r198so28284057lff.11
        for <yocto@lists.yoctoproject.org>; Tue, 08 Jun 2021 04:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g3g3U5DYbFNiIbZy2XexalU24YVIVGspgdQw2dmtyVs=;
        b=q3Kr9lDTWY3Odjsr6cBX02TfBqZOVCpdvOUyJiqIXlxMl3tue2n/BTS0qPL3/yxIiK
         HywQet2cJudWq3psuGDQ+YxRYl2+F7IlElXIGmiHhJ4ekN5lrLMv9/ZqMV5JtWnkJrg0
         l02erkFzGWEHExemvHcrkq7tuhtcEPP044jPxGhkrb8XwxlyvJklbD7hGWooFUMhjpsn
         sqE1C4kXtAYLb8O3fWulyZC+mheIa9HXGoFrtd17ZrCNOyFlpXLZy8f1VautrIMcOcTm
         0gXojXQ2gHqS3/TdRCtbSDjavwPzfpbltqIBGaRPrD1GqBE4J/bKvikhOL6BpJ3vi24C
         WXKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g3g3U5DYbFNiIbZy2XexalU24YVIVGspgdQw2dmtyVs=;
        b=As8D4dSDbBKhx09c7+OnCQkYDIMtz1ORm2wRUIb5jwkH9EuiXebl7Ps6bwafxGURC+
         RLToR6Ya3h/EdmVi+lmAmbTxzdzXtxFv1EoHU3kcFnAFvqgswx/FjpHi6RUxpM2ZerrS
         GRKlCqbSu2TqRbJn4JUeilJtbf0fOf62KAFkfEfC+A2xw7/u21oeIAF1nkWlhtG8bprx
         yH2DXSEgLGIsEjVeNtzZnEtV+CLjblT7HS42fGjTAFFQ8+Cr/c2BA7XL6T7tt2GPQ0MB
         KpqLiGSXfW86uSk15deOTz7plcSYPayti8K6CYR8iskW0FK+VA4odTf8HsbHSxP0dC1/
         xMAA==
X-Gm-Message-State: AOAM533dYI3EM3dYFHjHdqqnY8ESpcdmXXF9WTztKp+tosogzdKuUU63
	atH1c6lEigf0tMlDughej29hbzW+GZBmqw==
X-Google-Smtp-Source: ABdhPJxqjG14fRHVuiieozqKUFjeWPZCGWTKbgFav99+fa5w003I6Lj0KOBWRFNHyDzGbKOAeJT7Pg==
X-Received: by 2002:a05:6512:2391:: with SMTP id c17mr11727508lfv.111.1623153072127;
        Tue, 08 Jun 2021 04:51:12 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:41ca:d8d:7bc0:8ed2])
        by smtp.gmail.com with ESMTPSA id n17sm1605830lfh.220.2021.06.08.04.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 04:51:11 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 2/2] zephyr-kernel-src set default preferred version to 2.6.0
Date: Tue,  8 Jun 2021 13:50:48 +0200
Message-Id: <20210608115048.17205-3-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210608115048.17205-1-zmuda.w@gmail.com>
References: <20210608115048.17205-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index b3b9565..948beb2 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -21,5 +21,5 @@ SRC_URI = "\
 S = "${WORKDIR}/git"
 
 # Default to a stable version
-PREFERRED_VERSION_zephyr-kernel ??= "2.5.0"
+PREFERRED_VERSION_zephyr-kernel ??= "2.6.0"
 include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
-- 
2.25.1


Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.47731.1622485978947787093
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 11:32:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AOG0JFdk;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id mq2-20020a17090b3802b0290162428291f5so405936pjb.4
        for <yocto@lists.yoctoproject.org>; Mon, 31 May 2021 11:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=oVCMedKnHG3+AK3hKxDQkLLIhgDLKpKM3rkiYJiOyB4=;
        b=AOG0JFdkxAqKpnOlwcGCzo6k8M64RAK6OjP2YrnocC5YdNz8lvUZZObyDwtlB9GBSS
         I9h7G6Fp0cjjVkVl5NG8kR/resw7MZ4m4XPADZ/i0Go18B2aananPN22OzmL2JIodEEk
         Nq5Uo9+IzhS8AU5wZgmi1z2ZVHSrvIKk/X0yAaGD8MsNf+my5X6C32GAhfpnl43cbqXB
         44Sf1ovbw91a8vI+jdKHGgBbvg9eRcZI2w9zYfxOviw9dzLxP0dA6/6luOkzmfPUHj+m
         BhHeX410EDWBzRVY1n4ac5/i3I7NIY1fXtlCk4dIlHDctSi8EsYeQEYog4WmoLI03YPd
         UsiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oVCMedKnHG3+AK3hKxDQkLLIhgDLKpKM3rkiYJiOyB4=;
        b=YJ9X2z7JIBK/dYe2ZDd3V4UwaBEVsDfXBY/2jlsSQp/B/mZ705YDMXqAJDGR7mvkvL
         r01UOEfQJIf9BceiecqcqK/9VuGO/ZpaZ7pBsdKYyxTb4m0pbT4Ua8P1N3nCNJO8Zkh2
         7w9otLPUUE5FsKPLR2/YlSf4FlCJyTnkPoichIu1mgKm9hHlrFlW/vZ3Vd7XBje+LckO
         jyzR686Nt7GW8R5/tlNLBCed+Zn2dX2Hx1B0+RnDeAkeT5AkaRiXTYPG8vVnb24NCWwG
         RBnAIHa5UA1QQ5EprSfUIrFuGoeETJ3kdeSPxjQJTs9eGmawwwP+cQbja6n4Xufq/kKz
         OJfw==
X-Gm-Message-State: AOAM532wQnI8akoJTQNdPDPZS0UAWBEe32z7u1CtDhDTrEEKCyli1/Zq
	c8VBbbOD/LTCya9Qoi8vyQUAhi7XinJswg==
X-Google-Smtp-Source: ABdhPJxVTpuzIhUu8A+0GubgHKivsROGt8TfpoexVZFQJyQPy2GR1iREurgf000A+LQgptqyZuuI1A==
X-Received: by 2002:a17:902:d3c3:b029:101:af83:cb1f with SMTP id w3-20020a170902d3c3b0290101af83cb1fmr14329135plb.80.1622485978378;
        Mon, 31 May 2021 11:32:58 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x19sm11803957pgj.66.2021.05.31.11.32.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 11:32:57 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] meta-hardening/initscripts: missed overide.
Date: Mon, 31 May 2021 18:32:53 +0000
Message-Id: <20210531183253.963737-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210531183253.963737-1-akuster808@gmail.com>
References: <20210531183253.963737-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Helps pass YCL.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/initscripts/initscripts_1.0.bbappend           | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
index 896b039..f943cb3 100644
--- a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
+++ b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_harden := "${THISDIR}/files:"
 
 SRC_URI_append_harden = " file://mountall.sh"
 
-- 
2.25.1


Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web09.23522.1615135683862293265
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 08:48:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SxJv+vAD;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id n17so172345plc.7
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 08:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rsIGuX4MmPs/hn2blTk1iuQIgkv9VHVoEWQ+6OaBCy4=;
        b=SxJv+vADYrGeWgxfGRytRcTfyniwtJSUlGn558OEt1L+54IpJtB5lW4WTlacilu8C6
         LkCwt5TK1Z0ZKFq2bEqXZc2jWwAaJyfUl216o0UJ8Xt5AtV4VYZuoBY+iVXQyivsEp8q
         qRPi9cxlzJypJoVJVgaH34mk1n5djNnr+eNPXLThq8ufOuAYTCakQxhTdZs7ArBXPT/+
         0j2hwSXuEyaqZaMI2nNTxAKdLLfCN1w1p5kG/NaNNSBZDg2XTM7eRwt8/0I2glrUz6aI
         8uCWgUeWjNSJ5FDFrgzODrIanu9xiz18oI7l+4wpdtQwaMMH1GhoKkhiXkzlxubk7g+U
         90VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rsIGuX4MmPs/hn2blTk1iuQIgkv9VHVoEWQ+6OaBCy4=;
        b=hIk1o4eyVQhJhqJx8oEAh1zJOw3iH680Z4LzG8oOKagTew7O70+bNb4uihHq+ZSujM
         xYjrN1W4SckPgQVj+72FZxPI0jzWP01Msmn4cs0XpYPBivz1wpYCqidaoA0brWE/l9JZ
         8zcG7+VftEOsIesy4MU/Dd7emanZmRKHLimWOS7Bky9wdIJqMcadJu07XN6bUxFRci7I
         Fklir0JLnUuSSIYl7L4TkHcGYxzBe6SevGF2Ynbj91wUGsX3vloMfd26UfRQstiGy57U
         d8BBvA2e5ybeD1lSBj04bRYVCmwj3xFvzTkgzs7p7DzSbeThbuZhwWHvDkrT9Lgf6pw9
         LWrg==
X-Gm-Message-State: AOAM532VuRutxwP/jLtLQ+R2mHpkmw+0fmJBC61mEYMPnPXnSngG1TK6
	lBsZpfeRccMH2dEWzAG/AW1rCc74Vr4=
X-Google-Smtp-Source: ABdhPJw3XOJcVr3SJCJe6CM73MKvWLPqX6qqkS01MTbuidUHclSKZ7pS8Ma60+ow6Ke3V4KljDHkCA==
X-Received: by 2002:a17:90a:4a06:: with SMTP id e6mr20610587pjh.141.1615135682886;
        Sun, 07 Mar 2021 08:48:02 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id gg22sm7941773pjb.20.2021.03.07.08.48.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 08:48:02 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] trousers: update to 0.3.15
Date: Sun,  7 Mar 2021 16:48:01 +0000
Message-Id: <20210307164801.3905433-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

includes: CVE-2020-24332, CVE-2020-24330, CVE-2020-24331

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/trousers/trousers_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
index 27b4e2f..32c9a49 100644
--- a/meta-tpm/recipes-tpm/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
@@ -6,8 +6,8 @@ SECTION = "security/tpm"
 
 DEPENDS = "openssl"
 
-SRCREV = "e74dd1d96753b0538192143adf58d04fcd3b242b"
-PV = "0.3.14+git${SRCPV}"
+SRCREV = "94144b0a1dcef6e31845d6c319e9bd7357208eb9"
+PV = "0.3.15+git${SRCPV}"
 
 SRC_URI = " \
 	git://git.code.sf.net/p/trousers/trousers \
-- 
2.25.1


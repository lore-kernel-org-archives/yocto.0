Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web12.4817.1614552971554921909
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=te7cJhkJ;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id jx13so6353535pjb.1
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=SNOyqmAt5RJxHlRlXDMKmnz9R/aSeIAMO9mKPjpziuk=;
        b=te7cJhkJ9LsG2NvwqPZ5wsfxWQizsEbfpzo8easoNy2itu+SjOGYcSVuSltl6i+vuG
         PlnKux8FYQfx6WkpxWHNxCoyJi3NyZ1v3TT5woZbbho1Buza3VvL9IPAU+u9VGQi4zss
         PU3TQW+E0swKCCaBRgsEIsBbnRW8N6EtRaSldeF6ojnHXGD5fOQkmxez3e+XBE3XhYMV
         2MRvuD9ooAOkNnkefL8g3I9FAUOMzaG/MLHtebFYcXQniiqq1kMHruDBcJ2/bM3+jZ2n
         Tvi+y3XXEvFgTKaO3qyp0WQbI/f/VI+DDWrOforlL5C8zJNUcno6b8nConzOVdX3qSlH
         kHMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SNOyqmAt5RJxHlRlXDMKmnz9R/aSeIAMO9mKPjpziuk=;
        b=Ap8RKFm4cj7+JRZk3eisc8ycM7BPgGojVY2nA2Q44u7eo6LZlsGP3Hw4/clH9gjYEl
         a6n0bpXFQqjsf3BjDO1zqcAeDSEXvFAmbgTcJaw480jssMbbajZC4YIKqEy4EeHt3/fV
         0pcoQgTHUa14MzhnWa9LXjvAyJDGNsmNwiahMFPGLkc2walWFAzP+L7F4IitIw8/93D/
         i2sUREbdNH9RLWOQN+GXKIwXwPBfZaugoRlFq66TqbqsanwlDd7n6xXj5fyyjKm2GU3G
         z/EyZxUfb30FSET0Y9gluV0FQkTgeo/2IgUQndEXN3r3NygISeXvQ1oRaEiyzNV2YZbU
         r3Rg==
X-Gm-Message-State: AOAM530u7hqbDJzQLtx20lUqvRv5AqUWUHLuFqODkqfda4H9kBL4nf3m
	EOWGpvn7aGWk/aUefP1z5EallidDF8w=
X-Google-Smtp-Source: ABdhPJxFJmJDn6LQwxd74s1ssIeipqBo5nOcRWOckBTHFOwBxNYi8E8eG1dz/yyEVHDhMAB/1uvF6Q==
X-Received: by 2002:a17:902:9b93:b029:e0:a40b:cbd7 with SMTP id y19-20020a1709029b93b02900e0a40bcbd7mr12654376plp.16.1614552970949;
        Sun, 28 Feb 2021 14:56:10 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:10 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 06/12] python3-privacyidea: upgrade 3.3 -> 3.5.1
Date: Sun, 28 Feb 2021 22:55:59 +0000
Message-Id: <20210228225605.3442507-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228225605.3442507-1-akuster808@gmail.com>
References: <20210228225605.3442507-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 ...{python3-privacyidea_3.3.bb => python3-privacyidea_3.5.1.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/mfa/{python3-privacyidea_3.3.bb => python3-privacyidea_3.5.1.bb} (96%)

diff --git a/recipes-security/mfa/python3-privacyidea_3.3.bb b/recipes-security/mfa/python3-privacyidea_3.5.1.bb
similarity index 96%
rename from recipes-security/mfa/python3-privacyidea_3.3.bb
rename to recipes-security/mfa/python3-privacyidea_3.5.1.bb
index eb6b7eb..fb84411 100644
--- a/recipes-security/mfa/python3-privacyidea_3.3.bb
+++ b/recipes-security/mfa/python3-privacyidea_3.5.1.bb
@@ -6,7 +6,7 @@ LICENSE = "AGPL-3.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=c0acfa7a8a03b718abee9135bc1a1c55"
 
 PYPI_PACKAGE = "privacyIDEA"
-SRC_URI[sha256sum] = "55fbdd0fdc8957f7fc5b8900453fd9dc294860bae218e53e7fe394d93f982518"
+SRC_URI[sha256sum] = "c10f8e9ec681af4cb42fde70864c2b9a4b47e2bcccfc1290f83c1283748772c6"
 
 inherit pypi setuptools3
 
-- 
2.25.1


Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web10.4737.1614552969300207314
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f7rNVNY6;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id jx13so6353507pjb.1
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=hLK45ws5ZgoOZ/iwwfV1lS9g2Ahcr7RXHwfDKTk3p5c=;
        b=f7rNVNY6oNOpIzARQYfUDhTa/HBIzSMXX0OniP9f4rI/iSLPSs0bKSUcBFGWY4xI/r
         iPzmfugrwm/iuvnUcKMJNyXGOA6OXK0AnDq/ZtZ9hX8O7XzZxsIOxTJ/xyCyx0rABG8c
         EtAnAeD3wGRUeGVgMQXhCbvvjERVw76/ACAsqCwIx0gHxs1XyxWmHLHGBzLI9WxdEZ/V
         jOtSPoT4eCqvQsQzqR3NgV1OTdkBs2fFHVmAYHme90OlT0ueGjN9vQGGsVmPsbhh2Au4
         ea8ya76rNyH4wZNcunVz38ajL424h5z4PEQ4bFMbMXSXpOM0iJqKQ/u7w7/aXlprIisv
         hOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hLK45ws5ZgoOZ/iwwfV1lS9g2Ahcr7RXHwfDKTk3p5c=;
        b=BT9O2tSS6lQShM7JvL2dHTKL36+MvYM1XyY7+TR5jQTRTvuhZULlDjEBtKzAs9s7yW
         oxaTieM7MHGtWfCM1ogiFHuiyIilW93uctQlL5YTYuoUZVMz3l6LwllhYDCHTM1pfZ/Y
         ir6ZeksBFjsqLB5ScxC1UKTmVnMSCIAYoKuiqODfNuT8Fr9zsbAlINCvjC2I0j2tptUO
         C9WT3H7slQPZM41sz7toX5GiS7ydHj9Em9MtP019G2+ugPLJbl/P2k+++GPTnZ/lG49O
         EnWVH+CgP1oSfHlrEl8Scuae54cAOUyPhqNn4mIKElbxDntAuH/SYtX6PaT1lwUKpGEw
         KF3A==
X-Gm-Message-State: AOAM533cXxhVEVEmrYF6cyglDkGktYdNLR/M5VsvJ9zEV9zJKgA9TnoP
	fdKBHWKF4BQFlk3nkQ2ULzF9w09kzUw=
X-Google-Smtp-Source: ABdhPJwPKY0UQfcWR4HpeaDKy/mQz8Lm5exeHGOc2Qyn6cf5PLmRIo4hP+iQXmsdjCr4wRJKi9dzMw==
X-Received: by 2002:a17:902:e54a:b029:e3:4a72:d68c with SMTP id n10-20020a170902e54ab02900e34a72d68cmr12304223plf.23.1614552968704;
        Sun, 28 Feb 2021 14:56:08 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:08 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 03/12] ding-libs: upgrade 0.5.0 -> 0.6.1
Date: Sun, 28 Feb 2021 22:55:56 +0000
Message-Id: <20210228225605.3442507-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228225605.3442507-1-akuster808@gmail.com>
References: <20210228225605.3442507-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 .../libdhash/{ding-libs_0.5.0.bb => ding-libs_0.6.1.bb}        | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
 rename recipes-security/libdhash/{ding-libs_0.5.0.bb => ding-libs_0.6.1.bb} (71%)

diff --git a/recipes-security/libdhash/ding-libs_0.5.0.bb b/recipes-security/libdhash/ding-libs_0.6.1.bb
similarity index 71%
rename from recipes-security/libdhash/ding-libs_0.5.0.bb
rename to recipes-security/libdhash/ding-libs_0.6.1.bb
index 9db66e8..6046fa0 100644
--- a/recipes-security/libdhash/ding-libs_0.5.0.bb
+++ b/recipes-security/libdhash/ding-libs_0.6.1.bb
@@ -9,5 +9,4 @@ SRC_URI = "https://fedorahosted.org/released/${BPN}/${BP}.tar.gz"
 
 inherit autotools pkgconfig
 
-SRC_URI[md5sum] = "786f2880d30136a61df02e5d740ddc6e"
-SRC_URI[sha256sum] = "dab937537a05d7a7cbe605fdb9b3809080d67b124ac97eb321255b35f5b172fd"
+SRC_URI[sha256sum] = "a319a327deb81f2dfab9ce4a4926e80e1dac5dcfc89f4c7e548cec2645af27c1"
-- 
2.25.1


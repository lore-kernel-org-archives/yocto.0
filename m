Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com [209.85.167.195])
 by mx.groups.io with SMTP id smtpd.web11.110.1601654954966881000
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Oct 2020 09:09:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bvzUpPWc;
 spf=pass (domain: gmail.com, ip: 209.85.167.195, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f195.google.com with SMTP id v20so1710335oiv.3
        for <yocto@lists.yoctoproject.org>; Fri, 02 Oct 2020 09:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=T3C/QTwk2y3wlJl/DHM+fa/vwBb4pqB2SXmVscYL2vk=;
        b=bvzUpPWcPBvGrAeV9CtvWC/BzGZtR7kU9n8PFMkfGYZ70a02FQ8x+ht0qmWEZoHSRZ
         u2lbXtWQeSXKRssdGE832j5hHumSf0TuOTKW8fOEVieS6HNEize8U1A6SX9fLQmp+tF7
         mkWgXczPorEpiz6ai6NM8hvjEBRyhNk7k5Df9fEXFVRZFfWHnizT0iUL/m9Gx33Tl9Qd
         YRxC6aCpF6BeLjVz2G3WOKNb0wiXhnx8LOcJDxaYatLrJSbCi1OdAbtt9vGxwhodb2mR
         TUwlLlS7vk1dXvBJpw6Y84zewgJV56KyydV0MuOyqHjrYVO8Ppk9rY7TZR49y+y0n3zN
         B4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=T3C/QTwk2y3wlJl/DHM+fa/vwBb4pqB2SXmVscYL2vk=;
        b=WpyVSe3TbtWy22xThrabtsn4wavmPaGt4LP8Y+8Lz4mf7bhUfd+BpqU1DA7s6P04EO
         tJfaiNse/rKPV3eQD9ULtYSn3uKrw48lnaYOCwdLIoi8vp9n0yHsQe2g4S/meZm0RO9o
         K5UhyJvya7DKo5zhLm4r1hk/xYCzzp6LIfXtDc9fw81WKeCjep2hXVmwyrelgjz0eRLY
         m7O6c1bWmn0Oq5PoLIbaMFqTh6R7m8rrQjgGPnRBmpHxzgztI27Ws9VeRr3vufRGyKEL
         JAkji66WCpPgXyAGtG9Z6TSNg8wR5T5Qm74lxCZmysFwZwvUxNF+Ye9oXuXDyJOqMjOY
         eWmA==
X-Gm-Message-State: AOAM531wC4ucBJ0QHD7q0Rbl0co/AFNHS9S5MnusicZntGhvCrf0M7F6
	cevWkPIIdUPHYUGN+VZxT/3t6T7N670=
X-Google-Smtp-Source: ABdhPJzzKEfw51FjWgMtVKndqw6T7f24UUKeXqs7FYrmTXy4DuofFve6gdzdhO0EuTLmgl4xACCn9w==
X-Received: by 2002:aca:ea89:: with SMTP id i131mr1651164oih.88.1601654954116;
        Fri, 02 Oct 2020 09:09:14 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4430:89:b82a:ed5a])
        by smtp.gmail.com with ESMTPSA id f11sm522627oot.4.2020.10.02.09.09.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 09:09:13 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] security-test-image: tweak to get more tests to runn
Date: Fri,  2 Oct 2020 09:09:10 -0700
Message-Id: <20201002160910.25309-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201002160910.25309-1-akuster808@gmail.com>
References: <20201002160910.25309-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/images/security-test-image.bb | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/recipes-core/images/security-test-image.bb b/recipes-core/images/security-test-image.bb
index babe3fd..54d8978 100644
--- a/recipes-core/images/security-test-image.bb
+++ b/recipes-core/images/security-test-image.bb
@@ -8,4 +8,11 @@ TEST_SUITES = "ssh ping ptest apparmor clamav samhain sssd tripwire checksec sma
 
 INSTALL_CLAMAV_CVD = "1"
 
-IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
+IMAGE_OVERHEAD_FACTOR = "1.0"
+IMAGE_ROOTFS_EXTRA_SPACE = "1124288"
+
+# ptests need more memory than standard to avoid the OOM killer
+# also lttng-tools needs /tmp that has at least 1G
+QB_MEM = "-m 2048"
+
+PTEST_EXPECT_FAILURE = "1"
-- 
2.17.1


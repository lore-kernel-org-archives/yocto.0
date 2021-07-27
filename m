Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web11.7977.1627369251880259946
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 00:00:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JIPgaSm3;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: koansoftware@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id x90so7620541ede.8
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 00:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MziD23k2xtR77a+R1aX/GJg+35eEbu0rKWtIUNe9s/4=;
        b=JIPgaSm3UYDUi4TH7I/A/QGwHwxbJ+XRKL8SZ6yozjCDNwjwXYC/lapq/90I7OsFxh
         ZYEobwy4VRcdVpjDEO6QE7Pgg5NjS52B7Nkm7ukbTg/K4AHu0sgaITo7n/+103lXWH7T
         T113cCNS0bKyS61gfvATANeRYu8msk1e7TGFngetcMBt5Tv74pmVWQyHa7UrWv3gNBvS
         dPgGl0EOM9XEB2b+xY1Vs8bXhRywWpOeSyj9S/gzpbCnwlLQtYBExpv/1mNB+i+oZG90
         CmZt1HtTyXXM3XgjlaFhCMHC2iJJ4HpObBToCqSgyuF5viib9aX+2MVn1rLm5L8Aw6s1
         sGKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MziD23k2xtR77a+R1aX/GJg+35eEbu0rKWtIUNe9s/4=;
        b=QRvfn1PcPVSvz3GVH1ZARV5u6gfXJw1wfD8UVxWuqeKF+VbI747Fg6aP/cZFEOaJta
         WbNb54YBK6vxj1zojMCC4NRZbWXCzInLL0iZi6T6+j63YpV4SisnH/YnUC5ple6he3Kk
         5cnOW8bfo1NLKCbyo3q+l0UX2w7uENH/B/r1cXs84IVcvwD41cE1ol48mR0+4oVUGyFJ
         QsutsUUwhsJ4GvUJCu0cS5AuAPpcY3flAyWqBAilhXryko7w75ruJDkm5kkRhz4qQtzN
         C3bHlt9AH/9kNWjO8kFq/vrLk04dR//UQrj1UGj+V58uFIW0wiupB+xigUkJqtVUAt5T
         Eq7w==
X-Gm-Message-State: AOAM530lt3rZbCFFMLr9KPq1UTZAhDrBv/vu/hlNn1hBolFfyRUGLXko
	RIs1l0eDMvMRDt928rTWqRKA+HeOT09yRA==
X-Google-Smtp-Source: ABdhPJzglTMB0ZAQlO27/SOMZFE9m14GpVvMmlulNhtoru9Z8PEWR810hHwV3w0dbOPbJP2N+4uWmQ==
X-Received: by 2002:a05:6402:1d0d:: with SMTP id dg13mr6373956edb.312.1627369250145;
        Tue, 27 Jul 2021 00:00:50 -0700 (PDT)
Return-Path: <koansoftware@gmail.com>
Received: from amonra.localdomain (host-79-3-92-72.business.telecomitalia.it. [79.3.92.72])
        by smtp.gmail.com with ESMTPSA id c21sm572483ejz.69.2021.07.27.00.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 00:00:49 -0700 (PDT)
From: "Marco Cavallini" <koansoftware@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Marco Cavallini <m.cavallini@koansoftware.com>,
	Marco Cavallini <koansoftware@gmail.com>
Subject: [meta-spdxscanner][PATCH] fossology-rest.bbclass: Skip check if spdx already exists
Date: Tue, 27 Jul 2021 09:00:36 +0200
Message-Id: <20210727070036.6549-1-koansoftware@gmail.com>
X-Mailer: git-send-email 2.17.1

From: Marco Cavallini <m.cavallini@koansoftware.com>

 With the previous code was impossible to run the do_get_report
 task  whenever a correspondent .spdx file was already present
 in tmp/deploy/spdx.
 Removed the check if spdx already exists in python do_get_report()
 therefore is possible to run : bitbake -c get_report

Signed-off-by: Marco Cavallini <koansoftware@gmail.com>
---
 classes/fossology-rest.bbclass | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/classes/fossology-rest.bbclass b/classes/fossology-rest.bbclass
index 3694440..c29e57f 100644
--- a/classes/fossology-rest.bbclass
+++ b/classes/fossology-rest.bbclass
@@ -157,15 +157,6 @@ python do_get_report () {
     info['outfile'] = os.path.join(manifest_dir, info['pn'] + "-" + info['pv'] + ".spdx" )
     sstatefile = os.path.join(spdx_outdir, info['pn'] + "-" + info['pv'] + ".spdx" )
     
-    # if spdx has been exist
-    if os.path.exists(info['outfile']):
-        bb.note(info['pn'] + "spdx file has been exist, do nothing")
-        return
-    if os.path.exists( sstatefile ):
-        bb.note(info['pn'] + "spdx file has been exist, do nothing")
-        create_manifest(info,sstatefile)
-        return
-
     spdx_get_src(d)
 
     bb.note('SPDX: Archiving the patched source...')
-- 
2.17.1


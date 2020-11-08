Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.17488.1604841931764028614
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Nov 2020 05:25:31 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=LIGMRXlz;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1FA2E38C0636
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2020 05:25:31 -0800 (PST)
Received: by mail-ej1-f65.google.com with SMTP id gn41so8435026ejc.4
        for <yocto@yoctoproject.org>; Sun, 08 Nov 2020 05:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7DBAEWU8P0CdzbhSaKxFGNHD62JpZ7tX5BxTd4F0mZc=;
        b=LIGMRXlzN1+iwSUMMFP24Kyuicu4xdbF7YRXksJH5ZhsVFpSc9C6kjOQc48jADpoEl
         jketgCrmKazHvA+g03domfa48WuRD5VWIyYBOl6uCgGDXZu2fiyOCFIdbqvvDD7YsB8V
         3n+fFpq1iSu2uXfyIV+EO+Mt6ze686rlaUGRTpqT/sraiCLy6klA7EgBEl5HQ9w7SrKC
         YskLL+fB3pXYJNE4fh4YQdeyugrmls6cH1Xa+UlYrqQqZIXQ1aFLwd3nTBnnkKbgDGZC
         9lGsEU73QPh4UnOTW3katZ86FgkMkxk4si/JnOf1hiqGoDSakPHvwA2vBrn1KMROYWkd
         q+HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7DBAEWU8P0CdzbhSaKxFGNHD62JpZ7tX5BxTd4F0mZc=;
        b=r1Ts2hVj7qVOt5f4L3gllFtF6fYYTfRDz6vU/gO/ROrsVuLQ4i3EjcW04FiUBbRS4i
         12pJAb91SuSc9hpUmx960dGHOahayDFaQbQEIF9Qpe1dHYAN48+BpBKgCPvJnVRT0HYU
         KbMHsHlgw8lxXMnfqQBHiuUgjgsqdbHkGByAQEdbZh+oP/SVPKe5KMV11mIIQInnn5Wi
         nRA3MiSLjke/VDHtzvP3FK07oMau2wdyKmFxcVWz5Ly7BbThGOFJVxRyHiukgGpXL+hs
         mBDxO/3J2/6B0VQyDRm2u0SElrpNYFkJFaSsdNrVzRGb1rEzX84UYASELxr9JEcGSTFf
         0tUQ==
X-Gm-Message-State: AOAM531d5DpDAUxojf3q5397m815k9nnlXrxKwAVwtlM01ecWKqENyEP
	mz/NTfmiZcOEPCG/aY9oYguvQ81k1vvSvg==
X-Google-Smtp-Source: ABdhPJyCO7Phvr/KrntrgTEDyahpGuZuR1KOj1xt92sl4P5TDE78bqr+KO5bAaIgKVfOHViZ9RUm3Q==
X-Received: by 2002:a17:906:6d52:: with SMTP id a18mr10468186ejt.224.1604841929534;
        Sun, 08 Nov 2020 05:25:29 -0800 (PST)
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id b13sm6021084edk.22.2020.11.08.05.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 05:25:29 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [yocto-autobuilder2][PATCH] config.py: drop buildperf jobs from a-full builds
Date: Sun,  8 Nov 2020 14:25:23 +0100
Message-Id: <20201108132523.5181-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Those are run on a separate schedule, and in context of a-full
only cause delays due to queues forming for single available workers.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 086c557..6e7afe6 100644
--- a/config.py
+++ b/config.py
@@ -77,7 +77,7 @@ trigger_builders_wait_quick =3D trigger_builders_wait_s=
hared + [
 trigger_builders_wait_full =3D trigger_builders_wait_shared + [
     "qemumips-alt", "edgerouter-alt", "mpc8315e-rdb-alt", "qemuppc-alt",=
 "qemux86-world-alt",
     "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "o=
e-selftest-centos",
-    "qemux86-64-ptest", "buildperf-ubuntu1604", "buildperf-centos7", "qe=
mux86-64-ltp",
+    "qemux86-64-ptest", "qemux86-64-ltp",
     "qemuarm64-ptest", "qemuarm64-ltp", "meta-intel", "meta-arm"
 ]
=20
--=20
2.29.1


Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.12832.1619100229706762631
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 07:03:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=beaeTWwt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id p6so38256070wrn.9
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 07:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zt7vBZQvDKDcCFAtpMa+sYoMvIwMDE2Drl/R/ayS+EI=;
        b=beaeTWwtF/Wp2cxhHSPQ80wZTc2vgKrMytKfiG+A8axCTrPGo0mb6HLapwMaxQb//W
         CPZhJPhUK03mqBwAvG1R9GjYzfNqV53Pb6H9D1+lpaXQE50K79R8MwPGH8+c45GqBcNK
         ekDAhnSDcsKHBL5W0VJggKL6HuOhRs4BxekHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zt7vBZQvDKDcCFAtpMa+sYoMvIwMDE2Drl/R/ayS+EI=;
        b=J8Ou+bI6WaRdNlCzYiuAdbj25Gqgigi6Gi5JjJdpr8OJGOPr1kIvfqStq6SKBwZ/Zu
         7/6yq7tPLbXgHFsjZqy7a0BCKV5x3OrBpy91qAKXbPhS1hs7VZX9D/Pw8dByyQo+A1WH
         VCVVje7IDwk+HmIKzzXezd/K5Tx6f0G8R9lGl2QaI009fjscyxD3bmN7kJyP5hy67swE
         vG/nNgiNiR4yLm87KqbMqI+KVJna/9+f3SDdSvshf+IHc4h0J9Fs2znvWYrFux7jPKPc
         3kjEF43b1nY7sn83jspg9b0RgW9tXJyffRAAslKMl8GG/4fJrM0v/szFCRTDBOkc4yOY
         7Qcg==
X-Gm-Message-State: AOAM5322rrgFUf5eZtR7Dy2sdk8BR6DHjstwZwt9/nN1l7+NXWu7QHva
	4wWZJ3MoBgvCIyfc2SNGGPrvpPOYpYGl4g==
X-Google-Smtp-Source: ABdhPJwqQBWnbjyYA9iMZ+Gv9/pzS7yfjYFyKtvaYbKi+ctvcNCvPP9oOSGT+duiQpV2iwfa1Z+sUg==
X-Received: by 2002:a5d:4850:: with SMTP id n16mr4403473wrs.294.1619100228016;
        Thu, 22 Apr 2021 07:03:48 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:bd84:c44c:f28b:9534])
        by smtp.gmail.com with ESMTPSA id o17sm3675842wrv.16.2021.04.22.07.03.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 07:03:47 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] config/schedulers: Add check-layer-nightly
Date: Thu, 22 Apr 2021 15:03:47 +0100
Message-Id: <20210422140347.1578894-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new target to run layer checks every 24 hours on various layers we don't
test as part of the standard test runs.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.py     | 2 ++
 schedulers.py | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/config.py b/config.py
index 54ec9ce8..82076cd3 100644
--- a/config.py
+++ b/config.py
@@ -23,6 +23,7 @@ buildertorepos = {
     "qemuarm-oecore": ["oecore", "bitbake"],
     "checkuri": ["poky"],
     "check-layer": ["poky", "meta-mingw", "meta-gplv2"],
+    "check-layer-nightly": ["poky", "meta-agl", "meta-arm", "meta-aws", "meta-intel", "meta-openembedded", "meta-virtualization"],
     "docs": ["yocto-docs", "bitbake"],
     "default": ["poky"]
 }
@@ -110,6 +111,7 @@ builders_others = [
     "qemuarm-armhost",
     "meta-agl-core",
     "meta-aws",
+    "check-layer-nightly",
     "auh"
 ]
 
diff --git a/schedulers.py b/schedulers.py
index 9d81806b..8b166e0b 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -352,6 +352,11 @@ schedulers.append(sched.Nightly(name='nightly-quick', branch='master', propertie
 schedulers.append(sched.Nightly(name='nightly-full', branch='master', properties=parent_default_props('a-full'),
                   builderNames=['a-full'], hour=1, minute=0, dayOfWeek=6))
 
+# Run check-layer-nightly each day
+schedulers.append(sched.Nightly(name='nightly-check-layer', branch='master', properties=parent_default_props('check-layer-nightly'),
+                  builderNames=['check-layer-nightly'], hour=0, minute=0))
+
+
 # Run the build performance tests at 3am, 9am, 3pm and 9pm
 schedulers.append(sched.Nightly(name='nightly-buildperf-ubuntu1604', branch='master', properties=parent_default_props('buildperf-ubuntu1604'),
                   builderNames=['buildperf-ubuntu1604'], hour=[3,9,15,21], minute=0))
-- 
2.30.2


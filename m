Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web10.1486.1616688252799524209
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:04:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=UcwssA++;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.181, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f181.google.com with SMTP id g15so2537001pfq.3
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=8IFeOcYvDcovO7b6Qnt9bi8gDwe7vJoLZRY8YC35kMI=;
        b=UcwssA++1o19dZoCSEKNh9dF+oMGFMtj3nOE2v3ja65AnQWA0zKuq6CgT8Y6tF+9uo
         QOaUIC9omDQLxWL2RI5zqeQrQR3Wpk4u5SUI/tAklk1qw+oafDuxKGr69Zr5rCbYjXjr
         wRdssl+Si7OcmE38PMDLuWRl2RDyfqQey5yhkAhXXNM4RNGHSo+keoFGGKqMYJnzJaT9
         PWHZyNrFJq/TNkQSqw239tL8COj7ZRE+ivpXipD2zagw6zQC4AsO6eklhBHeMW2sogdr
         TqV5wFw2p0CseNAUYGuA79B4/XL+yVvDBvn+Rzr2xuSmsEMa0OQ5vH+MXiSvtYfmtZ20
         aWNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8IFeOcYvDcovO7b6Qnt9bi8gDwe7vJoLZRY8YC35kMI=;
        b=b5aCwuMbEixEMYU3FWgHRCEUIWs81tDvbzvcRb6SDqHi/SDyJL9tXHuQtd77wnroIm
         8/+3VgaUYsreZs3XDpIvtbBsxROV8aYRgZnjIOybk8vJquovzlPziYAkrsAWnAxrl4+i
         k0fhH3d6Y2cNN8+oSKK3NEnHg9pi14BuFm+ruS98hGPdexxSRZCWl5kZ+VJvCWWWi831
         VK09KL3UFeF1Eijw6DCfPpW+kyyzst1yfLDl08Lc2cm16Q9A7rSp3sweh1LFOyPsvdtY
         fOq7wZ+PzsVzAZ63ke7wdC0DtMvyLHbNl1XjchNfKXoii7ota9zFQ7jc3l35iIHv+B/P
         O6qQ==
X-Gm-Message-State: AOAM5311AoliIFDZtvwujUD/pNuET4hOA8DX0DbJ7bL93b8awioSwYeT
	TfKOujrF11c6KlcNI6QVEVIB2k1v6TCl6fgm
X-Google-Smtp-Source: ABdhPJzT5gG4zBQ50wmr9qNwACNkdK+NEBOI2kLIw2Vxfs4T1D7g+VDycmV0JZAPUmcsAW7xyjHDug==
X-Received: by 2002:a17:902:7585:b029:e6:cc10:61fe with SMTP id j5-20020a1709027585b02900e6cc1061femr10395884pll.23.1616688251776;
        Thu, 25 Mar 2021 09:04:11 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.04.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:04:11 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 14/15] config.json: Split reproduciblity tests into their own target
Date: Thu, 25 Mar 2021 06:02:20 -1000
Message-Id: <c5846cbff089fd2ae7f5cdfa91099a12879ac97a.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 97e0979d6eb0300951445bb2cc5eda315681302e)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index cedcef7..0a5068a 100644
--- a/config.json
+++ b/config.json
@@ -171,7 +171,7 @@
             },
             "step2" : {
                 "shortname" : "OE Selftest",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror devtool.DevtoolAddTests.test_devtool_add_npm recipetool.RecipetoolTests.test_recipetool_create_npm -T machine -T toolchain-user -T toolchain-system -j 15"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror devtool.DevtoolAddTests.test_devtool_add_npm recipetool.RecipetoolTests.test_recipetool_create_npm reproducible -T machine -T toolchain-user -T toolchain-system -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             },
             "step3" : {
@@ -179,6 +179,16 @@
                 "EXTRACMDS" : ["if [ `which oe-pylint` ]; then mkdir -p ${HELPERRESULTSDIR}/${HELPERTARGET}; oe-pylint > ${HELPERRESULTSDIR}/${HELPERTARGET}/pylint.log || true; fi"]
             }
         },
+        "reproducible" : {
+            "MACHINE" : "qemux86-64",
+            "SDKMACHINE" : "x86_64",
+            "step1" : {
+                "shortname" : "Reproducible Selftest",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest -r reproducible -j 1"],
+                "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
+
+            }
+        },
         "trigger-build" : {
             "SDKMACHINE" : "x86_64",
             "MACHINE" : "qemux86",
@@ -725,6 +735,24 @@
         "oe-selftest-centos" : {
             "TEMPLATE" : "selftest"
         },
+        "reproducible" : {
+            "TEMPLATE" : "reproducible"
+        },
+        "reproducible-ubuntu" : {
+            "TEMPLATE" : "reproducible"
+        },
+        "reproducible-debian" : {
+            "TEMPLATE" : "reproducible"
+        },
+        "reproducible-fedora" : {
+            "TEMPLATE" : "reproducible"
+        },
+        "reproducible-opensuse" : {
+            "TEMPLATE" : "reproducible"
+        },
+        "reproducible-centos" : {
+            "TEMPLATE" : "reproducible"
+        },
         "check-layer" : {
             "NEEDREPOS" : ["poky", "meta-gplv2", "meta-mingw"],
             "step1" : {
-- 
2.25.1


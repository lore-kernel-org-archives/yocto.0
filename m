Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web08.1407.1616632843836712246
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=L6wu7gzZ;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.172, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f172.google.com with SMTP id v186so92228pgv.7
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=VnY/mjqUWY3io9QVq5jqMND/CQgQ0Wc/9aHq834vUgc=;
        b=L6wu7gzZDCwrSnhaWwtUscWOFq0pONXzrdv7OEWRzAT6WMUohieBLh77kpyLQnq//N
         rDinXu2nVCVDhfFe7EhlYPpEySaS+AjozzjsS8BHsg9k7KbxVlYqxn3nz+RdPJfyTJNy
         FKZQwN9YA1kDkvwYCAVLT36zGp5d+HrfxEdcqbuTUGSpMKY47lGWJl0qYKMgH9DQFsS1
         vqvrVo1eJv5Aq749SeExrZecRf01NrAyj+4KZRGQncugGU53dJbcZLLbJaSz9jF3g9Rv
         SFSj9+xI097k910gI1KrPJxtbjHghA0t8nPAZVsaddSRluiFMDWZHPVeYjAv+0K997d9
         ACYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VnY/mjqUWY3io9QVq5jqMND/CQgQ0Wc/9aHq834vUgc=;
        b=rCQQdhZpLAadgiZ1dqOwGuzcHh9/MldSbp60o2gu9AiCgMdljqF3/VsFKP70vJsjAR
         2jsvbTEEVWUC1KvxMlRtyXEfo5c8BwwuzpZIr0O+uDTYhbRvnT3g1CncbqlsjK5c5kvK
         H3LtJG1VQph7ckSHIFwQMLhvss3cmeH/n9DTX5IQOOvoNO7y2mDfb0fGqGOZZPdEqCgg
         whCLx4mvuHndfzwXvRdunKJlEL6yadW/SF1TTMiQzD0751+QYfa3/wVqTWAAuvntcto1
         EMdn6+i4Bj1EllpLo+AlZWSDGrgKLGg8aDjxwyFYatb94DmJqzUrZY3t8SKq+bopbxSy
         jQuA==
X-Gm-Message-State: AOAM531lfQbEuS600uPHqDDjn72Zkn8xpX/JIZt8biMPdp5COaXrFxIq
	CBOagSgdoT55wHp9ilFmndQx7Mz2axckaEb8
X-Google-Smtp-Source: ABdhPJys8gS34waQ021DzoHAvTXthUVDWnQPIbo8GFfsc9GJVe65PxEy8djGJ1TkW7gS/auB4NIahA==
X-Received: by 2002:a63:f506:: with SMTP id w6mr5066019pgh.367.1616632842863;
        Wed, 24 Mar 2021 17:40:42 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:42 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 22/23] config.json: Split reproduciblity tests into their own target
Date: Wed, 24 Mar 2021 14:39:31 -1000
Message-Id: <98fed776845eed52b2a3cc8d0f879552eee539c3.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
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
index 8eb05e6..3ce10c9 100644
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


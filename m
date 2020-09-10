Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web12.21894.1599744651985411290
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SrDACCIP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id q9so60049wmj.2
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SjC+a2wFWht4zDlIhvQ+tHF3idtbgjZnYWfPUhxPPy0=;
        b=SrDACCIP2cwPsDfkp7TaHRpcMxPEU+aD6oCdPxfmHaKDKTKTL1X5nNPgRvAXGt6R9u
         J3JJrx/W48hjfJSFMW9FnRCChuk4h8OAv9uV4KAR7C/SwQdst2C+BYScathbusZRbjr+
         FZJ0q9UE+OOv7CIyeQtt8TmDV4iOn+rjf2QwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SjC+a2wFWht4zDlIhvQ+tHF3idtbgjZnYWfPUhxPPy0=;
        b=cZhy/W9657rWO7F7uSbVlwYqJGzveMC5pYbtyINOM1Pcn6BZa+gUGDgQgHCAYF+h9W
         af3rHUP+zSJDZAN0Eq461L1BLylk0/aFEGqFvqvyGqdWy0w4BGPvBKJQQ8XaTmJmVTtH
         N26t2m/GQEfs51EjHmpA7qVlhqxUe9GdCS7JiITLBKVLdBxiUzh142e71wnlZYZ/A9od
         a/Aj0LcFHHbEh3ahChSId4zognVBNLVkTMAzAPiq1u6ufPvBCaUb9hEnbxpPe/02gaFU
         ZEF9jGk7N+kyN2eSE1kMDoqpXWZ1g/tHlIr/bUZUKw2wcf4UfvL2UuDuOWPReFBJFlEx
         Id1A==
X-Gm-Message-State: AOAM533CIzrmoVCJNYDWnN+4BLZHx35k12T2CP4cnbvInoSxvFJ7Ly/A
	SOppXR2RZyImH1SQ0wysSMAmzqwyPs1K4A==
X-Google-Smtp-Source: ABdhPJy7PI7x7rUlDrhj2qjkrq2pSaqU9aCsdEnkIqAUwaC9x89vkoTjhf5PMpWBZcx7Km+w7cXiHw==
X-Received: by 2002:a1c:7e83:: with SMTP id z125mr38816wmc.32.1599744650059;
        Thu, 10 Sep 2020 06:30:50 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:48 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Marco Cavallini <m.cavallini@koansoftware.com>
Subject: [PATCH][autobuilder-helper][thud 15/40] config.json: Replaced occurrencies of /home/pokybuild with ${BASE_HOMEDIR}
Date: Thu, 10 Sep 2020 14:30:10 +0100
Message-Id: <20200910133035.2044355-15-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Marco Cavallini <m.cavallini@koansoftware.com>

Signed-off-by: Marco Cavallini <m.cavallini@koansoftware.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index 637d416..a8aa288 100644
--- a/config.json
+++ b/config.json
@@ -16,8 +16,8 @@
     "WEBPUBLISH_DIR" : "${BASE_SHAREDDIR}/",
     "WEBPUBLISH_URL" : "https://autobuilder.yocto.io/",
 
-    "BUILDPERF_STATEDIR" : "/home/pokybuild/buildperf",
-    "BUILDPERF_RESULTSDIR" : "/home/pokybuild/buildperf-results",
+    "BUILDPERF_STATEDIR" : "${BASE_HOMEDIR}/buildperf",
+    "BUILDPERF_RESULTSDIR" : "${BASE_HOMEDIR}/buildperf-results",
 
     "defaults" : {
         "NEEDREPOS" : ["poky"],
@@ -95,7 +95,7 @@
             "SSTATEDIR_RELEASE" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
             "PACKAGE_CLASSES" : "package_rpm",
             "EXTRAPLAINCMDS" : [
-                "${SCRIPTSDIR}/build-perf-test-wrapper -r ${BUILDPERF_RESULTSDIR} -E yocto-perf@lists.yoctoproject.org -d ${BUILDPERF_STATEDIR}/downloads -w /home/pokybuild/build-perf-test -p ${HELPERRESULTSDIR}/${HELPERTARGET} -R ${HELPERREPONAME} -b ${HELPERBRANCHNAME} --push git@push.yoctoproject.org:yocto-buildstats"
+                "${SCRIPTSDIR}/build-perf-test-wrapper -r ${BUILDPERF_RESULTSDIR} -E yocto-perf@lists.yoctoproject.org -d ${BUILDPERF_STATEDIR}/downloads -w ${BASE_HOMEDIR}/build-perf-test -p ${HELPERRESULTSDIR}/${HELPERTARGET} -R ${HELPERREPONAME} -b ${HELPERBRANCHNAME} --push git@push.yoctoproject.org:yocto-buildstats"
             ],
             "extravars" : [
                 "BB_NUMBER_THREADS = '24'",
-- 
2.25.1


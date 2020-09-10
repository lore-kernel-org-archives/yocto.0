Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.20777.1599740763387213097
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FsryNYVz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id e16so6514646wrm.2
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JD5NsuQ6dcbIOdL5EFf/PUPkbzIbmtcPsgwHjN5FwOI=;
        b=FsryNYVz9wv7BgNb34hi9f3Hvinv5VXrvZk3bxV94CAEShhrdVVzrapt94TpMWBHQT
         Loxr/G2+hvw9HthF2bY41MLkMs5xlAfKYHE7dnwhwCzY5Lz0sIrODdLTX1aJUV8FCnC4
         yggoZX9P+CUfdR2nIL79ZLFjQBLLKxrlcDaaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JD5NsuQ6dcbIOdL5EFf/PUPkbzIbmtcPsgwHjN5FwOI=;
        b=QyJZVxbjmiBplmGWNLHRz5xPjMTv5PQ+xzdHccgTVH0z+coW3vsZ3sWGa4DHgZgPoJ
         POzrHvUPKigluSk1whqW6zcJetq/IjxfYdTmImJTZ6nzJerjTv+pYhpYJ+edEDiJJ3v+
         6hinu29Hxc6tGlItwWND3vMiRYNAJEhkfPrkCjLQmxZJrEr2GY1C7dOBLf0Cz8DqkJiM
         y83ArA0CnG62hkCbyjh3j0P0jerDauYICorgtbkYwbn9CYFZ3emmCBvnfl+pHYMAepE2
         T4GAg2pWQdtNZqFHeflrK4IY/8zO/yBX6Kk+/PbzWkDwzdXvcGzoyAWoBYq4bBAt7H5d
         hB2A==
X-Gm-Message-State: AOAM532+NmCRB0t8nIdFeYqmg1HA1eEn537E65bnEtRf6D9UO7phWboF
	dPCt7R6ALQB/jzEosJhwrYjZrRmRpt2uNA==
X-Google-Smtp-Source: ABdhPJwzYTHazdwNypzwnZmLtlcCqel+9D0lElyf7RGn4w+cE5xSgYxOE75C6XLQqSL2rwsi7Zf7Zw==
X-Received: by 2002:a5d:518b:: with SMTP id k11mr8483106wrv.369.1599740761628;
        Thu, 10 Sep 2020 05:26:01 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:01 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Marco Cavallini <m.cavallini@koansoftware.com>
Subject: [PATCH][autobuilder-helper][warrior 09/41] config.json: Replaced occurrencies of /home/pokybuild with ${BASE_HOMEDIR}
Date: Thu, 10 Sep 2020 13:25:21 +0100
Message-Id: <20200910122553.2040430-9-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Marco Cavallini <m.cavallini@koansoftware.com>

Signed-off-by: Marco Cavallini <m.cavallini@koansoftware.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index 43526de..e7c7b55 100644
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
@@ -109,7 +109,7 @@
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


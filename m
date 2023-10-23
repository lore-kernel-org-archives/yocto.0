Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CC75C00A8F
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 15:44:02 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.124082.1698075840770202248
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 08:44:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RgR8Trva;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.182, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2c523ac38fbso50536041fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 08:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698075839; x=1698680639; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gRjf5QWe/Ur5Bq84ijgiC/Vw1F1jwVBwTYwBn64gbWk=;
        b=RgR8TrvaGitrRHvWL14faps0SaCJ4SRWNRGMarlgs8DcY+T+kRtS88NbEeW8JeOK5e
         4CitPQAK/XOeiY6THCLTqBAEmKZtezOFnIaZ9GDWcQkG083LWqDiPTsnV2ukX/k4G2xv
         xgZdvTuVnkFxl/NFsWjGXMXKNP5TPrIyR31sw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698075839; x=1698680639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gRjf5QWe/Ur5Bq84ijgiC/Vw1F1jwVBwTYwBn64gbWk=;
        b=SbQClargbvypz+WaDE7a5dMFrgiJEmd0LS5fhQnlSKJFaUCfMb9/S2TZAtXHl+ZqvD
         2IyJv8VcrOPvigQuCeRIBZNQMPxmjSrJaLYFAKFrrX3JSCwl7uQ7P8sgLBHyDfVUGGzm
         itqEtzKKSOq4AZ+4MIb17WzplATOxgb2TqF0BLxKHDJfmuoOWSrmGavUEHKaooBU9a/c
         5SI6yWWW/cdfaTQhZqBQBi2cPHeugLrZzU7syoe4mI2ihy9asUh0hc0rq8lkhhcGjPVL
         YdK6tCqbk4fG83PQR3X+MX91XRnx9eqol1Kvv/tI5VfC7NSsyUUAZpSbLCq1nuiR0kqV
         yAvQ==
X-Gm-Message-State: AOJu0Yyg+24iLsD5dGLNzt6th2YIMpEsYJ6DniVi0CUzYRJm7KdOSmdH
	Azs3IOCZSN5gYLlcBxsHh8pXLaHmq5DsF9RtqJs=
X-Google-Smtp-Source: AGHT+IGp0kpfZ/9Ip4UwJAEXvkmss1yoCWJ84Q0B1ioMaWUiig20vnTp96bmorIqRRX++opsZ/kv3A==
X-Received: by 2002:a2e:7a04:0:b0:2c5:106f:5416 with SMTP id v4-20020a2e7a04000000b002c5106f5416mr6143359ljc.53.1698075838863;
        Mon, 23 Oct 2023 08:43:58 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:3e73:a41c:6787:e5d4])
        by smtp.gmail.com with ESMTPSA id ay20-20020a05600c1e1400b00407460234f9sm9745346wmb.21.2023.10.23.08.43.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 08:43:58 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 3/5] metrics: Pass branchname to scripts
Date: Mon, 23 Oct 2023 16:43:54 +0100
Message-Id: <20231023154356.1145934-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023154356.1145934-1-richard.purdie@linuxfoundation.org>
References: <20231023154356.1145934-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 15:44:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61456

To prepapre to run the scripts per branch, pass the branchname to the scripts.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json              | 4 ++--
 scripts/run-cvecheck     | 1 +
 scripts/run-patchmetrics | 1 +
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index f225148..0c35632 100644
--- a/config.json
+++ b/config.json
@@ -1209,11 +1209,11 @@
             ],
             "step1" : {
                 "shortname" : "Generating patch metrics",
-                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/run-patchmetrics ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics ."]
+                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/run-patchmetrics ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics . ${HELPERBRANCHNAME}"]
             },
             "step2" : {
                 "shortname" : "Running CVE checks",
-                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/run-cvecheck ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics ."]
+                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/run-cvecheck ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics . ${HELPERBRANCHNAME}"]
             }
 
         },
diff --git a/scripts/run-cvecheck b/scripts/run-cvecheck
index 35c796b..d48fd68 100755
--- a/scripts/run-cvecheck
+++ b/scripts/run-cvecheck
@@ -6,6 +6,7 @@ PARENTDIR=`realpath $1`
 TARGETDIR=`realpath $2`
 RESULTSDIR=`realpath -m $3`
 BUILDDIR=`realpath $4`
+BRANCH=$5
 OURDIR=`dirname $0`
 
 TIMESTAMP=`date +"%s"`
diff --git a/scripts/run-patchmetrics b/scripts/run-patchmetrics
index e45d463..20e6268 100755
--- a/scripts/run-patchmetrics
+++ b/scripts/run-patchmetrics
@@ -6,6 +6,7 @@ PARENTDIR=`realpath $1`
 TARGETDIR=`realpath $2`
 RESULTSDIR=`realpath -m $3`
 BUILDDIR=`realpath $4`
+BRANCH=$5
 OURDIR=`dirname $0`
 
 TIMESTAMP=`date +"%s"`
-- 
2.39.2



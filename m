Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08789C433F5
	for <webhook@archiver.kernel.org>; Tue, 21 Dec 2021 08:43:09 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web11.3555.1640076187869424588
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 00:43:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112
 header.b=0DA7egnx;
 spf=pass (domain: baylibre.com, ip: 209.85.221.68,
 mailfrom: jstephan@baylibre.com)
Received: by mail-wr1-f68.google.com with SMTP id s1so19960693wra.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 00:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vyi31QTvt24tNo84RHwnjdctX5y8ASjXN4hNmIRAyBM=;
        b=0DA7egnxdqP7zQjKu8jEbeaUgI0+UANptnmVKXAXaspKR+5Pu0JFK3M14Oi1cD5u1E
         7mT5jp82rxcI6gtD+HxLDmFEqtE2uenQK2sz0d0Z2xQfUUt7A/uz/FTvGKDIqJsRY8iw
         RI54o7xDfY81IO/4iVJQqB9hdPXmbimM+RdES+ZMqJ4/+FpgP4UG+5cnADCQ21kvQ+XT
         /AFNFMGgyhydW/0E+m+0kD8DdnWUBNBUb7P5j/GaUwnLIZ1dFxx9pmwgQL7rIEpCLiY2
         OsSTJyx91u7Imj3ulSRh+B4NxQ54X4e7fgjJ/BCtkE9FwSLfpIU4e7wy1JAzqeIoyMyX
         Izug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vyi31QTvt24tNo84RHwnjdctX5y8ASjXN4hNmIRAyBM=;
        b=Ah5Y+2eXUlTZ3wiCd4uvHzbu/SrIs8PHo3ZbDm5PmLcT5tQk30SwXLVoODy3F/0y2u
         aCx2JYoNuDcTYKriB8IbT4BTTpcc3jbcbRowwA9AQNUczynN/a7rqYqf8HfmJK7Otdon
         5OOeEz1ov6ArfqEHnow+rFXVdhwgCAxlK42GjafpH4rVDgm1SYSkIJAulDSfoS6Pam/Q
         UTtlxWjg2BOtCFVhK0g6LUkZWUX+XxVs6LCxXWnA2eoifuHZIQFwJfrX3UNakfz6eD9b
         XwAOA9J1DHVEygTnoSjMRNL14K3n7ora4iU8fpRIN86IznxZ77IIWxcdySrj7HRQY2Sq
         SBBg==
X-Gm-Message-State: AOAM531N55zzEeSuZ0AZVFKwQwv+SWlJ8zcHW8y+xMlzW+qlEv1NkOsp
	QHcb0vAj5/8QaRWweu6GVGnzw7LARhg5FKMO
X-Google-Smtp-Source: 
 ABdhPJzvSAS7xJkENUiFy0zUmr5lKhBmVT1rMz5lBMSsF1rAfViZ6+xPXonu/AQ46LfGGo+d65GJkQ==
X-Received: by 2002:a5d:6e8d:: with SMTP id k13mr1707512wrz.449.1640076186347;
        Tue, 21 Dec 2021 00:43:06 -0800 (PST)
Received: from localhost.localdomain (179.160.117.78.rev.sfr.net.
 [78.117.160.179])
        by smtp.gmail.com with ESMTPSA id
 d62sm1680617wmd.3.2021.12.21.00.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 00:43:06 -0800 (PST)
From: Julien STEPHAN <jstephan@baylibre.com>
To: yocto@lists.yoctoproject.org
Cc: Julien STEPHAN <jstephan@baylibre.com>
Subject: [meta-tensorflow][PATCH 2/3] bazel.class: rename BAZEL_ARGS to
 BAZEL_STARTUP_OPTIONS
Date: Tue, 21 Dec 2021 09:42:21 +0100
Message-Id: <20211221084222.1442456-2-jstephan@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211221084222.1442456-1-jstephan@baylibre.com>
References: <20211221084222.1442456-1-jstephan@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Dec 2021 08:43:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55633

BAZEL_ARGS variable contains bazel startup options so rename the
variable to be more explicit. Moreover upstream tensorflow uses the
variable name BAZEL_STARTUP_OPTIONS inside
https://github.com/tensorflow/tensorflow/blob/master/tensorflow/lite/tools/pip_package/build_pip_package_with_bazel.sh#L97
so we can keep consistency with upstream and this would be useful for
future tensorflow-lite recipe

Signed-off-by: Julien STEPHAN <jstephan@baylibre.com>
---
 classes/bazel.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/bazel.bbclass b/classes/bazel.bbclass
index e232d30..ccdfd74 100644
--- a/classes/bazel.bbclass
+++ b/classes/bazel.bbclass
@@ -7,7 +7,7 @@ inherit bazel-base
 
 BAZEL_DIR ?= "${WORKDIR}/bazel"
 BAZEL_OUTPUTBASE_DIR ?= "${BAZEL_DIR}/output_base"
-export BAZEL_ARGS="--output_user_root=${BAZEL_DIR}/user_root \
+export BAZEL_STARTUP_OPTIONS="--output_user_root=${BAZEL_DIR}/user_root \
                    --output_base=${BAZEL_OUTPUTBASE_DIR} \
                    --bazelrc=${S}/bazelrc \
                    --batch  \
@@ -19,7 +19,7 @@ do_prepare_recipe_sysroot[postfuncs] += "do_install_bazel"
 do_install_bazel() {
     mkdir -p ${BAZEL_DIR}
     install -m 0755 ${STAGING_BINDIR_NATIVE}/bazel ${BAZEL_DIR}
-    create_cmdline_wrapper ${BAZEL} \$BAZEL_ARGS
+    create_cmdline_wrapper ${BAZEL} \$BAZEL_STARTUP_OPTIONS
     zip -A ${BAZEL}.real
 }
 
-- 
2.34.1



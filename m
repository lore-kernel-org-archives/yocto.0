Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DB9AC433EF
	for <webhook@archiver.kernel.org>; Tue, 21 Dec 2021 08:43:08 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web08.3592.1640076186154686759
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 00:43:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112
 header.b=Uh5AfNWH;
 spf=pass (domain: baylibre.com, ip: 209.85.128.42,
 mailfrom: jstephan@baylibre.com)
Received: by mail-wm1-f42.google.com with SMTP id b73so8572620wmd.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 00:43:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gb52hKqQ/gsP2nhVrwDcp2lMM/RcVAeq7koUVicEiec=;
        b=Uh5AfNWHQaisIl598HYSsd3+b0tg+pP0GPkeXxSkczPal80myDhtpFYXBPkOR3IRsR
         044TyAMtutC8KbysDFLS8iG9rdPHo7j7TbHHsnZR5z3TPqDKM826DqYOf710Y1d8VfGB
         Y7PrS1UQC+6UNl7qD0Ij0HBOSf0b+ET8D8XWj2W2riUc9WlmHfi9RauAZbzBhEW3c09f
         me8fI8VzBRgW+YMJZsC8yKTHLOuEL65SpKQCbwV94f4EIK3ZxCURBQCD+rmcYrUpwlQV
         JEmi47f8LjCywfFbmeHRGzwW8WNdvIX2G5DOmnOnClBBhB2aS9cB9JXqYWeafkkjjt2g
         Iofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gb52hKqQ/gsP2nhVrwDcp2lMM/RcVAeq7koUVicEiec=;
        b=oBkoT2uTEsHrjN53cvzOFFJEbfntO4cVLv0NOG1H7hEzDEz9oc7QUJAQqeyCq2HQrC
         hrQWWP7qtpU1xZPym9JX0SEMgauEWTqJfmWgWZFHOUkTI6JXnnmqPALh8jxWXzd/1WxT
         bTlaW81w1Pfo4crpGSZm9oRnqUU9dBUzVjyS7htdEeokhN7UvUHUmuw8+jAvb2xo5hvw
         5Dj8Chv6TlgB9kjLczsGz7DUweRyjNaFgiIKNsMkrO4fkVIGbZi/etyJiEAbYsoSw9Zu
         omRt8Nkkv/pmDixRJSioaL8pvIJXz2yTF0KzaRuAsjCtbDmHdHUcn4QdZCUK6GmHazjs
         uYnQ==
X-Gm-Message-State: AOAM532WfxGLyBYCJOg3TWF+dTlwLqlPCNJzqXJF4vPYNo+BZdBC3Nbf
	FFOnVeL+LP0oUt1Bd9nloE8uFm6DCfco/ha/
X-Google-Smtp-Source: 
 ABdhPJwqwrTRyCZmgh+BuQCt+ub5qXzHnZR5ov37PDQ8LXiUiwFWtiAOVAu03QtprI2KxGIQj2KNQA==
X-Received: by 2002:a1c:f60a:: with SMTP id w10mr1654959wmc.53.1640076184247;
        Tue, 21 Dec 2021 00:43:04 -0800 (PST)
Received: from localhost.localdomain (179.160.117.78.rev.sfr.net.
 [78.117.160.179])
        by smtp.gmail.com with ESMTPSA id
 d62sm1680617wmd.3.2021.12.21.00.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 00:43:03 -0800 (PST)
From: Julien STEPHAN <jstephan@baylibre.com>
To: yocto@lists.yoctoproject.org
Cc: Julien STEPHAN <jstephan@baylibre.com>
Subject: [meta-tensorflow][PATCH 1/3] tensorflow: do not fail on chmod failure
Date: Tue, 21 Dec 2021 09:42:20 +0100
Message-Id: <20211221084222.1442456-1-jstephan@baylibre.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Dec 2021 08:43:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55632

every recipe using tensorflow.inc will inherits the do_compile:append
task but sometimes, the chmod inside this task fails because the target
files are not generated, we can safely ignore the chmod exit code and
always return 0

Signed-off-by: Julien STEPHAN <jstephan@baylibre.com>
---
 recipes-framework/tensorflow/tensorflow.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-framework/tensorflow/tensorflow.inc b/recipes-framework/tensorflow/tensorflow.inc
index e30cca5..25d2ebf 100644
--- a/recipes-framework/tensorflow/tensorflow.inc
+++ b/recipes-framework/tensorflow/tensorflow.inc
@@ -39,6 +39,6 @@ TF_CONFIG ?= " \
 inherit tensorflow_ver
 
 do_compile:append() {
-    chmod a+w ${BAZEL_DIR}/output_base/execroot/org_tensorflow/bazel-out/*/bin/tensorflow/lite/python/schema_py_srcs_no_include_all
-    chmod a+w ${BAZEL_DIR}/output_base/execroot/org_tensorflow/bazel-out/*/bin/tensorflow/lite/python/schema_py_srcs_no_include_all/tflite
+    chmod a+w ${BAZEL_DIR}/output_base/execroot/org_tensorflow/bazel-out/*/bin/tensorflow/lite/python/schema_py_srcs_no_include_all || true
+    chmod a+w ${BAZEL_DIR}/output_base/execroot/org_tensorflow/bazel-out/*/bin/tensorflow/lite/python/schema_py_srcs_no_include_all/tflite || true
 }
-- 
2.34.1



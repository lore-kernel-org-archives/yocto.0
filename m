Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70CABCDB465
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 09:39:09 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.23479.1697708347914630821
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 02:39:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AcLZEz3h;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-9b6559cbd74so1326127966b.1
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 02:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697708346; x=1698313146; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qeTyQobu2bOwy2bsoHN50EU8NFrx8cp4A9AVTC3srxQ=;
        b=AcLZEz3ha+U/ApsOo0gSAdpWb8HkZYM9FjOUjCFAIZsIdqAeqb0BjFVs7Bb9Sy25c0
         hIBdQDqy+M+f/W5SAGIL4LTAHJYViyYiXTjzrVRKGw6pclNNro+0AE0CcFahu/TCGjiz
         ecgk6NRuLEOYnXRAryZIhYq5ekjsq9J6MKTXKMebloLfUJ0E80KnD9XkSAW+znHIqq53
         h+TL+Or6woCKKIM/05bmGho11+LtqvoUJXKl9Mr6SO+kehWYcnI7xfZ8KTdvQjMhMd+o
         ZhNnkyxlzOAPyv+EtePQqg8aNj8UTSXpBhIb9mJFrmAqMly+FIkJjP3qbXDEVmJWUEhq
         xQJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697708346; x=1698313146;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qeTyQobu2bOwy2bsoHN50EU8NFrx8cp4A9AVTC3srxQ=;
        b=FrYkWV+gvEzddqbnjJwWecyNRFhgDhGsdxptXmvh/mSO9jtuqKxqqBw+Da0HtbWmLO
         gSBOSZfC91avVoPeFhsxwcaSeM9Z0y2lu3jCjI9rDCR1XgQA2soxX7/RF5iAHm/d3bBx
         cw3Z06k4vWPU8OOgkTKpqfFfl5LJhqlKfKsDhnbpBlCeykV3P6sD24DjHPS3z+JuvZ/k
         v1/XPJ3a2o0RYozrocLw0Q/Wo+grqqYJhty6XrW3kPGW2HYQuOYmc/E7rKbldYTst4sw
         yCxwJquQVK870+/r3ca+I9RlmmxVJRqgDITkuGiQp0PLjtbCsSpgDl8XCXKQsrd8wtOc
         O/GQ==
X-Gm-Message-State: AOJu0YyCJ97SCyFhUmHs4qQt2811Z/3d1LUePXdZcpOODgf5WgJ/NPtB
	snz7elhPZpnA7OPHVDMXvRoi1YI6euc=
X-Google-Smtp-Source: AGHT+IGD+9MCwpJB48STeEKoSQMKXbLTUTZ/GiuTMf3s5PsOzcf9k9tT3P1ruRh7bNkQw4f6H8ORAw==
X-Received: by 2002:a17:907:9702:b0:9be:6ff7:128a with SMTP id jg2-20020a170907970200b009be6ff7128amr1481138ejc.67.1697708346041;
        Thu, 19 Oct 2023 02:39:06 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:d900:f58f:7d32:a721:fcdd])
        by smtp.gmail.com with ESMTPSA id gs22-20020a170906f19600b009adc7733f98sm3199461ejb.97.2023.10.19.02.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 02:39:05 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: use yocto-mirrors tag to exclude/include yocto source mirror test
Date: Thu, 19 Oct 2023 11:38:55 +0200
Message-ID: <20231019093855.302415-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 09:39:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61409

This way explicitly listing the test can be avoided, especially when more tests
of the same kind will be added (such as te CDN sstate cache mirror test).

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index 28a3a6d..94c86e1 100644
--- a/config.json
+++ b/config.json
@@ -230,7 +230,7 @@
                 "extravars" : [
                     "RPM_GPG_SIGN_CHUNK = '1'"
                 ],
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -a --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror -T machine -T toolchain-user -T toolchain-system -j 15"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -a --skip-tests distrodata.Distrodata.test_checkpkg -T yocto-mirrors -T machine -T toolchain-user -T toolchain-system -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             }
         },
@@ -266,7 +266,7 @@
             },
             "step2" : {
                 "shortname" : "OE Selftest",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest -a --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror reproducible -T machine -T toolchain-user -T toolchain-system -j 15"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest -a --skip-tests distrodata.Distrodata.test_checkpkg reproducible -T yocto-mirrors -T machine -T toolchain-user -T toolchain-system -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             },
             "step3" : {
@@ -466,7 +466,7 @@
             "MACHINE" : "qemux86-64",
             "step1" : {
                 "shortname" : "Source Mirror Selftest",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -r buildoptions.SourceMirroring.test_yocto_source_mirror"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -a -t yocto-mirrors -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             }
         }
-- 
2.41.0



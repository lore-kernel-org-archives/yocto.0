Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9B0EC3DA6E
	for <webhook@archiver.kernel.org>; Sun, 17 Dec 2023 13:08:17 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.18126.1702818489242777295
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Dec 2023 05:08:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fsEe4fue;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40c6736d10fso27321505e9.1
        for <yocto@lists.yoctoproject.org>; Sun, 17 Dec 2023 05:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1702818487; x=1703423287; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=48Qx7Y2cTLxe27FMVmfMiSTmI2dbRIbvEkl+SOPnWtI=;
        b=fsEe4fuevMhzKrZJsrDMAI2gopRRhT4a2MUgJ31hofbQIeQv5al18i4QQs9w40xWuw
         y+w9+cZjfhNL6relgpczBzYnrni3vc32X+xA4M7qguQUXbBeuOBI8W+9XeCwUNxgvcHq
         Eo0RXWvXFnsOLkOE/BNBq9hQ9kYBZydtk88bk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702818487; x=1703423287;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=48Qx7Y2cTLxe27FMVmfMiSTmI2dbRIbvEkl+SOPnWtI=;
        b=w5HccsD5Sldd1AJnDxWNJkwMp2EBsYNFnjjYufPijdIl2mXo5IoYaVdJ7jJJBDx+Am
         1YBjSTL4HesvKZ3JvgKiofaSwE79audBwTPq8+F6ik5GBrRn6U477KDEsmXxEIn0/ii/
         Odo3iZXMpWL7LTC4RuHUrGfl8A8Flrr3sqd1qr66BbmEYMl4FjmUhIJwif/6vEYcONt9
         0M/yx9OkZK30Bwx0tFf7KZroEnLyCl83nSgcjS8BIv9JQkr/aMtjRIBhkPQQPmbUkLHW
         ppVlM5PqZ4K7Lpsvc8iAbTlg6rwApYJOSWaazzz6dsfKbNMKY8nTsGXD6K7xcxfa5Ju/
         dp2g==
X-Gm-Message-State: AOJu0YxF//XX33evvsueEC2fSODe4vL+LJh3fWq1RKjcUQFmC13128DG
	0iHBBapoUQ1l3iwoFrHKTeYPkmv7WHiZ6JDMm94=
X-Google-Smtp-Source: AGHT+IHipaK3XRLgOZ5mi3geaC03gJ16+nbZlBgekoMp1B4/yTkC94bzOg/Hu3fFbCuJSWkt5fyOQQ==
X-Received: by 2002:a7b:c451:0:b0:40c:330f:f2f9 with SMTP id l17-20020a7bc451000000b0040c330ff2f9mr8142181wmi.125.1702818487017;
        Sun, 17 Dec 2023 05:08:07 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:c690:9059:96b:687e])
        by smtp.gmail.com with ESMTPSA id j18-20020a05600c191200b0040c6b667dccsm10804172wmq.25.2023.12.17.05.08.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Dec 2023 05:08:06 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Add rpm builds to pkgman-non-rpm
Date: Sun, 17 Dec 2023 13:08:05 +0000
Message-Id: <20231217130805.3217309-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Dec 2023 13:08:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61944

The CDN tests fail since do_package is run without rpm's being generated.
With hash equivalence, this can lead to missing sstate artefacts from the
CDN.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/config.json b/config.json
index 6d9a4ed..d504d07 100644
--- a/config.json
+++ b/config.json
@@ -966,6 +966,18 @@
                 "shortname" : "arm deb",
                 "MACHINE" : "qemuarm64",
                 "PACKAGE_CLASSES" : "package_deb"
+            },
+            "step5" : {
+                "shortname" : "x86 rpm (for CDN)",
+                "MACHINE" : "qemux86-64",
+                "PACKAGE_CLASSES" : "package_rpm",
+                "SANITYTARGETS" : ""
+            },
+            "step6" : {
+                "shortname" : "arm rpm (for CDN)",
+                "MACHINE" : "qemuarm64",
+                "PACKAGE_CLASSES" : "package_rpm",
+                "SANITYTARGETS" : ""
             }
         },
         "poky-tiny" : {
-- 
2.39.2



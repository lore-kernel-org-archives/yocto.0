Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 475ECCD13D1
	for <webhook@archiver.kernel.org>; Sun, 17 Sep 2023 23:55:38 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web10.41003.1694994937152836093
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Sep 2023 16:55:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ORbL4ALM;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-59c26aa19b7so18344957b3.2
        for <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 16:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694994936; x=1695599736; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AffjpvnrOhS0jbjyH3LEwUtq12zmag1bdvE7HSXsRPE=;
        b=ORbL4ALM7wlwJdlHp1AGav3YCfketKDB1bM5zxbWKafrGr90ETfFVsJSMh8MCf5N/V
         E9KYKv6KBQ0Br4IlKDvu1RjWZux5UgL+RqJWAPbe6k+JmlnBM4buQRHPbBVzg6aXiUeg
         GCvxfjJPAz6unvl2Pv1DKOGnDdqHDixBG7YSpYuANXI7L6zG7pTlMvbhEph1sresrm70
         GjQxF72YqqDdf5e4K7mAJ8E1wbG9Qw479Fi/MQOk8QeMpMPTHPUas21s+eCnOiwEO2Hl
         vCPEY/oLv/c8ZbV8soRQ4VdB5JuxRFHbEzFBVQDKoEJcxHlxKjTNBx/8rH3mabaQjDdW
         60LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694994936; x=1695599736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AffjpvnrOhS0jbjyH3LEwUtq12zmag1bdvE7HSXsRPE=;
        b=SvBXV6jlfT/rh6Hqw+S/JCkt1wXWJtA67mIh/OKYeEIGrUwddC0AuRiXDCkLO17IKB
         pBTIdgMOE62SOJ73cLln2+f5jo0+2YahiaOgO/YfK4coEuqoiu5+oPaGJ6TMGlDySeBt
         Y5TIFpQ0n76QMLB7E+bbfopMvEPNmj7xLwas6ruZE4E1j25azqKTPOBjUxHYauXkn37i
         Jba3bLzn/sMJ/GbapewCKvQYwTYeqILPC6uW7PWXtfWOf8rhx0/X6z3SIiQ2qxZ3+1fw
         +iY7BM9xVY93myPHGOSZM1z/grbSDDMDJnnVjEBOlER7ATvIBKDSpD4z4OqxrtmNMCE/
         PamA==
X-Gm-Message-State: AOJu0YzYePM4ibcPI3YT0mWwKYaS0PvTzv4urmsUAXLILDQnzAVCgnax
	xruElyBgf5g/AfZmFoOUIOdykoTmrMQ=
X-Google-Smtp-Source: AGHT+IG9gEdrwA0I6S0AxqZ0LYoaunNM27SyeS5fn29Y/DPpfeuuBECHVe2iKp7KiODhiEY2LeVNHA==
X-Received: by 2002:a0d:f103:0:b0:59b:4ed2:a33 with SMTP id a3-20020a0df103000000b0059b4ed20a33mr7128682ywf.35.1694994936161;
        Sun, 17 Sep 2023 16:55:36 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:f623:9dad:2eba:f0e5])
        by smtp.gmail.com with ESMTPSA id x9-20020a0dd509000000b0058c4e33b2d6sm2209291ywd.90.2023.09.17.16.55.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 16:55:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/7] python3-privacyidea: update to 3.8.1
Date: Sun, 17 Sep 2023 19:55:29 -0400
Message-Id: <20230917235534.2871544-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230917235534.2871544-1-akuster808@gmail.com>
References: <20230917235534.2871544-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 23:55:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61025

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...{python3-privacyidea_3.8.1.bb => python3-privacyidea_3.9.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename dynamic-layers/meta-python/recipes-security/mfa/{python3-privacyidea_3.8.1.bb => python3-privacyidea_3.9.bb} (96%)

diff --git a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.8.1.bb b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.9.bb
similarity index 96%
rename from dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.8.1.bb
rename to dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.9.bb
index aa7bafa..2f0ac3a 100644
--- a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.8.1.bb
+++ b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.9.bb
@@ -6,7 +6,7 @@ LICENSE = "AGPL-3.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=c0acfa7a8a03b718abee9135bc1a1c55"
 
 PYPI_PACKAGE = "privacyIDEA"
-SRC_URI[sha256sum] = "e0dae763575c6300ccaebe6dcc8d3f119cb3e25c11302b1e78a96a12e8ab2b38"
+SRC_URI[sha256sum] = "1dce02789ee0a639c5518ab95e254823ca1b47aeb1aae754ec11c70d4248f38e"
 
 inherit pypi setuptools3
 
-- 
2.34.1



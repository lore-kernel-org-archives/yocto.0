Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web12.2924.1602957825093349893
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YiiTXk74;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id o9so2895376plx.10
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=700j1FcLda9mD+PhUnjZLSIr3J/ComvloUjGpZxLmpA=;
        b=YiiTXk74Ao5dA+BIDybRiJ9Pm6frNMsRAVkSJoMNkMi0TuhGUmoAgbFrhCa8Ewfqom
         Kj2IunLXHOLieCSWyGN/lQl/gioem1fA8t6xev/BlV66GlI3vyc68aH500kfnPYWC1qh
         bJA+Kp5WSk0dw4O9ZacCiKjKqoSIr4YiLAiYKZs+SO0dWU2sUXdTqUyrvQtsPALLO435
         fwrd09FY+BKe0MZy66RU6ZVNxA0L81XJ1M+ytAAhuE9LuRZ9L2u4tzE7Pu0Wm8vaCaxv
         qNuFMtrOGfSLUgVP+SS7NEBG33b9bEI1tNN2iCdx+bcpdyHPfGmMnCOeTwgW9Van2Df9
         AhCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=700j1FcLda9mD+PhUnjZLSIr3J/ComvloUjGpZxLmpA=;
        b=mo39HiDWMmQ7zyxSs+4vMLWS8TXQITtg2wHZ5VDtSrcLhvRqPqnFl/SKvRlzCukSBm
         oVv+dMwYHj4QMxyhy78vQgg3+UpOtS953gbKDh2OFkVDwEFvHKnU/A++7SAWBsOS4atV
         DNBhE3sUWjVnwwirtVwJ3YC0NsO96ahV0jBh3fs9ROROt2pWFGn4+K3uvKPCLezT57cf
         YWFNqL0kzrLOFHDtPAkQQULV1JUVsoDgVNtxrweEHHvUbiPKbs7c1Mr2Z4qcGGNJ164b
         ygTaTiIZ6c/9VNsRRMyGEPv7OP0wxJx6adNyiwcQzdIiqawf8aJyShWFNCZlB5xN30z1
         A74Q==
X-Gm-Message-State: AOAM531RfhYhNj48wXCZeu0HgL9IL2p6ifdQIPCQdcO/0BU03Eh71VJK
	8gEGKT8E/iwJo3g0j5jJf2Ge/FF5JA4=
X-Google-Smtp-Source: ABdhPJxVbjjbdfxcNA2CO3uvgwjmI1Psk3QXSRlFEJsEzE+R3HsI5qeQJF6pI/TPhKqerifJUuZP7g==
X-Received: by 2002:a17:902:fe86:b029:d4:d451:eb56 with SMTP id x6-20020a170902fe86b02900d4d451eb56mr9476431plm.79.1602957824321;
        Sat, 17 Oct 2020 11:03:44 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:43 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 09/32] dm-verity-img.bbclass: Reorder parse-time check
Date: Sat, 17 Oct 2020 11:03:06 -0700
Message-Id: <061308362ff614afebf8eb7fc33d9cbb8b0a5f28.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

Relocate checking if DM_VERITY_IMAGE and DM_VERITY_IMAGE_TYPE are
defined as non-empty strings before DM_VERITY_IMAGE vs. PN
comparison is performed. By doing so we start seeing following kind
of bitbake parse-time console warnings in case either DM_VERITY_IMAGE
or DM_VERITY_IMAGE_TYPE is not set, when 'dm-verity-img' is defined
in IMAGE_CLASSES:

  WARNING: .../meta/recipes-core/images/core-image-minimal.bb: dm-verity-img class inherited but not used
  WARNING: .../meta-openembedded/meta-oe/recipes-core/images/meta-oe-ptest-image.bb: dm-verity-img class inherited but not used

whereas before this change this warning was printed only once, when
image pointed by <DM_VERITY_IMAGE> was parsed (and recipe with that
name could be found in BBFILES mask scipe), and DM_VERITY_IMAGE_TYPE
was not set.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit fd23d5256513cdf6641d8dd421a5c75a9b78b7d9)
---
 classes/dm-verity-img.bbclass | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 6faed5b..6ad0f75 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -68,13 +68,13 @@ python __anonymous() {
     image_fstypes = d.getVar('IMAGE_FSTYPES')
     pn = d.getVar('PN')
 
-    if verity_image != pn:
-        return # This doesn't concern this image
-
     if not verity_image or not verity_type:
         bb.warn('dm-verity-img class inherited but not used')
         return
 
+    if verity_image != pn:
+        return # This doesn't concern this image
+
     if len(verity_type.split()) is not 1:
         bb.fatal('DM_VERITY_IMAGE_TYPE must contain exactly one type')
 
-- 
2.17.1


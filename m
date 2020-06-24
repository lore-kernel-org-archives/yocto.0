Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
 by mx.groups.io with SMTP id smtpd.web11.799.1593041819557503774
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jun 2020 16:36:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mG801iAx;
 spf=pass (domain: gmail.com, ip: 209.85.215.195, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f195.google.com with SMTP id f3so2305835pgr.2
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jun 2020 16:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=drK+6Zi4DqE2N3HxaX7B9M+ei4p/iUXlfujKqDTT1Kw=;
        b=mG801iAx6a9tGNifo7vXzecb2UmRNxqMOQ7c9JIX2wEwbH3Q6Mkbt2AOzCyyt9wULA
         02rfW7ATL4jfZwj5O+jzKpMYxiIvW8ewWPdYNcdp//3ODfbxOgbEaY4cQuXgVljXv3sO
         ZukmhHHt1u31oh1uvj16tiHelfOQ+kTvtHhGRq03EvQrFqDdbQY5Lc0JbxxBOLamHykH
         Nr+zABF8ARyaZ1rIjopKgi93atte3da9y6yJuvVRq7kDVfcjGK0x8ORYxg0GK5fFHcTb
         pJ/ArnjQaWUSGuwQCk80HfUtJD1KwL7JFrdKE2FQA1SGPmzlX47VqrkmdsEqpeEYXpHc
         lvMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=drK+6Zi4DqE2N3HxaX7B9M+ei4p/iUXlfujKqDTT1Kw=;
        b=F3GeUf0AWJ41xb2maA7jkHhowNQgkkgqSkRH0DSaU4AbOkeZzSzjR0Qf90l5FvW3o2
         sF7LdLTcIY9lWzC8VHN4+3skS2U6GZX7/+2sHR5ixlMlesVbwW/agM8kDnt3zYBW/Hs8
         jw6TIGNAx3gGzZ23ohApU47YqAoH827y1rNcqUiCOfjpEvnn/hZyRT9bl1ck4VZUTYvI
         dCZKyYNo0TEI868K4C9S94x7icSaprfBpoLVy6sKrGp0Qo5Q1UmOP55fkXyIayhtbcbJ
         OnPqziP0njok4XgsaF9AoRO/tAsoPhmOQfQgqf/8wEZk22BxUyHbnycnIbzt0QoJvhhT
         zHmA==
X-Gm-Message-State: AOAM532v98jvf8l+0Yk0YqGu4Q8qvo3OdpTqWzxjsxfukYRUaG71X2ly
	jlN1P9PXen8znmU+b//cNq84q5TS
X-Google-Smtp-Source: ABdhPJxu776EFkiita6S9bAxboBoUW1UbWRn6ADmNBtWjSrl51d7qreNfC/AOpRti27tWrLg8eIrSw==
X-Received: by 2002:a62:ce83:: with SMTP id y125mr4446219pfg.181.1593041818591;
        Wed, 24 Jun 2020 16:36:58 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:c6b:ea9b:6226:355f])
        by smtp.gmail.com with ESMTPSA id iq19sm6064997pjb.48.2020.06.24.16.36.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 16:36:58 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][zeus][PATCH] tpm2-tss-engine: License changed
Date: Wed, 24 Jun 2020 16:36:56 -0700
Message-Id: <20200624233656.20725-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Fixes this error:

ERROR: tpm2-tss-engine-1.0.1-r0 do_populate_lic: QA Issue: tpm2-tss-engine: The LIC_FILES_CHKSUM does not match for file://LICENSE;md5=3fb0047fd29391478a71e8e6101c76eb
tpm2-tss-engine: The new md5 checksum is 7b3ab643b9ce041de515d1ed092a36d4
tpm2-tss-engine: Here is the selected license text:

The License changed to BSD-3 14 months ago so I suspect the commit was incorrect.

This corrects the License and hash

[Yocto #13926]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
index 8825737..5a5192f 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
@@ -1,8 +1,8 @@
 SUMMARY = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL." 
 DESCRIPTION = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL for Trusted Platform Module (TPM 2.0) using the tpm2-tss software stack that follows the Trusted Computing Groups (TCG) TPM Software Stack (TSS 2.0). It uses the Enhanced System API (ESAPI) interface of the TSS 2.0 for downwards communication. It supports RSA decryption and signatures as well as ECDSA signatures."
 
-LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=3fb0047fd29391478a71e8e6101c76eb"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=7b3ab643b9ce041de515d1ed092a36d4"
 
 SECTION = "security/tpm"
 
-- 
2.17.1


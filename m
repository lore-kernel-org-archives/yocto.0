Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951B2C4332F
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 16:12:35 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web08.21969.1646064754804191807
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 08:12:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lxPIUzGV;
 spf=pass (domain: gmail.com, ip: 209.85.216.54,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id d15so8237723pjg.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 08:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=nbkajL7FnURU/p34BRkUoUPry9W+bESmFu0QVXTA9xQ=;
        b=lxPIUzGVIZzVWLIRGVcRuqMZwi/i5at2+tkQot4DJCfIKkLd2Unt7wzmba5HQqgsD8
         4vQwEbux7He/1xW4iNuC95R76qqMa5euK7PBvQPiFHD5j2rb6DsHR9ens5BRQhRXAHl+
         H60zuGblvGhxoJgx64oV1EF7IWLxsTCOAZdAGIaeyTaJVH5ORyklzmqfXH/w+A1iRqtj
         zgdvwUlWfWOylPYUCJO5LXwq6zV0/S+xBCWQhr9Jh8MO8zNjGfKiTRf1CUcgboLGxeP2
         vui24IppkZPQXmDlyweiLG+ac3iydGbmnnv262E2Q9s+xkDn2+0BLaCglXWQLkz5i3RD
         VhQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nbkajL7FnURU/p34BRkUoUPry9W+bESmFu0QVXTA9xQ=;
        b=Pnssw7iKrFCLD9UWMt1zIAbvowQfzCbV6foQfhkE2Z4JIlEREPr4vl1Y1DD1n2Hdyd
         1i4T4YZEy74o3hf7GxROeVzks2eu5jzo8fgG632fhP9721ykrYHTpsQD57u3Nwr3M7Gd
         PvVpoEfnaoh27BOcDgtsza7Hki8YEVifmfHhF/WG4HJdFFyEggQfhoeukPpVSpKjE/xt
         6FLRWOeV2M/T+RDKkxyh1N5J+jJ6niNsmZURVL9W44WwX1xWHmlX5IX6RlbV9FFgduxZ
         hKceyeZuHIevj6E+Abseof9ezxwM5qKK6QQUA5JyNc+2ntTSewl/F4Yq1ZQvvqfNcuHZ
         OOdw==
X-Gm-Message-State: AOAM533ltjVHtKYOqbqgGUINj4sarTT/kcY68SRQ7LvfOckASr1Y6CAs
	HLiZwIsEuWhEgL3y7KYtOj+DrVTXecM=
X-Google-Smtp-Source: 
 ABdhPJwLAWNLzV4V+NnA2rQul3Ae2YRO0QXVXaZelbK/dW8SvbG8R9cwU1gmh3j5WldHjPZMqjsVNw==
X-Received: by 2002:a17:90a:6809:b0:1b9:bc46:fdd7 with SMTP id
 p9-20020a17090a680900b001b9bc46fdd7mr17325571pjj.148.1646064754085;
        Mon, 28 Feb 2022 08:12:34 -0800 (PST)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:c5c4:1c30:ffdf:c956])
        by smtp.gmail.com with ESMTPSA id
 d14-20020a056a0024ce00b004f3c87df62bsm14511413pfv.81.2022.02.28.08.12.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 08:12:33 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] parsec-service: Only enable TPM is layer
 and DISTRO_FEATURE is defined.
Date: Mon, 28 Feb 2022 08:12:31 -0800
Message-Id: <20220228161231.2096596-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228161231.2096596-1-akuster808@gmail.com>
References: <20220228161231.2096596-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 16:12:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56322

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-parsec/parsec-service/parsec-service_0.8.1.bb  | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
index 1cbf2bd..3f12139 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
@@ -12,7 +12,12 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
 
 DEPENDS = "clang-native"
 
-PACKAGECONFIG ??= "TPM PKCS11 MBED-CRYPTO CRYPTOAUTHLIB"
+PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO CRYPTOAUTHLIB"
+
+have_TPM = "${@bb.utils.contains('DISTRO_FEATURES', 'tpm2', 'TPM', '', d)}"
+PACKAGECONFIG:append = " ${@bb.utils.contains('BBFILE_COLLECTIONS', 'tpm-layer', '${have_TPM}', '', d)}"
+
+
 PACKAGECONFIG[ALL] = "all-providers cryptoki/generate-bindings tss-esapi/generate-bindings,,tpm2-tss libts,libts"
 PACKAGECONFIG[TPM] = "tpm-provider tss-esapi/generate-bindings,,tpm2-tss"
 PACKAGECONFIG[PKCS11] = "pkcs11-provider cryptoki/generate-bindings,"
-- 
2.25.1



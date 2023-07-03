Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7B9EB64DC
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 15:32:02 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web10.36177.1688398318393829190
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 08:31:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=icqwpzRI;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5728df0a7d9so57743717b3.1
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 08:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688398317; x=1690990317;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=NyeuKJlSULB3CEvkHiSmKPhJWnQQSH0FP8DF9gGtQmI=;
        b=icqwpzRIppzuYSxFEKJoaWnwQqUzJz7sg56qrMSZHK3P83rQTo86xf66cEpk10z6ns
         GGkrsphMkdlK0do0vwZP3wFtWOGjum/h9wiLXGZnFoCZ8N5c9N5ZZ7VZXIZLyPPhfSrY
         /a81HcSKGu1an0RRI2njEWqZCukaovduZwQ4XufAQNq1HNp/kDFUIKL3v6unyHrbpX5c
         6JP7075ABA/nTdo+2wm2C1JCbZmd/BkKhjd5Frdx3fHwRE0J4WH/1D97QQBuxFcNoWMJ
         FHpYg8OdQOMzpm2UV8MkVqzLi2hE8YRxZcWfndSj8vOhLzbPTktGuDxWbhKjRWEhAOm4
         rgyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688398317; x=1690990317;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NyeuKJlSULB3CEvkHiSmKPhJWnQQSH0FP8DF9gGtQmI=;
        b=kt1QqFGAr/i4hXmVA6gjRXZyMdO0DG8r3o8NLPkp8B+XaSclzA5S6XuKXIRAGYqguk
         MnJ7OD+B5WkJt9E6reH+jrb5lXE4qmCPYbGtBBVJctHID7OVI5sMU/PB5Uuy2CY9iUSy
         3sHofOfth8IE9GaKgE8FASb6OFc/28rcDXsyWCAYQ1sqFUmkjuRfPdtQhgV2btb5XnME
         aDE/7QV50zKs3NZhuCTXi3vyy/YJBSuSsTVs+SfMxqZPDm0eLBEct5dgP7++YqPY6AeH
         cKU2WgfDBJTRYJiKCWBho3GsVoV++U7zY/CFy6FOv5OyYoAd+NHC/3i1SR8MIpg8PTEl
         nBsg==
X-Gm-Message-State: ABy/qLbGDxDuHRTUnzBp5JYf4ts+styuy7gx6EujcWsrlQutLjzd4qzF
	ILWF6PDaW8ojnLeUnj+z+Gb3lYWwrjY=
X-Google-Smtp-Source: APBJJlH0EUEafVsGmEYHQhMzPEIQUjL+3PFFV9GNH7E281tQtGRBStd1a9nCiMjJ32rofcbn5EUK5g==
X-Received: by 2002:a81:5a8a:0:b0:570:6667:1cfa with SMTP id o132-20020a815a8a000000b0057066671cfamr11805884ywb.47.1688398317323;
        Mon, 03 Jul 2023 08:31:57 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:d470:9cde:7b93:c2dc])
        by smtp.gmail.com with ESMTPSA id v19-20020a814813000000b0054fba955474sm5138295ywa.17.2023.07.03.08.31.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jul 2023 08:31:56 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] python3-tpm2-pytss: add python tss2 support
Date: Mon,  3 Jul 2023 11:31:55 -0400
Message-Id: <20230703153156.2256326-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 15:32:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60502

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-pytss/python3-tpm2-pytss_2.1.0.bb        | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-pytss/python3-tpm2-pytss_2.1.0.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-pytss/python3-tpm2-pytss_2.1.0.bb b/meta-tpm/recipes-tpm2/tpm2-pytss/python3-tpm2-pytss_2.1.0.bb
new file mode 100644
index 0000000..c98d4ab
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-pytss/python3-tpm2-pytss_2.1.0.bb
@@ -0,0 +1,15 @@
+DESCRIPTION = "TPM2 TSS Python bindings for Enhanced System API (ESYS), Feature API (FAPI), Marshaling (MU), TCTI Loader (TCTILdr), TCTIs, policy, and RC Decoding (rcdecode) libraries"
+HOMEPAGE = "https://github.com/tpm2-software/tpm2-pytss"
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
+
+SRC_URI[sha256sum] = "5b5b4b1456fdc1aeef3d2c3970beaa078c8f7f2648c97a69bcf60c5a2f95c897"
+
+PYPI_PACKAGE = "tpm2-pytss"
+
+DEPENDS = "python3-pkgconfig-native python3-pycparser-native python3-asn1crypto-native"
+DEPENDS:append = " python3-cryptography-native tpm2-tss" 
+
+inherit autotools pkgconfig pypi setuptools3_legacy
+
+RDEPENDS:${PN} = "libtss2"
-- 
2.34.1



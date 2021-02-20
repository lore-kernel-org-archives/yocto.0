Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.5798.1613823532857411796
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 04:18:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=ABZGV4KX;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BF6F838C11E1
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 12:18:52 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id v6so40162523ljh.9
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 04:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LIB/KFat2slcmUz/BnFDwuAB6S+FBqbJflvX16VXrYA=;
        b=ABZGV4KXl0V0z0uvo4tw8eClb9kCoc3EZimgXjxjHITam2bBgW0Hi/xx7eTxgRjI7o
         KYLj4YkfW4obg4DHhBimHsn+psa9LtbgFsbWOu9yro4pwc5WLdwpDOESK+nHElpMU2sl
         DpjLnsrUKUc3s0SDFTUwcfM8oaiCvBSW2r7h0uz1olbH5bMTD34pYJCgZEM8zlamBEDt
         sTkmi3gP1Xk7HTOZLWuR1Du7EIFFh3bArSGhPpE39gZ0wuh/560xfwZ5qJ63/zhDiMBi
         8dtHn4SUUZMyZ1HXeDpj4Jri98tdzIZuetNzhGFbr01pkRm27j3k1GUMEmk+fq1TmiHV
         0FUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LIB/KFat2slcmUz/BnFDwuAB6S+FBqbJflvX16VXrYA=;
        b=QDuzImRKySW40ZyZlkpBd1cmqwvtFVUU3+D5GJCUE0lQLpyG78b9gb0k8BGgTLPs/z
         GEBwtEIIah84VRc9e01Cjim7gcs3Fnq6OqWfSmblfJrk9aURJ+aO7cKQTw6oNt6nYvO6
         Sch3zweO1gtQuzo5JcAhEajESZV5YaL64+IYv80rml/xgRagc+q7wuUBvBoncBTMzk8E
         FfnOBrxQbkrDmI0F6wpONNsZUDutujAngETKFN7m3lLqDzsB2Yc8Om+U7PEdqD2zsEP7
         tChKmWiPn/lapGCs2tR5KikR9RdzzdewBbCq3C3ys+UO7hMjwmPzfa53rNo3aEVqaGeX
         GILQ==
X-Gm-Message-State: AOAM533nmOH441XtQ6V+4MYH+OfALZ9MIstYb4dyNaeL/dEaXL01rQlD
	EkPAHqaEo4x4ei6LQPKB5T8H4wlaUuO7dw==
X-Google-Smtp-Source: ABdhPJxJ6NfKmLX07CIqHwq4ZkzTI23rD6ZY0vJz/qiwfBvoHJU9eAtbbIYOTNtYfwtM4GZXOPXX6Q==
X-Received: by 2002:a2e:b5b0:: with SMTP id f16mr6783884ljn.497.1613823531176;
        Sat, 20 Feb 2021 04:18:51 -0800 (PST)
Received: from peterliu-Precision-7530.lan (c-3ffb72d5.022-417-73746f13.bbcust.telenor.se. [213.114.251.63])
        by smtp.gmail.com with ESMTPSA id b1sm1234163lfq.187.2021.02.20.04.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 04:18:50 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	dbaryshkov@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH V2 7/8] initramfs-framework-ima: let ima_enabled return 0
Date: Sat, 20 Feb 2021 13:18:21 +0100
Message-Id: <20210220121822.1873572-8-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210220121822.1873572-1-liu.ming50@gmail.com>
References: <20210220121822.1873572-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Otherwise, ima script would not run as intended.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 .../recipes-core/initrdscripts/initramfs-framework-ima/ima       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framewor=
k-ima/ima b/meta-integrity/recipes-core/initrdscripts/initramfs-framework=
-ima/ima
index 16ed53f..cff26a3 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/i=
ma
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/i=
ma
@@ -6,6 +6,7 @@ ima_enabled() {
     if [ "$bootparam_no_ima" =3D "true" ]; then
         return 1
     fi
+    return 0
 }
=20
 ima_run() {
--=20
2.29.0


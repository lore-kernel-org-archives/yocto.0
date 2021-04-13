Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.410.1618328627159891132
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 08:43:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=d0l2uZoy;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 92F1038C06C0
	for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 15:43:46 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id s7so16810390wru.6
        for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 08:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0hFVpVYev3klFFPPHgH7Eq7YcdlnDcdKjetii0pqij4=;
        b=d0l2uZoyycFuSz/v3tC5Ib7ryICfuxNAw+qdYdQv0b9UhCU4keQZ9ZXV9wmtI1A5ye
         vbfbcnEaknm9KHMNbkFKnL9Th2Es6zwHFlOnzez0t5Uisowtil7BJ5msBXWCN2WGbGc4
         vGbK66J6SZIbXdAYSwRl0qclRZlX1vfDhghUXTsLal8E05yxGCUyE69XFruM6qYdLYcq
         MTclPcsavwbR8LM8tuSrd2X7ZnrIWTX1rhSh4l0si2SATFtMl7V1j/Qtd5CXppIvt3jU
         I75TVHZlu0DiIhMhs9f2dzf9Rcq3PjaN13YdHKBjpJnw08GhEbVheNnNY5B85diCae3S
         NoGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0hFVpVYev3klFFPPHgH7Eq7YcdlnDcdKjetii0pqij4=;
        b=p2/YvlLaz7/kdSwsXJec4e2doxKARzU/Xo0raRmRI229f6F2sVqQKM9keUpHTro/MD
         J2MLbPXxg8V2mhWeLjaSbfX2ySmDh8BUHvN3KbiGHENuD3NEMHfDN/dX30cJ7SuLZKKY
         5FLq0odUvnNjER4LDtYhrjnsA7agPkINdIETgdewkUL1WsElf9Y9ohrmEhgXiS9IyRGC
         +7p1Kg3kTT/kjremXBwI1GqAMa3H4b9H76HeZNMvaeCIZQKKsUG0S0ayH+NWGBJI7eN7
         XdG3kkyQAxXbwIN6vRuDUlCZpsCnero+LSG07JlaTcUC68ELJfp+h2KxZE/nkZU+ECYS
         nkkg==
X-Gm-Message-State: AOAM533OLkzVmjSEja+UCEq1mAUnopWhSXXb3Pa9kQQIF4mL8CyebSWN
	rom1CzLm72WWz9bSJq1EpxJUwEHod21V2Q==
X-Google-Smtp-Source: ABdhPJyslkQF6Gb6cn8h2Lg/JkuTamVoxrPbqqPzbCiX3/AMNe4ZRjHh1hnmH15GxAJo+WdcbtwPKg==
X-Received: by 2002:adf:f844:: with SMTP id d4mr19641446wrq.203.1618328625161;
        Tue, 13 Apr 2021 08:43:45 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id f25sm4495361wrd.43.2021.04.13.08.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:43:44 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH 2/6] truster-firmware-a: include optee support when requested by DISTRO_FEATURE
Date: Tue, 13 Apr 2021 17:43:12 +0200
Message-Id: <20210413154316.3666881-3-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210413154316.3666881-1-yann@blade-group.com>
References: <20210413154316.3666881-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This instructs TF-A to:

 - load OP-TEE OS as BL32, but still relies on the actual image to be
   provided through other means, eg. in u-boot.itb
 - run opteed as Secure Payload Dispatcher

This is configured automatically when DISTRO_FEATURE includes "optee".

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 .../trusted-firmware-a_%.bbappend             | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend=
 b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 1942c17..5b04311 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -9,3 +9,22 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
 SRC_URI +=3D "\
     file://serial-console-baudrate.patch \
 "
+
+# OP-TEE, dependent on "optee" DISTRO_FEATURES
+
+OPTEE_DEPENDS ?=3D "optee-os:do_deploy"
+OPTEE_OEMAKE ?=3D " \
+    BL32=3D${STAGING_DIR_TARGET}${nonarch_base_libdir}/firmware/tee-head=
er_v2.bin \
+    BL32_EXTRA1=3D${STAGING_DIR_TARGET}${nonarch_base_libdir}/firmware/t=
ee-pager_v2.bin \
+    BL32_EXTRA2=3D${STAGING_DIR_TARGET}${nonarch_base_libdir}/firmware/t=
ee-pageable_v2.bin \
+    "
+
+do_compile[depends] .=3D " \
+ ${@bb.utils.contains('DISTRO_FEATURES', 'optee', ' ${OPTEE_DEPENDS}', '=
', d)} \
+"
+
+EXTRA_OEMAKE_append =3D " \
+ ${@bb.utils.contains('DISTRO_FEATURES', 'optee', ' ${OPTEE_OEMAKE}', ''=
, d)} \
+"
+
+TFA_SPD ?=3D "${@bb.utils.contains('DISTRO_FEATURES', 'optee', 'opteed',=
 '', d)}"
--=20
2.30.2


Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.411.1618328627456731162
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 08:43:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=oRQk8hJc;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4FCA138C06E3
	for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 15:43:47 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id 12so16950893wrz.7
        for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 08:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=THf4SI7/NQlMI93sfi3vLWu+pvwW+riVvXEFO8ktzrE=;
        b=oRQk8hJcN8cHcREK9n26/XsnSv1lUh2h8xvddJFnKp98m4Zz5xS1R3Ej94AsGNxQoZ
         oeGufMAq6+X8JC/APzd+Zm4SmVRlxYaBvgzcDsZAaf/3h/SdhNPUAOLVbziNKIhGNyMK
         PrFSJl6bU/4FOkjqChwQ1ChnrfGBNgPKzYY7sBkbQkgk5+MEXIEaDG6TYhrr2qdRHvga
         N8s6xURczj4jjeFcpJK9EH4Fe1YpFtKiOJFnyAUCuS0Qdh3Y/R/mFzUA+f7NoYnj9lzR
         TjBaZhvk2pzViyUzcFEGYiKo2eWnicBE3Igpm56TXnMvnYbfdenbiIt/CHOw+qniSsFK
         BVvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=THf4SI7/NQlMI93sfi3vLWu+pvwW+riVvXEFO8ktzrE=;
        b=MFrW+nBgcumMlqazuyqTXf15bYftI+pahLkW21GZ3f4dxx6bU/WO3ymRx8E1v/akcd
         tZuvuKGu6wWKDZmGoljD68fV2eBzuxsUpZKfVKE6GiScTb0Bu5jI0jTQlqnULcZKsCCA
         plKzB1ZXwK7QF3dHPoOfdNHxa7x62/j5nN9Z5wu0235bSCmsz68TMPnMl5rOEYI5l2QA
         PjxKKIish00S1a6g2UE4QI3H+FAC7nmeB4KOhrfaig/oDVGHcdJCZT1fC2j+UE4zjtpz
         ZWMeZdnu6H49QPuXlvean1dg2qkh3iXiKCwPK2DlPWPU/P/xf6uHnHlnN5EIpvOddOEX
         w//w==
X-Gm-Message-State: AOAM5329mhq6F5Vv7xrinMi44MY4n1WDdmCyRRQctl/434GkwNatqImF
	asclIeO4J7yJf/YdLsop7+gz7CtDBjRYTw==
X-Google-Smtp-Source: ABdhPJxLUONOprOCg1vEOQTEyNHl4N0Vn/pRWHStk94tAsgdadYfRcIJ0W+jS2lJtqb/EjeB5rMcHA==
X-Received: by 2002:adf:e648:: with SMTP id b8mr4370034wrn.386.1618328625859;
        Tue, 13 Apr 2021 08:43:45 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id f25sm4495361wrd.43.2021.04.13.08.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:43:45 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH 3/6] u-boot: include optee-os as BL32 when requested by DISTRO_FEATURE
Date: Tue, 13 Apr 2021 17:43:13 +0200
Message-Id: <20210413154316.3666881-4-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210413154316.3666881-1-yann@blade-group.com>
References: <20210413154316.3666881-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This causes OP-TEE to get included into the u-boot.itb fitImage so u-boot
can load it for the trusted-firmware-a BL31 to run it.

This is configured automatically when DISTRO_FEATURE includes "optee".

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-b=
oot%.bbappend
index 95c019d..c8e150b 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -5,6 +5,8 @@ do_compile_append_rock2-square () {
 	fi
 }
=20
+# TF-A, when supported
+
 ATF_DEPENDS ??=3D ""
=20
 EXTRA_OEMAKE_append_rk3399 =3D " BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk3399.=
elf"
@@ -14,3 +16,15 @@ ATF_DEPENDS_rk3328 =3D " virtual/trusted-firmware-a:do=
_deploy"
=20
 do_compile[depends] .=3D "${ATF_DEPENDS}"
=20
+# OP-TEE, dependent on "optee" DISTRO_FEATURES
+
+OPTEE_DEPENDS ?=3D "optee-os:do_deploy"
+OPTEE_OEMAKE ?=3D " TEE=3D${DEPLOY_DIR_IMAGE}/optee/tee.elf"
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
--=20
2.30.2


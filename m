Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.14059.1618411040511148630
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 07:37:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=BEizYIyO;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id ECA5138C06A9
	for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 14:37:19 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id q123-20020a1c43810000b029012c7d852459so2685189wma.0
        for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 07:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DxzlG+G2TxRwWFPE4l8urnoXNuBV94/oV4om6KipfY8=;
        b=BEizYIyOs+DYJ6olANtczh4mcyHRji6jMs9aOlNNGE05RjVO9ghnVtUrtdch2KtyCQ
         7cJXIQVR7vVOGaCj5dTIJ6kBLZ0ps5lakU+WTI+IB2SxbJshc14ax9urr88YOxzDZjzX
         95AA9DnUOcjC1HvIoDhjMgIw+0W4koKqrY951O0pe5i9FJqewreaiwPk9xa8mSLeXNz5
         dJtGGThngPl5v6FRjmVRflkL8d07Ig+XFdHn2h5RDpcKKHgbz7jxUnomFGb7UWflG+fn
         ZxVN8n0JOqNZXxQbVnHrpXJJWBMc90r73Ud7nKvwUSWCW4JLHUiUtQjDlP0L4wZr1mOK
         1N3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DxzlG+G2TxRwWFPE4l8urnoXNuBV94/oV4om6KipfY8=;
        b=FSJPpA+9yn5Tfw/vpKEj3JvevOSMSg3+SvZWM2vG2PuEdd0kMmlAgnpOTPbap9xHBt
         QXEvddUrsnwcGUxjwJKCOHutiXgKunrFsbBjpw4iY+NGXvZkiRwpZD3txsY3whv6ZRUk
         f9OtsgCSotOm15WlVpE/poBsA2zzjfbc7DrrJAG7Ib5xslc+QEH7Y/cazY6EbwkGNn9D
         lwYbtV3RWXf9fZkXKg49s8IRez3tu3bILlURG+UftKoc12yTN3IaxwCZ+dL19WwU/lON
         3Ba/S565OtpceSMpi0OC/K0VNRzflN/GJ89qRiBCNTteDKxp41JdN2ayLvEXPpUhTQoq
         Jxjg==
X-Gm-Message-State: AOAM531tAQ81o+TeZVVyxIZ5MtukeCpOOgf7IEJdNbjplwIbeT5Qqciq
	PWkGtNfCA5ONIdzjdbLDkenbzvwleB9Pqg==
X-Google-Smtp-Source: ABdhPJx/27YHcrFluCCsG7/bxMSkOAYEarqFk8Wlz1QKInyIcUc4VljD1b+7z6vtR1VcisqXxeVLlw==
X-Received: by 2002:a05:600c:4f14:: with SMTP id l20mr3335245wmq.71.1618411038686;
        Wed, 14 Apr 2021 07:37:18 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id u8sm24410120wrr.42.2021.04.14.07.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 07:37:18 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 1/6] optee: condition for "optee" DISTRO_FEATURE
Date: Wed, 14 Apr 2021 16:36:33 +0200
Message-Id: <20210414143638.4139270-2-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210414143638.4139270-1-yann@blade-group.com>
References: <20210414143638.4139270-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This effectively sets up a single switch to activate OP-TEE support.
Disabling optee-* recipes when the feature is not set is not the
primary goal, though it can occasionally be handy to catch
dependencies pulling them without using the new DISTRO_FEATURE, which
provides a safeguard to ensure downstream recipes in need of upgrade
will fail early.

The main value for this flag is for dependent recipes to know when to
activate the OP-TEE support, rather than having to control each of
them separately:

- u-boot
- trusted-firmware-a
- kernel

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 recipes-security/optee/optee%.bbappend | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 recipes-security/optee/optee%.bbappend

diff --git a/recipes-security/optee/optee%.bbappend b/recipes-security/op=
tee/optee%.bbappend
new file mode 100644
index 0000000..2a8722a
--- /dev/null
+++ b/recipes-security/optee/optee%.bbappend
@@ -0,0 +1,2 @@
+inherit features_check
+REQUIRED_DISTRO_FEATURES =3D "optee"
--=20
2.30.2


Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.412.1618328627843549763
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 08:43:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=h+WHnCpt;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AD20738C0868
	for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 15:43:47 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id 12so16950843wrz.7
        for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 08:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DxzlG+G2TxRwWFPE4l8urnoXNuBV94/oV4om6KipfY8=;
        b=h+WHnCpti6a+cOKsVvTjvz0tV57fbVB0yVAgYTMiVJriYzdYshR77oQYB/TdXr8aep
         yID+vWlhIodGquHs7fostV0SyE1WZPUuSoKMv8h6+HxW6HhNi0rrZFVE0F8/vEdZtSiM
         T8BKkoGH4bDR8t3tiX8y2NNFbyMBNkoh7JGVS4j/44K8UJ6wZN/Zrq0OSOx05mM7cGny
         hAlu1QZ6zgGpmSCoWiaOx7U5HnsKjv9NgqWsIDOdxLeFwtD220326X3BCG0S5iZQWLkD
         VFR34PJ17NV9eene+dyvXJHsoUXEKYBdAbgVig+4jpcqkpXJZDODn8QY42ri4uB9iWL9
         sbJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DxzlG+G2TxRwWFPE4l8urnoXNuBV94/oV4om6KipfY8=;
        b=csWg2TYBKm4QPDOBp75lFB/9Bsby6bOrfQfLe3opc6WERrk7tH1FTO7dzRJmWQou8V
         CTe8i/AW2rumtiBpNzSBgteFflmdgy+bD+2Y42UZ4Z8oGMiB+Ml4QWFBqYZ9339zbEAD
         BupqVXCES5A8sqENr0exIFsf0HXVdmfzAoEEkxhr2Bxuv7U3gQ9YrvlW2gYo2bDmHo0+
         wYTOeafb0Eo1GdJEMAPZPelHJzX8e60kd6qMKgaSHa6yiaEn2mSV1PAtupnFek4W2V3r
         2xaGAOShdbQ6KV+7jcDOVDeb/akB1aF14cE6od5OkhbobgJEPB17HWZ8D/tLkWvUk8I8
         p4mg==
X-Gm-Message-State: AOAM533wv0DVyTAGCK8VUX0q87dGFqoCTsOtCz1YckHJqvXMjkeHzc7l
	QuJ/eSnohhU5/VLiLseT0/GRmpiLN0N2Qw==
X-Google-Smtp-Source: ABdhPJy3o309BRsmzYsPStClL6Outtwz00v/QCfoHrL0U6TmGQZ/gLkMNC6NtuP9ZRWZvkE/i6Zb7g==
X-Received: by 2002:a5d:4682:: with SMTP id u2mr26089172wrq.167.1618328624480;
        Tue, 13 Apr 2021 08:43:44 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id f25sm4495361wrd.43.2021.04.13.08.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:43:43 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH 1/6] optee: condition for "optee" DISTRO_FEATURE
Date: Tue, 13 Apr 2021 17:43:11 +0200
Message-Id: <20210413154316.3666881-2-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210413154316.3666881-1-yann@blade-group.com>
References: <20210413154316.3666881-1-yann@blade-group.com>
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


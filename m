Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0399C433EF
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 00:27:02 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web12.14854.1646008021847165378
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 16:27:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=c+gQ8CYt;
 spf=pass (domain: gmail.com, ip: 209.85.216.43,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id
 v5-20020a17090ac90500b001bc40b548f9so13329211pjt.0
        for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 16:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3aB3QEVMdWO80zNvfyE2az3je3cmuSCB+r+5GWope0Y=;
        b=c+gQ8CYtY2VNgM3rONPGC2rN6yNek443U8pjkRF9039xre7mJrZqW8668kZZM/pPb4
         a7/T2Cuk59D4kBedfqFAmQV/Ss0enpuzpBtXsrKSDUt4BJqAp/A8Np+X5Azftk7EotDK
         FVhKFnJsEb1WZXSgFPfv/t6rUROtgxLe5HcfSAy5Voy76+3BuzcW4zWHKYn+ZTtssfhj
         RjB01puk92vglMwf3fKe7XTBlFymbWnfTMP7eM/SBIwPZRu1trueI58yqUI//EUi25wC
         kv63IpsKGyDtjOXO8NzPnQwSxF39dQqwvF4r0Yz8gk6PSYUy13jUh7j4o6fjnpbKAVnM
         eEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3aB3QEVMdWO80zNvfyE2az3je3cmuSCB+r+5GWope0Y=;
        b=2DNAknmTEjFkqiTpZ2+nnEgYCXiTzX83mArnjBzr8/2+BwGrlHnQNqkhzfBtAqyMG9
         nKnW5DXi6QDr3b+BCJAZdEvCkxHYS/o8YBWNEo+p6Avx+fOcBE8ro/FSveMo/nGUJwzz
         P8QkMQJej0QGZ1zS733Q55I5tBqBDcpI4aMfsbWNzR616B3TNpqk4HEsavTb5w87pA2E
         c1SaPvSn7xS7PQo/k0LaeLq/0XZCODAxabNllR8cccVPsu0F8Cmph9eUi58K4BSqs25U
         z+bnqrrz0I0cyEDcw78FfABSTwvqHCsb6JH6AkZscu/hQhZK3p+K6P5zJDFgCc/Rt8cg
         958A==
X-Gm-Message-State: AOAM531kp6c1RlSb//2D8CN3Hz7vq96yjkT1E+rQaaeJPsPsOhB/MXJC
	W5i5bQwzeDUzAi4nJgazLVaf7/zafHo=
X-Google-Smtp-Source: 
 ABdhPJwZg62jyFpyuMQUdmbIznHb6FHaoxp+S6frKDCfrgHeTjoXGyHIQokTZZyQyvndXUs9U7KYBA==
X-Received: by 2002:a17:90a:8b94:b0:1bc:c0c1:3c26 with SMTP id
 z20-20020a17090a8b9400b001bcc0c13c26mr13674408pjn.165.1646008021078;
        Sun, 27 Feb 2022 16:27:01 -0800 (PST)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:c5c4:1c30:ffdf:c956])
        by smtp.gmail.com with ESMTPSA id
 124-20020a620582000000b004dee0e77128sm10112880pff.166.2022.02.27.16.27.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Feb 2022 16:27:00 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] tpm2-tss: fix user perms
Date: Sun, 27 Feb 2022 16:26:59 -0800
Message-Id: <20220228002659.48976-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 00:27:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56303

[Yocto #14724]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.1.0.bb | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.1.0.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.1.0.bb
index e0f2d09..ddcfb58 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.1.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.1.0.bb
@@ -12,7 +12,7 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
 
 SRC_URI[sha256sum] = "8900a6603f74310b749b65f23c3461cde6e2a23a5f61058b21004c25f9cf19e8"
 
-inherit autotools pkgconfig systemd extrausers
+inherit autotools pkgconfig systemd useradd
 
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[oxygen] = ",--disable-doxygen-doc, "
@@ -22,10 +22,9 @@ EXTRA_OECONF += "--enable-static --with-udevrulesdir=${nonarch_base_libdir}/udev
 EXTRA_OECONF += "--runstatedir=/run"
 EXTRA_OECONF:remove = " --disable-static"
 
-EXTRA_USERS_PARAMS = "\
-	useradd -p '' tss; \
-	groupadd tss; \
-	"
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM:${PN} = "--system tss"
+USERADD_PARAM:${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
 
 do_install:append() {
     # Remove /run as it is created on startup
-- 
2.25.1



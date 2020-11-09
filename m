Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.8696.1604911099417513365
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 00:38:19 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=rtClmnG2;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 89E8038C0883
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2020 00:38:18 -0800 (PST)
Received: by mail-ej1-f66.google.com with SMTP id gn41so11010093ejc.4
        for <yocto@yoctoproject.org>; Mon, 09 Nov 2020 00:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PPokBdxj6k3G8WtxT4F1H59BNtxFykfNWhocANwiaRc=;
        b=rtClmnG2T6sTNr5Z6Cp7dR1ZKZR0AbJvnd7YmCt9ROIkeJ7wAJ3Pj6SsaaaY80RYIK
         MuMilEHRGlA3iDYhOPvAAvEh2lsV0MkVV7fMAyUKgPkDpeC5ZWmDQOtZGx3ZNb9daM+M
         Vvbg7BHw87vGfcnBhPU8sEI4NXP/Buax6alNb66uOwZ/aeop/s1ITvnH3fktDHKyJHNl
         k++JeQia6WZi6iamxmqHicW3Fc1LScrEGmyuPCOorlH/rDrmEkg+gDSUQx6vHcJROqt/
         GoE8NOeWmExx5raoePg6C/eGobuhow9iF/nA+nJz3XGscqVVcLAaMQOmR6X3bDsRlnrI
         G1nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PPokBdxj6k3G8WtxT4F1H59BNtxFykfNWhocANwiaRc=;
        b=PwTie8qfgGFURMdAGYbcubv/pp7aVmUuyscJ1lxFM22WQ/cGBgw/pk0IOSOs7EUM+o
         +PtEPoWbktiXXXI+Vfsolxbvx2PbfTaR5YhmQR0nrE44/S/Zag3FRio7vRsz/H0cOCdd
         Ss6IuTqI9VgdAi8CWx35sI5goT6AdOyMIc2w0ozORazE0Nk7r0931CsssT0nsyfP6ger
         jiiZgROtFV4o3wcB3XrxDzYX9ZB7iE9okKsWbZ/rfTx2rhxj5qGRYayCSIrKUgUdQr3T
         iA0i7pKRn0+qs9EezUAL1Z2Yb3IQktgBZrnrKuHaF7aN3hWJb0Fbmt3xBxVn3NvpJxI6
         Ru0A==
X-Gm-Message-State: AOAM530VCgysoPd1v7aSKPWcBVDx5F0NcTIDCF+YO0yHd92BEVI/6WjI
	T8aUX6rZY2srqsf909NVQhhIwb/fzO6sew==
X-Google-Smtp-Source: ABdhPJy/+xeEr86L6XK92NF8EnIfvwJAZ+yqcqcb6NeQ5qYcCQVOQCM82BZ+G3ED/IXbW/QJtCnBLA==
X-Received: by 2002:a17:906:400c:: with SMTP id v12mr14740138ejj.387.1604911096647;
        Mon, 09 Nov 2020 00:38:16 -0800 (PST)
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id s26sm3389116edy.1.2020.11.09.00.38.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 00:38:16 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [yocto-autobuilder2][RFC PATCH] config.py: add "only-x11" target to builds
Date: Mon,  9 Nov 2020 09:38:09 +0100
Message-Id: <20201109083809.19307-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

This target builds and tests core-image-sato and associated SDKs,
as otherwise the AB targets have been moved to core-image-weston.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 035a2f8..36176f8 100644
--- a/config.py
+++ b/config.py
@@ -64,7 +64,7 @@ trigger_builders_wait_shared =3D [
     "pkgman-rpm-non-rpm", "pkgman-deb-non-deb",
     "build-appliance", "buildtools",
     "non-gpl3", "wic",
-    "poky-tiny", "musl-qemux86", "musl-qemux86-64", "no-x11",
+    "poky-tiny", "musl-qemux86", "musl-qemux86-64", "no-x11", "only-x11"=
,
     "qa-extras", "qa-extras2",
     "check-layer", "meta-mingw",
     "qemuarm64-armhost"
--=20
2.29.1


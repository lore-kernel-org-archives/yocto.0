Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD91EC83F0A
	for <webhook@archiver.kernel.org>; Sun,  6 Jul 2025 21:56:33 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web11.46023.1751838222628517066
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jul 2025 14:43:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Bv2LkGVG;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: schonm@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e8b3cc12dceso850996276.1
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 14:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751838222; x=1752443022; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a93/QpiIiRz1bw4PbaA5NZrSg4PkKw3WJHj0OhEe6cY=;
        b=Bv2LkGVGuoO2qmHlFVHJLfv5Za/OXlRXC127+UfyjAJnCboYI+mMFzH41HHKoRftLf
         AWZWmBoZVDyYhmZSy/VcxeCnNgPgNsOoo7XPHXE27tqLY0154Jg0vlHTMImVDoHfEBpp
         SEQd4jpPogwFgSZnGK5WAuL1+/oNWd4EEkybKpt7K7QqyBgkQQMbZpwyPGLyKeF1B2MB
         PLWaCIX2achLPDVR4S0xpfy30wf12yMmviWjN3hGwtPZOPwTDzmYmj+sRAHWGYH7IDMM
         ri5qXr7pj5uJQ7aqkheqsBPORlvQ4mtvBhYcZFOWt5VosVq0bshYeq+nR+cFRLFbN9ee
         bWhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751838222; x=1752443022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a93/QpiIiRz1bw4PbaA5NZrSg4PkKw3WJHj0OhEe6cY=;
        b=wIE7s7NHEYEFl4kX3dm6/BSOOAaKfBprADgjTrnI693T0QTb+dTfB6hG380fasXZYj
         6xMI5H534tt+pooEiVkxdRjyvxJYieowP8Ze2dQu5hEmhdTPnF8njhXsyJCjTVmLmsiZ
         vCgJ89YHT1CXzH4aC8mn4vfJZt7Of9J630UJmjyqiSp7WfYYFKEXMdVqogf8pH5NFUpi
         OhdBx6wN36p8mGfyxE8Dc/Pd1+BFw57qwxKLprsuOSMNeV2QzD/XpC7vAKA4vLIvUClZ
         1kTK7smu+UTuxPaUWbiiSIed61tq3emEHmwC8Dp1bIvgHL1mt/tfKRDK6W8dmNMVDzhL
         q4OQ==
X-Gm-Message-State: AOJu0YyhNN0zuasnY/ehCbSzMK/rqyyjwSN4D//DqeahEPNaugsPnFCC
	w43QtPf6Ff7nOy2G1MYQ6aigD/R0iC/OUl8esxCKrT48XvZiVCDQrW6TFVkKCUKJ
X-Gm-Gg: ASbGncvY1hQaikMDHfaj2vmKMRnWmR/6hH20ptpdqYHgKLoveUntx/x/0z+tgf7oZRn
	vabVquy+4c+Eylr8XlbLQdV+/U2Q7QjWYKRp3e743qqQ+YiVwiliXHfEm50fIx04y4SLVW03JDr
	0UkvNIZIyr4rhUT+B6MyhdxVsDDRXezztMEDtZAAJALuDLf2qf4B+/dK+5WmTALbLQUQnZgyX7X
	XzAWlun4jizbo4GYW8EJgLcPR/HmuKwcpMbh+hZvB6Iyix34O1sLYmGF6f3HI1P1aGQ35aY+5fX
	TlCFVwAr6J7trXfzGchTtWeBTJUW/3rMd9HgaOAKD038hpCv7YCJijrHb7zUxn/9AuED9GJfjHq
	z8evGgrwHbLwjizjc/Qdl
X-Google-Smtp-Source: AGHT+IH9ySNlYUgNqkQZtnWv2FCZv3PNFADaE38Jm6usjMM5aUaMOPhQFFz2pYfN9CVLBY1Mj28F6Q==
X-Received: by 2002:a05:6902:1608:b0:e87:b880:7de6 with SMTP id 3f1490d57ef6-e89a0b0f04emr12116307276.14.1751838221185;
        Sun, 06 Jul 2025 14:43:41 -0700 (PDT)
Received: from localhost.localdomain (71-208-4-221.ftmy.qwest.net. [71.208.4.221])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e899c340aa3sm2237479276.21.2025.07.06.14.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 14:43:40 -0700 (PDT)
From: "J. S." <schonm@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Jason Schonberg <schonm@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/3] Fix WORKDIR / UNPACKDIR issues in a few files the find commands missed.
Date: Sun,  6 Jul 2025 17:29:55 -0400
Message-ID: <20250706213926.1813828-5-schonm@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250706213926.1813828-2-schonm@gmail.com>
References: <20250706213926.1813828-2-schonm@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 21:56:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65615

Signed-off-by: Jason Schonberg <schonm@gmail.com>
---
 recipes-bsp/bootfiles/rpi-bootfiles.bb       | 2 +-
 recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/bootfiles/rpi-bootfiles.bb b/recipes-bsp/bootfiles/rpi-bootfiles.bb
index eb31d54..ba119cc 100644
--- a/recipes-bsp/bootfiles/rpi-bootfiles.bb
+++ b/recipes-bsp/bootfiles/rpi-bootfiles.bb
@@ -9,7 +9,7 @@ RPIFW_DATE ?= "20250430"
 SRCREV = "bc7f439c234e19371115e07b57c366df59cc1bc7"
 SHORTREV = "${@d.getVar("SRCREV", False).__str__()[:7]}"
 RPIFW_SRC_URI ?= "https://api.github.com/repos/raspberrypi/firmware/tarball/${SRCREV};downloadfilename=raspberrypi-firmware-${SHORTREV}.tar.gz"
-RPIFW_S ?= "${WORKDIR}/raspberrypi-firmware-${SHORTREV}"
+RPIFW_S ?= "${UNPACKDIR}/raspberrypi-firmware-${SHORTREV}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
 SRC_URI[sha256sum] = "2c027debbef53c86c9ff9197d056d501b95f6ad214ad4db00a8a59b947574eb1"
diff --git a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb b/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
index 81b5d08..f201dc6 100644
--- a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
+++ b/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
@@ -21,8 +21,7 @@ do_compile() {
 
 inherit kernel-arch deploy nopackages
 
-S = "${UNPACKDIR}/sources"
-UNPACKDIR = "${S}"
+S = "${UNPACKDIR}"
 
 do_deploy() {
     install -d ${DEPLOYDIR}
-- 
2.43.0



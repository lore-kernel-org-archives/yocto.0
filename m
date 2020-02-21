Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com [209.85.160.196])
 by mx.groups.io with SMTP id smtpd.web12.62.1582326642759460338
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 15:10:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=crwjkDvw;
 spf=pass (domain: gmail.com, ip: 209.85.160.196, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f196.google.com with SMTP id w47so2529893qtk.4
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 15:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FFFxQRvm4ZrIcvWOwXqAzDtVx+7hTPFLdFCtprqIggE=;
        b=crwjkDvwpgAE2sa4eO6Kpese4MTV5Hh0AJrL1drC9XB14IPhw/AYqLFdo8zSJBbkNb
         PR1yreyjp/rfZaIH4QaTSIpkR7sMwcZdqRG7qLceurc3miqA31QLH5TRWMnxonyZR/fe
         lgP2mUTqiApXguVSQhmQTw3Rq0+QrHPWx+0P0BE7UGxaJR0WVv0euxcAD6B5S45sIZ6n
         4N7GUE2OopW+kSndjODoLq9UzIvQT2qSOJ++ZisfRKl9zeYF0tT83B6MsmdBKvzCyo6g
         lKBYAEGOnK9RtpA4hD2msYTVeumLomL0FUifuBOGI68FDDLxrt07VnKJ8HZkucE6clSr
         aHnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FFFxQRvm4ZrIcvWOwXqAzDtVx+7hTPFLdFCtprqIggE=;
        b=WEAx+D2vFCgTeeiUFBbu3ppppPPG58NrcXg19Y9H1Bm5JfzPDhikAz8HByu44nFCeX
         +RMABn/URgRPoeU8lZ6LoNRXJNVkDo2TTFpbfYv/2zn+D8qF8EyhfaQjlAlQ408NHazK
         JKvjZLMc2S9M2DOqu8foZDdg93zMaGjym1XCTJtyjsZAjgx8BQ61ECuqg19Zf2eQTdZV
         9yvKImdsdSDLmDCLW/AM6kWwJ6z2zS8daMROONqIpAbN8QkP0c6k+cWNJj7L3//iiuJU
         vxAsj4rjfj80WetvC5/O74/rnpIZlvHTWnjTnWIh5V82GXjhLaPUbA++DWi1FYpmovtv
         kQog==
X-Gm-Message-State: APjAAAUie6Tx3LTSdZXzE1XRpY89fwSDT7YGsEXpoDLLtQDHG7OSG6dr
	ixeCLXhq6q9+GprlFuhZzkA=
X-Google-Smtp-Source: APXvYqw7qcSB2Q3vmYobj3dteLTTpVZ5Mc25v0w5QLIEUflarcE+tGDgpHc+vRfgtm3GHPhE1vyEwQ==
X-Received: by 2002:ac8:1ac1:: with SMTP id h1mr34134402qtk.255.1582326641571;
        Fri, 21 Feb 2020 15:10:41 -0800 (PST)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com. [174.113.11.95])
        by smtp.gmail.com with ESMTPSA id f59sm2238506qtb.75.2020.02.21.15.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 15:10:41 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH] yocto-bsps: update to v5.4.20
Date: Fri, 21 Feb 2020 18:10:39 -0500
Message-Id: <20200221231039.32818-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating the SRCREVs for the h/w references to v5.4.20, which includes
the binutils fix for perf.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 49bf9efa98..956c4602aa 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,10 +7,10 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "cdda35317561d2741b396efa623ace0bd2212c16"
-SRCREV_machine_genericx86-64 ?= "cdda35317561d2741b396efa623ace0bd2212c16"
-SRCREV_machine_edgerouter ?= "cdda35317561d2741b396efa623ace0bd2212c16"
-SRCREV_machine_beaglebone-yocto ?= "cdda35317561d2741b396efa623ace0bd2212c16"
+SRCREV_machine_genericx86 ?= "f4d7dbafb103e4f782323017c239c548871c1567"
+SRCREV_machine_genericx86-64 ?= "f4d7dbafb103e4f782323017c239c548871c1567"
+SRCREV_machine_edgerouter ?= "f4d7dbafb103e4f782323017c239c548871c1567"
+SRCREV_machine_beaglebone-yocto ?= "f4d7dbafb103e4f782323017c239c548871c1567"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
2.19.1


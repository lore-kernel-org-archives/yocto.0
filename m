Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.2088.1617125667123950935
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 10:34:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=QliAQ1/+;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AE95C38C06D7
	for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 17:34:26 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id a132-20020a1c668a0000b029010f141fe7c2so10795870wmc.0
        for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 10:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g7AkZKg4BtmlbN0NliB7y0hU6UGBx+yo/DAO7QdNZkI=;
        b=QliAQ1/+yLJDpw2CvWjsO1G1nTseTS947EH1rKl/XPTRtHuSvU+dEtnwA2URX0YpPf
         XqSH7P/hhel0F+gRBuijxLauKz7TKSp6W1cRjiY6sgbjF9c3ZGC6fUA/Ea68gVJEMEQs
         mYqhWLn5X6OEnSx/m8PWqg6jR6IafuLw0k5VEEFpMnlCu4R0Qsg3EqM3mfqT5FHtH8ak
         Y79rz0eETCFSFrCWTadcEJp4RN/1NgX0LtrX0vhJpOROrCs5rJ62xCrQ1Q7NPngWaeAW
         eOoWZ4zF2fqLL/B+WY5WM/ThlGQ+HUmB890sSLzqqwMpvzjWByzP2WIZ7eiVV2w1m8Lb
         hFWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g7AkZKg4BtmlbN0NliB7y0hU6UGBx+yo/DAO7QdNZkI=;
        b=U36qSmemLox2zFgBcQRtxZGSoU0krp4vE7IHDZBuEWkb/9N9cVctQTNLzsgcFHpCgl
         PL3WonNzB04R9oDCPEvq2izJ8uol8MfaB+9X/J3tyG7ECpix8ALpuBlu29uZwKQGhXAn
         QnhtEmXCxo684vHqKZ4l/mD9uaxtgCXRvI063qJZJfTREiI7Jtz8cyMQ10Ib9q8Gq5L0
         JzWwLmBI0/j6g1KsezoffH4xjGC3kmlWuWSNSBjKC6qSW/hYPjRzREyO9tvnk+LqJMlf
         k9apDl3PwGIoZf1hQHAYiyHyRaU7DE0PyPaau0fip7aJhlwqyWgWSfEBZmK0FlZq/P9Z
         56cA==
X-Gm-Message-State: AOAM53071FFSipN+W8F+SnfAub6OR8gC9Aok0ujr+0+6L/XkdfeVcoRT
	mC7HpDVk8ik5pQ9pxGMvd8FIHutLnkW5Iw==
X-Google-Smtp-Source: ABdhPJwjdiyfjyi8UlCQ0IkfozOZmkPSlr6K6DOnC7FTu4cYR/B+1bIgXr/Wlk+NGqEk6v28ECT6NQ==
X-Received: by 2002:a1c:7415:: with SMTP id p21mr5196982wmc.187.1617125665402;
        Tue, 30 Mar 2021 10:34:25 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id d18sm39179049wra.8.2021.03.30.10.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 10:34:25 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH 1/3] linux-yocto: reduce bbappend duplication
Date: Tue, 30 Mar 2021 19:33:59 +0200
Message-Id: <20210330173401.753589-2-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210330173401.753589-1-yann@blade-group.com>
References: <20210330173401.753589-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

---
 ...{linux-yocto-dev.bbappend =3D> linux-yocto%.bbappend} |  0
 recipes-kernel/linux/linux-yocto-rt_%.bbappend         | 10 ----------
 recipes-kernel/linux/linux-yocto-tiny_%.bbappend       | 10 ----------
 recipes-kernel/linux/linux-yocto_%.bbappend            | 10 ----------
 4 files changed, 30 deletions(-)
 rename recipes-kernel/linux/{linux-yocto-dev.bbappend =3D> linux-yocto%.=
bbappend} (100%)
 delete mode 100644 recipes-kernel/linux/linux-yocto-rt_%.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto-tiny_%.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto_%.bbappend

diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kern=
el/linux/linux-yocto%.bbappend
similarity index 100%
rename from recipes-kernel/linux/linux-yocto-dev.bbappend
rename to recipes-kernel/linux/linux-yocto%.bbappend
diff --git a/recipes-kernel/linux/linux-yocto-rt_%.bbappend b/recipes-ker=
nel/linux/linux-yocto-rt_%.bbappend
deleted file mode 100644
index 7702e3f..0000000
--- a/recipes-kernel/linux/linux-yocto-rt_%.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-COMPATIBLE_MACHINE_marsboard-rk3066 =3D "marsboard-rk3066"
-COMPATIBLE_MACHINE_rock2-square =3D "rock2-square"
-COMPATIBLE_MACHINE_radxarock =3D "radxarock"
-COMPATIBLE_MACHINE_firefly-rk3288 =3D "firefly-rk3288"
-COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
-COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
-COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
-COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
-COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
-COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
diff --git a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend b/recipes-k=
ernel/linux/linux-yocto-tiny_%.bbappend
deleted file mode 100644
index 7702e3f..0000000
--- a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-COMPATIBLE_MACHINE_marsboard-rk3066 =3D "marsboard-rk3066"
-COMPATIBLE_MACHINE_rock2-square =3D "rock2-square"
-COMPATIBLE_MACHINE_radxarock =3D "radxarock"
-COMPATIBLE_MACHINE_firefly-rk3288 =3D "firefly-rk3288"
-COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
-COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
-COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
-COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
-COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
-COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel=
/linux/linux-yocto_%.bbappend
deleted file mode 100644
index 7702e3f..0000000
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-COMPATIBLE_MACHINE_marsboard-rk3066 =3D "marsboard-rk3066"
-COMPATIBLE_MACHINE_rock2-square =3D "rock2-square"
-COMPATIBLE_MACHINE_radxarock =3D "radxarock"
-COMPATIBLE_MACHINE_firefly-rk3288 =3D "firefly-rk3288"
-COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
-COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
-COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
-COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
-COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
-COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
--=20
2.30.2


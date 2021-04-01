Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5044.1617267158058754917
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Apr 2021 01:52:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=OMTnVK64;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DAA8D38C091E
	for <yocto@yoctoproject.org>; Thu,  1 Apr 2021 08:52:36 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id o16so1030958wrn.0
        for <yocto@yoctoproject.org>; Thu, 01 Apr 2021 01:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EXRRpuibJpiVBJdt5Ly7w9uEggq2xjVK6wk5JAQHgt8=;
        b=OMTnVK64S0O2jrsqNXzFZGi/ehYDyd2wivGgTpolBJKwqesoq9ZRM6oEzORi8X6xct
         fGBTEzU6A/6ro111ec99H4aRHTaW8BjeU67sWteZrxoRobhBehnZw6hchDeWp9mr1jym
         QZJPRRUaiHpGh4vJ98ogFDraoufoNoFw7m+/1oh5BCT6bqL0DU4vtRh6NHHdn5A3LMvZ
         W0rn7yYAvDeK2vCdi6kt/pBq8z1FKoGTGqmfSFjympB9TXt4qR0vZjFYH9qHab01OTfQ
         MqPSTUUs3titTqcc/Wk0YfsdHIAAAPOlkI4fP9ho0QIiDXNQOPhziTfOQP629dHHSLTj
         uEyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EXRRpuibJpiVBJdt5Ly7w9uEggq2xjVK6wk5JAQHgt8=;
        b=E/iNQtonjrIQwpmp9jofL2xI+pT571uwm0dR+OHvZmtIFnZz/ras4VKRyyhCxFcjY4
         dDYHoSONmJAcU88GSWmWimC43VsFSZ3KL6DT8Ax502cqAUEHXZLcWGOEOhqoLmxNZBVo
         w0smrDLwbP4BfUt0sa8aTVpqlgNmc0zvWLg0NqDJxmYg2yyY1rMMp9JpafK4kfKBlmlC
         tQXU+gfVkUL4gKnTSpbMDfCMY2IXhecw+C0Y+sHJTCPB7KX/oojdLLdSDMjbPyKOC3Ce
         j4zh4eAJkf+dyyzZVG/WCT3D+kK0DfhyfbwNHWxtbnijFsCILe5X5HuRYP9GcC6HXT2Z
         OVpA==
X-Gm-Message-State: AOAM532J5gZMfugJhMD1zuEostOJjlicy9zjdjbrxQzaPvLrWUCHdO64
	TdTcfGlMk/El7cqoUFYcs/mPYWBn+ciaHA==
X-Google-Smtp-Source: ABdhPJzoYVFfoJwXjEMXYzot714CZvCH9t2RRqOM12ska49eqDSuo2t7J0liAmerk+a6Dz1tGGE4FA==
X-Received: by 2002:a5d:628c:: with SMTP id k12mr8212581wru.316.1617267155580;
        Thu, 01 Apr 2021 01:52:35 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id 9sm7143467wmf.13.2021.04.01.01.52.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 01:52:35 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 1/4] linux-yocto: reduce bbappend duplication
Date: Thu,  1 Apr 2021 10:52:10 +0200
Message-Id: <20210401085213.1209080-2-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210401085213.1209080-1-yann@blade-group.com>
References: <20210401085213.1209080-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

Signed-off-by: Yann Dirson <yann@blade-group.com>
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


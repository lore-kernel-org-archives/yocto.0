Return-Path: <pidge@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82E6DEB64DB
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 16:16:12 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.22988.1686845768795287228
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 09:16:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=SHQlsjy/;
 spf=pass (domain: baylibre.com, ip: 209.85.221.53, mailfrom: pidge@baylibre.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3110ab7110aso1867115f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 09:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686845767; x=1689437767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sq54Ns1sBD1HoPxWH54MbgS4hW3oh4QYXcyRVcckrVw=;
        b=SHQlsjy/hY55EdZIUxift939GK8nQMLJnF4YchWuPSobFz8zOORo1izIg9FT7TNhOa
         3vMPQCFaebzphmS/z8j0rtBJjR1wbieiZ4Ti6Rg19JeT1FSvwAFCQnmrjZwKvBVE+h+r
         jdxZCaF3ffhvdGyOgGFuhQ3GQtLqV8TYEBIRCOOovdSPcDXton0FmkgyzbEj1RVJy0iC
         BY/P4Z2JdPCxPy/L1qMdkJe3VcS6QGqSOi1ZWem+bdp5HQRUXTZqeZovTStbOUGWpkFJ
         39KbvMJIC0NFpZzZf45ot6BMHDfaGy1NaiB9o9NI/iM7WyQqhNlVNzYxzrN/lviNPBkD
         2eEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686845767; x=1689437767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sq54Ns1sBD1HoPxWH54MbgS4hW3oh4QYXcyRVcckrVw=;
        b=b7NID+QeX0tgdGMAl+ZsjrpEmrPjq+MAdps54g3q1LyYgFADYjmo0dfUR1MqgOeThR
         EVSoM2zBTl2R04K2TICKNjYMfdQrSYfChtQDcagFeSlw7OlDZkATRajhl4/GgHRpGnhB
         tQM3fOHB2QT4rW31+oqU3utz8fRp7IRoX3HONBnqhdtvp0QfmIAttgY8gFBtLbrRCCo7
         klUeeur64sA4fQTOdmS1/CnWgt84WHyXpQ1I40gsCcCV+5ffvr8GmPITk2uGDU3UcbBg
         9kb+S2qO+aigm3zpWI7agZ/Up7eQLt3Ur/N7sF7R8MY5wccpyDWudZ5GXFe4Se/UC/Ei
         agaA==
X-Gm-Message-State: AC+VfDz/bXmibF4mvY+zw+rHcxJ4iErj2JTK089kZH+YZM/d/OT0ZfsW
	dwmIaEhgoZu+HRE7RixHWAZ73GveE2p8Xe0zlxs=
X-Google-Smtp-Source: ACHHUZ5vbQXTWFSIlR/KOc5zOfWsuTwgazmjAeZvaQAl+DN5jgn7AkW0B+m2AIBdLJh4nlrm5kRdcA==
X-Received: by 2002:a5d:5946:0:b0:307:92e8:ec60 with SMTP id e6-20020a5d5946000000b0030792e8ec60mr12164163wri.39.1686845767005;
        Thu, 15 Jun 2023 09:16:07 -0700 (PDT)
Received: from tapa.fritz.box ([194.110.145.180])
        by smtp.gmail.com with ESMTPSA id q3-20020adff503000000b0030fa3567541sm18308709wro.48.2023.06.15.09.16.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 09:16:06 -0700 (PDT)
From: =?UTF-8?q?Eil=C3=ADs=20=27pidge=27=20N=C3=AD=20Fhlannag=C3=A1in?= <pidge@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 2/3] weston: Upgrade 11.0.1 -> 12.0.1
Date: Thu, 15 Jun 2023 17:16:00 +0100
Message-Id: <b1b687c7e564e890b40229c6e4781d5ec23989b6.1686845688.git.pidge@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1686845688.git.pidge@baylibre.com>
References: <cover.1686845688.git.pidge@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 16:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60314

Tracking https://gitlab.freedesktop.org/wayland/weston/-/issues/488
we're keeping -Ddeprecated-launcher-logind but plans should be made to
remove this/work around.

Signed-off-by: Eilís 'pidge' Ní Fhlannagáin <pidge@baylibre.com>
---
 .../wayland/{weston_11.0.1.bb => weston_12.0.1.bb}     | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/wayland/{weston_11.0.1.bb => weston_12.0.1.bb} (92%)

diff --git a/meta/recipes-graphics/wayland/weston_11.0.1.bb b/meta/recipes-graphics/wayland/weston_12.0.1.bb
similarity index 92%
rename from meta/recipes-graphics/wayland/weston_11.0.1.bb
rename to meta/recipes-graphics/wayland/weston_12.0.1.bb
index 4f6ce19915..be9dae6289 100644
--- a/meta/recipes-graphics/wayland/weston_11.0.1.bb
+++ b/meta/recipes-graphics/wayland/weston_12.0.1.bb
@@ -6,14 +6,14 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d79ee9e66bb0f95d3386a7acae780b70 \
                     file://libweston/compositor.c;endline=27;md5=eb6d5297798cabe2ddc65e2af519bcf0 \
                     "
 
-SRC_URI = "https://gitlab.freedesktop.org/wayland/weston/uploads/f5648c818fba5432edc3ea63c4db4813/${BPN}-${PV}.tar.xz \
+SRC_URI = "https://gitlab.freedesktop.org/wayland/weston/-/releases/12.0.1/downloads/${BPN}-${PV}.tar.xz \
            file://weston.png \
            file://weston.desktop \
            file://xwayland.weston-start \
            file://systemd-notify.weston-start \
            "
 
-SRC_URI[sha256sum] = "a413f68c252957fc3191c3650823ec356ae8c124ccc0cb440da5cdc4e2cb9e57"
+SRC_URI[sha256sum] = "b18591eab278bc191720f6c09158040b795e7118af1d5ddca6acd9a8e2039535"
 
 UPSTREAM_CHECK_URI = "https://wayland.freedesktop.org/releases.html"
 UPSTREAM_CHECK_REGEX = "weston-(?P<pver>\d+\.\d+\.(?!9\d+)\d+)"
@@ -71,13 +71,17 @@ PACKAGECONFIG[lcms] = "-Dcolor-management-lcms=true,-Dcolor-management-lcms=fals
 # Weston with webp support
 PACKAGECONFIG[webp] = "-Dimage-webp=true,-Dimage-webp=false,libwebp"
 # Weston with systemd-login support
-PACKAGECONFIG[systemd] = "-Dsystemd=true -Dlauncher-logind=true,-Dsystemd=false -Dlauncher-logind=false,systemd dbus"
+PACKAGECONFIG[systemd] = "-Dsystemd=true -Ddeprecated-launcher-logind=true,-Dsystemd=false -Ddeprecated-launcher-logind=false,systemd dbus"
 # Weston with Xwayland support (requires X11 and Wayland)
 PACKAGECONFIG[xwayland] = "-Dxwayland=true,-Dxwayland=false,xwayland"
 # colord CMS support
 PACKAGECONFIG[colord] = "-Ddeprecated-color-management-colord=true,-Ddeprecated-color-management-colord=false,colord"
 # Clients support
 PACKAGECONFIG[clients] = "-Dsimple-clients=${SIMPLECLIENTS} -Ddemo-clients=true,-Dsimple-clients= -Ddemo-clients=false"
+# Pipewire support
+PACKAGECONFIG[pipewire] = "-Dbackend-pipewire=true,-Dbackend-pipewire=false, pipewire"
+# neatvnc support
+PACKAGECONFIG[neatvnc] = "-Dbackend-vnc=true,-Dbackend-vnc=false, neatvnc"
 # Virtual remote output with GStreamer on DRM backend
 PACKAGECONFIG[remoting] = "-Dremoting=true,-Dremoting=false,gstreamer1.0 gstreamer1.0-plugins-base"
 # Weston with screen-share support
-- 
2.34.1



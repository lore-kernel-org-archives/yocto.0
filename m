Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web12.2375.1576554742381337860
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 19:52:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eQt3Ud5o;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id q8so6763038pfh.7
        for <yocto@lists.yoctoproject.org>; Mon, 16 Dec 2019 19:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ssEitTkBdWJD3T2+AmBqnbwF+Pq+3mIuHUIKbBtL/K4=;
        b=eQt3Ud5o3fC4yQDMtvDw3bq66sB9SjJFzZjfagMV0Fk09GDNkZzVRtEXf+x0tCWM45
         OV/dwrwRSqhisC+ZCMGJhWhOdfOQQyFk4ypOMSWmXdH0Bp+dADjqb6ITM/TAoenLi8V8
         N2edvywigbHDO8qZol6Y714ttcFFPA9cuUrH/uKpPlF3kog++gL44J6aSNtyf70WLLxq
         rVHUlwwT4j/h4BK85Av0pOnL3XP9lNklvk5qiClCyqOT4+NeeJg7msuKkOKJzdZU4I+1
         T9DMWIB4Qtm33ZClZCXHPGXfQ34d+rD5jvCtsfaAQuMDK8aeGdYL+9d0VsU9rA19p9MF
         BgtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ssEitTkBdWJD3T2+AmBqnbwF+Pq+3mIuHUIKbBtL/K4=;
        b=cI8F/Cl4L5VVSybO/pyDZpIx3BdK56SiRcenOTJKY153dAhIQx96qslCTC0S1cRSbV
         Yf+3lqU83UAUNjJ++H8tO3H6tKrfWwhGMy4B3VvdrQ4MQ2Jl8PMiz+6Qh+7nYhm+ZBUM
         XDlPBbNEgJHpEhRdM5tCvyttTOso2+0RxepvoGxw17MdlwDlWxwNYTJ9QVCj5wBZKQSS
         Uc1tT3Vfvnf42sZ7bUL2spalJApCwP8+Fbaf0WquJbccZtD0dmPAkFeWDfA+I4gwltDG
         pe4eZD2u4p0hX++X+CpznOGXF2p4ZFJjxCg4I3sXT8lZsLfG0S05ZWl9U8bd4bJnIa5U
         zzZw==
X-Gm-Message-State: APjAAAX8Nv61gZwZrAsrcEXUkKb61sRf6yKBwoA49QiA265q0Ltv0Nfg
	Et/H23gxwl5Sz1oBPHGq2ykgVzG+k40=
X-Google-Smtp-Source: APXvYqzSEPpljPdKQgwzXt2AyNz4gXPAYWXncORsSZkko88fTJwIs6kdn4QSUP6FXb5NxIK8HOtq4Q==
X-Received: by 2002:aa7:954d:: with SMTP id w13mr20189325pfq.176.1576554739150;
        Mon, 16 Dec 2019 19:52:19 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:4e0::2ebb])
        by smtp.gmail.com with ESMTPSA id a17sm1055604pjv.6.2019.12.16.19.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 19:52:18 -0800 (PST)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>,
	Armin Kuster <akuster808@gmail.com>
Subject: [yocto-autobuilder-helper][PATCH] config.json: Add meta-multimedia to meta-oe job
Date: Mon, 16 Dec 2019 19:52:10 -0800
Message-Id: <20191217035210.3237811-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

meta-oe recipes/packagegroups needs meta-multimedia packagegroups
Whitelist ffmpeg so packages depending on it can be tested

Fixes
ERROR: Nothing PROVIDES 'ffmpeg' (but /home/pokybuild/yocto-worker/meta-oe/build/meta-openembedded/meta-oe/recipes-graphics/libvncserver/libvncserver_0.9.12.bb DEPENDS on or otherwise requires it)
ffmpeg was skipped: because it has a restricted license 'commercial'. Which is not whitelisted in LICENSE_FLAGS_WHITELIST

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Cc: Armin Kuster <akuster808@gmail.com>
---
 config.json | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/config.json b/config.json
index b0856a0..a790d08 100644
--- a/config.json
+++ b/config.json
@@ -729,8 +729,12 @@
             "ADDLAYER" : [
                 "${BUILDDIR}/../meta-openembedded/meta-oe",
                 "${BUILDDIR}/../meta-openembedded/meta-python",
+                "${BUILDDIR}/../meta-openembedded/meta-multimedia",
                 "${BUILDDIR}/../meta-openembedded/meta-networking",
                 "${BUILDDIR}/../meta-openembedded/meta-filesystems"
+            ],
+            "extravars" : [
+                "LICENSE_FLAGS_WHITELIST_append = ' commercial_ffmpeg commercial_x264 '"
             ]
         },
         "meta-virt" : {
-- 
2.24.0


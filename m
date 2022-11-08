Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A48EC433FE
	for <webhook@archiver.kernel.org>; Tue,  8 Nov 2022 20:57:14 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web08.2539.1667941027297814976
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Nov 2022 12:57:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QK5zk89a;
 spf=pass (domain: gmail.com, ip: 209.85.208.46, mailfrom: alex.kiernan@gmail.com)
Received: by mail-ed1-f46.google.com with SMTP id 21so24399197edv.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Nov 2022 12:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uuAkxU+iTDln2KH/HBQQ2hxA2AdQ20RDrfm2mNaUY8E=;
        b=QK5zk89aBIl/eMh7U/9LRVniOolBZKL1QqokpvvJ/zw4vOm8TtJcxsjhR6SIcea3NI
         uVMsFHqarmnMimI6X1vaJNi623hcsSmC2GOUV8nxN1pXswLZdkQ6hk+olVigrYPGjS4Y
         ccE1ESykWkzoFvgibnP7acSffjQBIVewJ7nF5yM2eeUy+YB+E4h4rycfIHUO9lshzV+f
         49lixz03FVW0taViWGXBzZr2kwECvx9w3pZguMf4FsBFvSItvAk3EbVEzQkTxHTU/sMl
         4Dk76OFgnMj+v+qi6q0pgQTleQdUMaMWzY0sqB02nCXDJwgf6BOs3i2Wjlv3G5CMiO7F
         A4iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uuAkxU+iTDln2KH/HBQQ2hxA2AdQ20RDrfm2mNaUY8E=;
        b=d3f9V4DMsT2mBtlJpCalr7Fb/lr0klZmYs4Z95YF2RahlzKz6uI1D+pNE9jdAen0XR
         +/YC2Pw0Z8ZYKpFxPyU8/m3GWd1jgt3KBp1A+44oO0IBooSv/eZFwQTzXNopCD4X/zYT
         5pNghWS0iPHTrreB+MjwoOvRxk6/GY332UNj0fg7nzTeotNkt8Adu1a6ZFa/7uyWqQPW
         GCW8ESDAVY8k9tF+cuHVymbhpzvzLMlutmwWvFhYrwD/uOEdg8qiBun2eAMTlmBbir6B
         dGW+06VEerU7doehQnwpdZC5vdB+4weeuBvRiBeaFCFNRqMK97DvD8muzYRr5rpBVeK8
         7YSw==
X-Gm-Message-State: ACrzQf1cWyyewidV60KpTKq2F7slf2aVm4T7g263zmoauFwCjmlkWxFh
	IEInW4XMnR3NHQ2g5ptVqyAHUr3mvyg=
X-Google-Smtp-Source: AMsMyM5Ovd4XKPIZFIypBK6PJ9NwNsH/yNF4rYll2AaDVwljq2M2jvparABbchKXSd36xOTqMh5DiQ==
X-Received: by 2002:a05:6402:164d:b0:464:4ac8:d269 with SMTP id s13-20020a056402164d00b004644ac8d269mr28736520edx.394.1667941025407;
        Tue, 08 Nov 2022 12:57:05 -0800 (PST)
Received: from localhost.localdomain (cust246-dsl91-135-6.idnet.net. [91.135.6.246])
        by smtp.gmail.com with ESMTPSA id a17-20020aa7d751000000b00458898fe90asm6034608eds.5.2022.11.08.12.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 12:57:04 -0800 (PST)
From: Alex Kiernan <alex.kiernan@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alex Kiernan <alex.kiernan@gmail.com>
Subject: [meta-security][PATCH] bubblewrap: Update 0.6.2 -> 0.7.0
Date: Tue,  8 Nov 2022 20:56:36 +0000
Message-Id: <20221108205635.25788-1-alex.kiernan@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Nov 2022 20:57:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58526

Inherit github-releases so that `devtool upgrade` can identify new
versions correctly.

Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
---
 .../{bubblewrap_0.6.2.bb => bubblewrap_0.7.0.bb}           | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)
 rename recipes-security/bubblewrap/{bubblewrap_0.6.2.bb => bubblewrap_0.7.0.bb} (72%)

diff --git a/recipes-security/bubblewrap/bubblewrap_0.6.2.bb b/recipes-security/bubblewrap/bubblewrap_0.7.0.bb
similarity index 72%
rename from recipes-security/bubblewrap/bubblewrap_0.6.2.bb
rename to recipes-security/bubblewrap/bubblewrap_0.7.0.bb
index 921defda9e9d..a48b01252034 100644
--- a/recipes-security/bubblewrap/bubblewrap_0.6.2.bb
+++ b/recipes-security/bubblewrap/bubblewrap_0.7.0.bb
@@ -6,12 +6,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=5f30f0716dfdd0d91eb439ebec522ec2"
 DEPENDS = "libcap"
 
 SRC_URI = "https://github.com/containers/${BPN}/releases/download/v${PV}/${BP}.tar.xz"
-SRC_URI[sha256sum] = "8a0ec802d1b3e956c5bb0a40a81c9ce0b055a31bf30a8efa547433603b8af20b"
+SRC_URI[sha256sum] = "764ab7100bd037ea53d440d362e099d7a425966bc62d1f00ab26b8fbb882a9dc"
 
-UPSTREAM_CHECK_URI = "https://github.com/containers/bubblewrap/releases"
-UPSTREAM_CHECK_REGEX = "bubblewrap-(?P<pver>\d+(\.\d+)+)\.tar"
+inherit autotools bash-completion github-releases manpages pkgconfig
 
-inherit autotools bash-completion manpages pkgconfig
+GITHUB_BASE_URI = "https://github.com/containers/${BPN}/releases/"
 
 PACKAGECONFIG ?= "${@bb.utils.filter('DISTRO_FEATURES', 'selinux', d)}"
 PACKAGECONFIG[manpages] = "--enable-man,--disable-man,libxslt-native docbook-xsl-stylesheets-native xmlto-native"
-- 
2.35.1



Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com [209.85.160.193])
 by mx.groups.io with SMTP id smtpd.web10.4228.1581513538289092878
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 05:18:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BbNvODS+;
 spf=pass (domain: gmail.com, ip: 209.85.160.193, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f193.google.com with SMTP id l21so1487404qtr.8
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 05:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=pNFth3HNAdG13B6hGXM7A9AobNuaoSCsXy97fx8U1L8=;
        b=BbNvODS+TE3/42lhZ0yfHU2DIWWAABYOSY7cxIJnJ7HSDwIntsl5oHm7BE3nB0jrMr
         qq0j5PjlrdGkl899fFwuvZsP2aaGvcTQEAH+WlWITYz1KGhx9c3d87sLl53S62CMPqTv
         Y9zFE7Xd406zs/3IpzUpe6fxcHwoZZ95eLJzHIEPqPJpT4Jtkl5lMOI+yvFpaM5em+N+
         CeVoo1RQm3MYFo6zozPZqfXALp1LnVwciZPDIcvwb1TnEtxOdudcyIVgAj5SWkAwLZH9
         lGWmdEZTpPrm6gaqg5zZoBRHw+fYw41Ft0Qhn9ULUam+zkiALDx8gCt0nVIaTtTNze0P
         B7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pNFth3HNAdG13B6hGXM7A9AobNuaoSCsXy97fx8U1L8=;
        b=k1P+dXdn/5rOpd7NPTyxdlawIACSriCs1nOxwRHF9sQoaUo5hv91Zs8LZgDRxJ+keu
         5lpPmgWS4MXJsqIuuujsYWk7Us+67JGAkIXNyQoNKmKOLf0lssyZk27LZMx7JgP9Y8ju
         yIAuXPiQ95G1vU1QvpydKieb1+PIQZ47mFCCm9fuBOvqyEE+o6wZCykdAxEzPFUhMm/b
         lCjSQQCujNQhxFs0gxvGzPbAIgYhzWBs0wceLIbran1/mB3BQM+G73Ji0bUS/o8JOndi
         q7lRYZW7KMhlIsYuZBrbS7qyQZnq6JflZKtmYyavzeO5h1gUF5p96jB6kJ20QoO0iFN/
         E+9g==
X-Gm-Message-State: APjAAAUiP9fuWEYosT+VGfM7IyMxVs1k7xXqCP8WeZp0k4wEDpsDbKXw
	CZVrROkw0w+Abh6ulX3T9kLhIEjFc/8=
X-Google-Smtp-Source: APXvYqxlTnb2sGgc3Oct6P7z2snPT7KNe9Fb8q26V7sqiNITOzCnnpsFLiC5PXVO0z1xM90shEzLcg==
X-Received: by 2002:aed:3765:: with SMTP id i92mr6812955qtb.373.1581513537166;
        Wed, 12 Feb 2020 05:18:57 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3.suse ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id b35sm149634qtc.9.2020.02.12.05.18.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Feb 2020 05:18:55 -0800 (PST)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 2/2] wic cleanup
Date: Wed, 12 Feb 2020 08:18:35 -0500
Message-Id: <20200212131835.34100-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.25.0.114.g5b0ca878e0
In-Reply-To: <20200212131835.34100-1-twoerner@gmail.com>
References: <20200212131835.34100-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Now that we've switched to using wic for image layout, we can remove the
unused recipes for proprietary vendor tools.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 .../mkbootimg/mkbootimg-native_git.bb         | 24 ----------------
 .../rkflashtool/rkflashtool-native_git.bb     | 28 -------------------
 2 files changed, 52 deletions(-)
 delete mode 100644 recipes-support/mkbootimg/mkbootimg-native_git.bb
 delete mode 100644 recipes-support/rkflashtool/rkflashtool-native_git.bb

diff --git a/recipes-support/mkbootimg/mkbootimg-native_git.bb b/recipes-support/mkbootimg/mkbootimg-native_git.bb
deleted file mode 100644
index 3d3ea39..0000000
--- a/recipes-support/mkbootimg/mkbootimg-native_git.bb
+++ /dev/null
@@ -1,24 +0,0 @@
-# Copyright (C) 2014 Romain Perier <romain.perier@gmail.com>
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-DESCRIPTION = "Tools to create firmware / boot images for Rockchip devices"
-LICENSE = "Apache-2.0"
-LIC_FILES_CHKSUM = "file://mkbootimg.c;beginline=3;endline=15;md5=b18126d1bbc60ae5dbc31ef949a6f1c3"
-
-DEPENDS += "openssl-native"
-SRC_URI="git://github.com/neo-technologies/rockchip-mkbootimg.git"
-SRCREV = "dcfdea23d8a223ec68f09789ebf38fc8b832e5d6"
-PR = "r1"
-PV = "0.1+git${SRCREV}"
-
-inherit base native
-
-S = "${WORKDIR}/git"
-
-do_compile() {
-    oe_runmake LDFLAGS="$LDFLAGS -lcrypto"
-}
-
-do_install() {
-    oe_runmake PREFIX=${prefix} DESTDIR=${D} install
-}
diff --git a/recipes-support/rkflashtool/rkflashtool-native_git.bb b/recipes-support/rkflashtool/rkflashtool-native_git.bb
deleted file mode 100644
index fc3e68f..0000000
--- a/recipes-support/rkflashtool/rkflashtool-native_git.bb
+++ /dev/null
@@ -1,28 +0,0 @@
-# Copyright (C) 2014 Romain Perier <romain.perier@gmail.com>
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-DESCRIPTION = "Tools for flashing Rockchip devices"
-LICENSE = "ASIS"
-LIC_FILES_CHKSUM = "file://rkcrc.c;beginline=1;endline=25;md5=5c55527c991502a9b86b768674cdcff5"
-
-DEPENDS += "libusb-native"
-SRC_URI="git://github.com/linux-rockchip/rkflashtool.git"
-SRCREV = "${AUTOREV}"
-PR = "r1"
-PV = "0.1+git${SRCREV}"
-
-inherit native
-
-S = "${WORKDIR}/git"
-
-do_compile() {
-    oe_runmake
-}
-
-do_install() {
-    install -d ${D}/${prefix}/bin
-
-    for tool in rkcrc rkflashtool rkmisc rkpad rkparameters rkunpack rkunsign; do
-        install -m 0755 ${S}/${tool} ${D}/${prefix}/bin/${tool}    
-    done
-}
-- 
2.25.0.114.g5b0ca878e0


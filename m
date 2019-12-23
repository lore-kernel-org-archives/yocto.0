Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
 by mx.groups.io with SMTP id smtpd.web11.5158.1577121518056978427
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2019 09:18:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ghrN87CW;
 spf=pass (domain: gmail.com, ip: 209.85.215.194, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f194.google.com with SMTP id k3so9129212pgc.3
        for <yocto@lists.yoctoproject.org>; Mon, 23 Dec 2019 09:18:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=DCxPPXVPPyCaXdqKuAAc0Nl0m6hOI/LkwPXyyemdZ2k=;
        b=ghrN87CWzwg2jtciEg2kgjClpitKTAYh3Pxy5FZtof5SYCc0Cc0Euf5buedzcoZr/3
         Sii2bf0x5Z00u2QJgIa7UZXknwrgzEPlcUBX5DTr+lZfoUNZ6ljVDSJtHDJ8i10b+mbR
         pCXU22sW9MBjHa1GCh/cb4kIDRSE11QvwJun5lMWcdJ7OvPKj4Pnd7mdmtwhoWQCA+01
         u20au6371LjYvnrb6lSUx3IMjYyhnTHnncBTvD6UdF/Z2FXbf7vy3K9pSuHu3yLN/jyH
         X2TYmTMazFo4aJSbNlUsjCtEWjduRb9GXcbEsSz91Zw5xOnyaY8hRg2nFknvmZdQRAf8
         Lcyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=DCxPPXVPPyCaXdqKuAAc0Nl0m6hOI/LkwPXyyemdZ2k=;
        b=TqS6bK6KepYmkA4pu/4JX0m9nx1aLAZAd7yHCT0gjNcBkHeaVCDKqtDTc3iSZ2X6Cu
         n9tA2vQzvp145vfyCxdhJI52F8OUJfsSEpbIhHyqOpSpBR/2+XIvaWos8Zwi9JeCjYqf
         UWtX4jzyzsPn+u0jsqFYEz1IWzK0AitUWzqRRpMzQ10XV5OhGAHljwarPzSzGE7Yox8I
         SfXN9zI/obi327uayMEmwVSjDajIm68XC5ovsjh0Iik5ppQG9DHI8pIy/0TeahjNWLRy
         xhrf8qVyL0QHeKgWU9Z716ukpPiXd5Zzvs91W1GcmJ2cgWLPIp//y8eKPXFApbqnuZW7
         VynA==
X-Gm-Message-State: APjAAAURIj1vUsZ+xT8x5n+eTRjlL8Zkaq2b23+N898llB1yzGYH8MPt
	oOxGKfgH/Ff+RrIZOUFk/kbGyJac61w=
X-Google-Smtp-Source: APXvYqzWIZMuNtP74xhNgdDHBXM9l9Jtrl5Kbo5/P4ldPpIQn84joQEWGpb0Q7+ep+9hbucZINqBug==
X-Received: by 2002:aa7:914b:: with SMTP id 11mr34263164pfi.69.1577121517218;
        Mon, 23 Dec 2019 09:18:37 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id g18sm23945870pfi.80.2019.12.23.09.18.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2019 09:18:35 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] meta-integrity/../systemd: fix pollution issue
Date: Mon, 23 Dec 2019 17:18:34 +0000
Message-Id: <20191223171834.30244-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

only include changes of systemd is enabled.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/recipes-core/systemd/systemd_%.bbappend | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-integrity/recipes-core/systemd/systemd_%.bbappend b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
index 3b45541..f33e563 100644
--- a/meta-integrity/recipes-core/systemd/systemd_%.bbappend
+++ b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
@@ -1,11 +1,11 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_ima := "${THISDIR}/files:"
 
-SRC_URI += " \
+SRC_URI_iam += " \
     file://machine-id-commit-sync.conf \
     file://random-seed-sync.conf \
 "
 
-do_install_append () {
+do_install_append_iam () {
     for i in machine-id-commit random-seed; do
         install -d ${D}/${systemd_system_unitdir}/systemd-$i.service.d
         install -m 0644 ${WORKDIR}/$i-sync.conf ${D}/${systemd_system_unitdir}/systemd-$i.service.d
-- 
2.17.1


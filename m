Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web11.1902.1592014764606753009
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2020 19:19:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VenHazh7;
 spf=pass (domain: gmail.com, ip: 209.85.210.52, mailfrom: jpuhlman@gmail.com)
Received: by mail-ot1-f52.google.com with SMTP id u23so8898259otq.10
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2020 19:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CSHapQOaCfALb2aN3vT+JeP//gXoYyop4HcuWllppkk=;
        b=VenHazh7nW37obAtD/QbbBHbzwkS1k5LbIOm7SIhP1rYEVUrLq0bJYub8/rzpccvt1
         8mrH7rum/WlxEUBCVESXulmpR1AcIUPexWXee1L1+1c4/aMKwKJWBWZ4nATxptfuffnN
         zFI461biHC09hP24FNGom3GXvFlItR6zkA/nMtPHszdKXeLA8XLjky69HhIYNofSHaJd
         trzdatuShrr/sxvGIgunaR3HCMwkU6amvKvAzgP8yx3lQrI0antIaYElSXoExXfWamIV
         nQ/yqLtn6w/sgDWtqoDkVJu0I4J95YEkVZhucqmJ682y5hwVef3bRVnlHsjAhBweDEwh
         JGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=CSHapQOaCfALb2aN3vT+JeP//gXoYyop4HcuWllppkk=;
        b=I95jbGTGCbCUXc28mPTg0Jvo6fnGgN+etXdaDti82osqMxbwtM8vEOeg0IFyTTh2DA
         9Wq7dof/FztY+K4OMFiaGBIkfwSu7scZlddDfd28ILPfxGC0GHeUWqwxFjQjq/T/cV9E
         nCHKed4flv1u/Mhk/BjweHo4t+VxCjrMKLg0ywj9ti6RWi7RRNSKCt3BoQDBMBw9EIJd
         QdMADgMGX9yOkexB1ArNTh13vuDTrgLYJAkk6I3kjWB0vjbk/Qit/8vSHQtE/DQ56zTt
         TNHft4mMTkO0WJZn4GT9mQuVHnon4jkk//YAcIrAapDU1yGsLWcFiDw1blzdfwPdJN1H
         PCVw==
X-Gm-Message-State: AOAM533K4DO1CQ7zMAzoU3ukysxKt3ve7FW07vyay0S5HqFE+0GFMs3P
	9ID3/HZVgyS0ZG9sorcpSLwke6Srf9YzXg==
X-Google-Smtp-Source: ABdhPJwCSQkMYYKqZT4URwei0NwFKafBGaiwxF59Ws6zzqn412AFJsFANky5A1Q8sXvexsvJ54Xnkg==
X-Received: by 2002:a9d:3b86:: with SMTP id k6mr12781644otc.106.1592014763751;
        Fri, 12 Jun 2020 19:19:23 -0700 (PDT)
Return-Path: <jpuhlman@gmail.com>
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id k2sm655602oib.10.2020.06.12.19.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 19:19:23 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 9FAE42A0D57; Fri, 12 Jun 2020 19:19:21 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-security][master|dunfell][PATCH 1/2] clamav: resolve multilib issues
Date: Fri, 12 Jun 2020 19:19:18 -0700
Message-Id: <20200613021919.1871-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
---
 recipes-scanners/clamav/clamav_0.101.5.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
index f4625b1..2ea2c9b 100644
--- a/recipes-scanners/clamav/clamav_0.101.5.bb
+++ b/recipes-scanners/clamav/clamav_0.101.5.bb
@@ -25,7 +25,7 @@ S = "${WORKDIR}/git"
 LEAD_SONAME = "libclamav.so"
 SO_VER = "9.0.2"
 
-inherit autotools pkgconfig useradd systemd
+inherit autotools pkgconfig useradd systemd multilib_header multilib_script
 
 CLAMAV_UID ?= "clamav"
 CLAMAV_GID ?= "clamav"
@@ -45,6 +45,8 @@ PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${CLAMAV_USR_DIR}, --disable-bzip2, b
 PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${CLAMAV_USR_DIR}, --without-libncurses-prefix, ncurses, "
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/, --without-systemdsystemunitdir, "
 
+MULTILIB_SCRIPTS = "${PN}-dev:${bindir}/clamav-config ${PN}-cvd:${localstatedir}/lib/clamav/mirrors.dat"
+
 EXTRA_OECONF_CLAMAV = "--without-libcheck-prefix --disable-unrar \
             --disable-mempool \
             --program-prefix="" \
@@ -93,6 +95,7 @@ do_install_append_class-target () {
         install -d ${D}${sysconfdir}/tmpfiles.d
         install -m 0644 ${WORKDIR}/tmpfiles.clamav ${D}${sysconfdir}/tmpfiles.d/clamav.conf
     fi
+    oe_multilib_header clamav-types.h
 }
 
 pkg_postinst_ontarget_${PN} () {
-- 
2.20.1


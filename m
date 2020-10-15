Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
 by mx.groups.io with SMTP id smtpd.web10.6041.1602739597718476569
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Oct 2020 22:26:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dJ/6hm8x;
 spf=pass (domain: gmail.com, ip: 209.85.210.51, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f51.google.com with SMTP id 32so1854823otm.3
        for <yocto@lists.yoctoproject.org>; Wed, 14 Oct 2020 22:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=iBNjOf0m1DuHgGDFcoq1ol2l8tA+41LuaIkPWOl52ew=;
        b=dJ/6hm8xEqM0QOvNwZ0vWR6EioolO29M2ATzup/Z3V4zR3rKw1AHRkO2Gq2QWimXq+
         bXuOAFfp3wCY8H7JvjMJ5pWbJD5k6g2rsMg3TP9M2Ki1IDPMhYPV94X5Mj3vj4OWOfjn
         AHfPoRWWBJ1J3Yw1FCkyL2Dc855L2lshAcj3rX1fgp2lvY2pmfiUHi/HRAyi/jCL8PwJ
         spF9WDEj6bxIFGeD2aMq6A/2mw76v46qBkdbt3dY5FKT2VIA1IcnVxmKZG77UJdua5Ia
         PovrltvPDVzgUPeIT6qlBeFaZX3ZSEy+aOcgjkchVeTboUGEiH7eaccuavyndsgUoxUJ
         NpXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=iBNjOf0m1DuHgGDFcoq1ol2l8tA+41LuaIkPWOl52ew=;
        b=CaeH2FWpTSL/O/prP9aXrHoS4RFd0ivEmZZXM0xi/FXUwMPuEra9Obj3ph68QkDKa/
         M+OMtWP0ZfKx0Dh0S+DatkC2lb6LN/4XetarSZm6eHCM2pNoLxAmGWew1hZVn9XrWV68
         0C/24sgKWQ+UIgnDRvipBopwmKYPajh2rXHd5zJRTahRF6VjgEE+/vqr+CSU8ZDbt/Wk
         DBOK6hs4ouODE6XXd5ZXbXl5g8UqoRh41sLjOnIEZgTJxoqOR7nJFOI7/d2O8Xx5dzK2
         m+ZM15khbHODkQa+eo/cx5iCiQ2l5CbJoMj+roU0+EoMIm2/sNoAMs39CyD1CiPWGjXD
         wgyg==
X-Gm-Message-State: AOAM530puJndYyDtclSpiHsNFuEAV6ITuW3JEPuXwwFJsc4mmXnDn0/p
	fF3QNHRY95s25zmDIwv0IgGfPghzwEQ=
X-Google-Smtp-Source: ABdhPJwC+B10pviq03MoE9c1FZhOP376hi7tbxtmxRByxolw+N/KVrkKS8HeGb8u2XX/zKFN77hZUQ==
X-Received: by 2002:a05:6830:14d0:: with SMTP id t16mr1453564otq.362.1602739596744;
        Wed, 14 Oct 2020 22:26:36 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:20b4:de17:4e9:6126])
        by smtp.gmail.com with ESMTPSA id l3sm679049oth.36.2020.10.14.22.26.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 22:26:36 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/5] tpm2-tss: update to 2.4.3
Date: Wed, 14 Oct 2020 22:26:30 -0700
Message-Id: <20201015052634.23810-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

includes: CVE-2020-24455

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-tss/{tpm2-tss_2.4.1.bb => tpm2-tss_2.4.3.bb}         | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_2.4.1.bb => tpm2-tss_2.4.3.bb} (94%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.3.bb
similarity index 94%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.3.bb
index 22b961d..78be513 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.3.bb
@@ -6,10 +6,8 @@ SECTION = "tpm"
 
 DEPENDS = "autoconf-archive-native libgcrypt openssl"
 
-SRCREV = "a99e733ba66c359502689a9c42fd5e02ed1dd7d6"
-
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
-SRC_URI[sha256sum] = "58d7afcab9ff3daaafb5316e57d2c211118334b470d5a5bc6ceace6f89a1e60d"
+SRC_URI[sha256sum] = "e294677f8993234d0adfa191a5cbf9c5b83cc60c724c233e3d631c26712abea0"
 
 inherit autotools pkgconfig systemd extrausers
 
-- 
2.17.1


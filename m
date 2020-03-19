Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3948.1584582813634508369
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tSbevNEE;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D105E017FC; Wed, 18 Mar 2020 18:53:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C2EEE017FC
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:30 -0700 (PDT)
Received: by mail-pf1-f179.google.com with SMTP id u68so510720pfb.2
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SxUGrbmGT4jQrC+SIfhRBsgZ3+Q7V6jNsIRCSt+mVII=;
        b=tSbevNEEXM5bCJ2FIsqyG7t3eeR2sUelBJs0LNZQ5RI1lsQ7rRs+OmCalpHnDgAd+k
         XDj0+bmG3Wh5y3a5fMSeOMnFMVfdr7cNrBdhLVh02UuFn5P/EDohEEioHVUGu2vjdnHS
         y4YuVyZq9gyUvimgDgTdySF0VLDh48jXOkkXR1AKKR6jX/OmU+2iaOxd6/rx2hll6Gtw
         zf5k5lJcQnTfUm1Kx5Hq+8LX2yCnW1WZgUiHd4RHNOejxGTOU99rHQ4CLr/+QG9/ZDfY
         Dfq/IUSu/uUCG1AIP6h8Hp3KY9XTPwq1/4mqdhmiaEZa26V8qtk3qAO+y2geU4Ajnewc
         A+sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=SxUGrbmGT4jQrC+SIfhRBsgZ3+Q7V6jNsIRCSt+mVII=;
        b=j5Hza/PvHkTfYvJ2eCUyakEorXzrs+0uapbeZ/YuXTy6PLH298Qfw9B4d632iCbFt2
         ff2/ATXtLmDgGLIZ8SFzZ6yf/MKt1JW+E7SR3frp2Hq/qio6hNx/lcIJV4N3Ig78Yc3g
         7ng7P+/HKwOMosiPL1oWQqIbwK+ZZdNH5z8efmRDecc1GD1QyiZagXCvhDr5Vc0htXly
         4l9Il/hEDO18QbCKuw0fTCfv22Baq2wL7RsMWKG/gj2ZsY3dmO0cH+N5hcGyxm5xGjWU
         PK+jPBHSadGPX15PqkEjE6m2CJH+Ht1Ix0XI14UiODF5nXk+KU0IgaKg4tgrJXF9lKhT
         LO/A==
X-Gm-Message-State: ANhLgQ3qtgamf4opTrYAg18dA0/IAEv2wcKL8o+exCW/vv1+Yf8NOztk
	n54su77h56TZAD/LDg0wM2YShf1gYp0=
X-Google-Smtp-Source: ADFU+vtwemkz1vOJ2lYLClOHeDxpOl4GgHug2s6rgjSyDZWqrvbMLtBxdRTmF+SgTlzy6ms17NTJGw==
X-Received: by 2002:a62:2b8a:: with SMTP id r132mr1453937pfr.56.1584582809829;
        Wed, 18 Mar 2020 18:53:29 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id p7sm214944pjp.1.2020.03.18.18.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:29 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 27ECF2A09CE; Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 06/20] pacemaker: fix depend issues for py2 removal
Date: Wed, 18 Mar 2020 18:53:07 -0700
Message-Id: <20200319015321.15525-6-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
index df02f40..3a8db77 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
@@ -11,7 +11,7 @@ HOMEPAGE = "http://www.clusterlabs.org"
 LICENSE = "GPLv2+ & LGPLv2.1+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=000212f361a81b100d9d0f0435040663"
 
-DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python-native"
+DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python3-native"
 
 SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=1.1 \
            file://0001-pacemaker-fix-xml-config.patch \
@@ -95,7 +95,7 @@ FILES_${PN} += " ${datadir}/snmp                             \
                  ${libdir}/${PYTHON_DIR}/site-packages \
                "
 FILES_${PN}-dbg += "${libdir}/corosync/lcrso/.debug"
-RDEPENDS_${PN} = "bash python perl libqb ${PN}-cli-utils"
+RDEPENDS_${PN} = "bash python3-core perl libqb ${PN}-cli-utils"
 
 SYSTEMD_AUTO_ENABLE = "disable"
 
-- 
2.13.3


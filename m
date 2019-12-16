Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9824.1576517964530021046
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 09:39:24 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=mtEzPUbP;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: ross.burton@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E94B4E01252; Mon, 16 Dec 2019 09:39:23 -0800 (PST)
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
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3C7EE00942
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 09:39:22 -0800 (PST)
Received: by mail-wm1-f66.google.com with SMTP id d73so223053wmd.1
        for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 09:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=intel-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NiluLIVMnCWrTJmG8lvBN1U2g3ZA8nxW2mboJqqxMFU=;
        b=mtEzPUbPngI8oAkyCrXelUsj6Phz5uSqVTXUIvpVpFmJ7c7QM5gvmFl+vVua70Kccx
         vxZkMikfPrmTHMzJF0orqwO/MVOHOD6hhdGCxAqY430xFVR1yPMtcJRaDwLtnfwTxciU
         SNcgUHNQ6cX+sn7HXHATAsZuQQZSLeJ2F2UJZK6cN99tSHDF+840KI6g+PKAITQXea2i
         JuEajHraENI3fZ71V9ws20bHZyl2/L0EYc23jihHE51zpGqTbGVqNBLXhYH8oEAmzvbL
         7c3a4kO/bBZpWoVD+wukYOUry0Y807UPvizQ1FPGTvBymuhET4t05ad9aWgbnyeV5GMd
         RH8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NiluLIVMnCWrTJmG8lvBN1U2g3ZA8nxW2mboJqqxMFU=;
        b=s1M6qykupvLR5+eW+pPmR3zn2IGVjCqEYihpJ4wlKmsy94Nfsd4d0RKIsgKPUvHmi5
         +ANrIVHdIexEA0ZoMExo4Z9ScpLXTQQ8UrGV9+9xjQHPq5OHFZSGZ44Tcu9HeYlLGzJN
         ScSktsdCF+f/wLBRplj5K5okTiTXEZdp1zk8rQsBFQoTZtKze0vhU0yVvhhNXaSBXuOF
         TssxaLcOb0djFNMcePQLBmpKwCD4w45YdJK1qJAmnjtDhZuw6I0WBf/PcsFLAkyKsCoI
         +++y365I8Nk0uKO/QPal0ALlMFT/2UPFQ7kDB4uoHwrgnSU/62Iy3KiU9dnYX2gHIjcY
         2moA==
X-Gm-Message-State: APjAAAU+mLiL6ybh9O7UD6p727WSgGXgXs2XhBB1Ikz2aK1cGyygCDIN
	xDvIb1IqVK0+rcI3XJZFjAdxQQtfGTA=
X-Google-Smtp-Source: APXvYqwHSjNBtV/nsWlbBTQtEB0DuHQ+TczCGhRiFBdjW6KiANPN19tljulR3rgN7KMTj9xGTodisA==
X-Received: by 2002:a1c:2089:: with SMTP id g131mr164646wmg.63.1576517961365;
        Mon, 16 Dec 2019 09:39:21 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
        by smtp.gmail.com with ESMTPSA id 16sm133759wmi.0.2019.12.16.09.39.19
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 09:39:20 -0800 (PST)
From: "Ross Burton" <ross.burton@intel.com>
To: yocto@yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config: don't run meta-intel in qemu yet
Date: Mon, 16 Dec 2019 17:39:11 +0000
Message-Id: <20191216173911.13340-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

meta-intel BSPs are not compatible with the qemu BSPs currently, so don't
attempt to execute testimage.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 5730f85..79695c2 100644
--- a/config.json
+++ b/config.json
@@ -387,7 +387,7 @@
             "NEEDREPOS" : ["poky", "meta-intel"],
             "ADDLAYER" : ["${BUILDDIR}/../meta-intel"],
             "MACHINE" : "intel-corei7-64",
-            "TEMPLATE" : "arch-hw-qemu"
+            "TEMPLATE" : "arch-hw"
         },
         "genericx86-64-alt" : {
             "MACHINE" : "genericx86-64",
--=20
2.20.1


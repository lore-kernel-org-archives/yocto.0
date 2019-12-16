Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9724.1576518121441737615
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 09:42:01 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=tMPYrNQv;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: ross.burton@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AB1BE01256; Mon, 16 Dec 2019 09:42:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.65 listed in list.dnswl.org]
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26957E00E18
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 09:41:59 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id q6so8338561wro.9
        for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 09:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=intel-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NiluLIVMnCWrTJmG8lvBN1U2g3ZA8nxW2mboJqqxMFU=;
        b=tMPYrNQvvXtyTbXU9c0Y0I0rJ2t7WrywaKtRYiSyFNV7M400QwX2XOoC8grSZF3/5M
         E+yPaKxf/J8DXoJIEM7I8WfO5+HpkHlhwnOobxuvM99HBpYhWj+MkhFhuYNX7aAy3dPe
         O3zLF2QPs0IXb9oL5N8J3Rho4+5wXVIuBm4ELiLGbQRQ4l3/bDeirP1KZiQGbKgvihfQ
         HnCJ7FIXCCtZZlNl2L/PegBrtoaHNS+318dsBMV+JM3EZmGoSBg2MdJALlNbVvDRu6fx
         DzFvmLOUuZ/wTO6v7pPWw0U4NFB6cQHm2oFrD38DGFIa9g4gu13XL6L1S5H4ngeDZzqY
         hPsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NiluLIVMnCWrTJmG8lvBN1U2g3ZA8nxW2mboJqqxMFU=;
        b=XzjeHWwRwrIv9czj+oilyHOOlQE3F0hCVMPqmMUqwcFmJslnJPo/aWnuOMFWJS+1i1
         X1n8p3V06oznCSz1ciPsgXlorPvtv0EHSlQNlUatP/Nuo6CF6kLM5szsXaMz2EbkjZqR
         WaxAeVL88SVZle/1ZhxD4dEIAxOHd4CHuu6Gc0E0viQNVOaWfynZ8+B4lfJDyLMIj/+H
         0hPp5pAOZrFrNBwgR9kudDnZoxSU8b49lfqQAF3WoPfK/uhzFT2IWZvpkLiHsRD2UtKY
         nQAd71c3WebLUm++cChGJi/QmeL1wAwkQ8rL05F9yALjbxr8C3S6kluMF6vz3IQEa/Yw
         aewg==
X-Gm-Message-State: APjAAAVYFZGq7WhVNICLrBNr6QZp2sHxIk8h7gLOixuqPabeSs0RMypa
	fXvwJcKvLS8WLK1w7n4UzHL+BMRSjUE=
X-Google-Smtp-Source: APXvYqy7uF04uAEcKeRBxzyzSLd7BCAhjka5JGAMvyaMaUuUT4Y6/450nIPanO8gWSKnrZx2WSODPQ==
X-Received: by 2002:a5d:480f:: with SMTP id l15mr31838354wrq.305.1576518117873;
        Mon, 16 Dec 2019 09:41:57 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
        by smtp.gmail.com with ESMTPSA id t81sm142497wmg.6.2019.12.16.09.41.57
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 09:41:57 -0800 (PST)
From: "Ross Burton" <ross.burton@intel.com>
To: yocto@yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper v2 1/3] config: don't run meta-intel in qemu yet
Date: Mon, 16 Dec 2019 17:41:52 +0000
Message-Id: <20191216174154.13996-1-ross.burton@intel.com>
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


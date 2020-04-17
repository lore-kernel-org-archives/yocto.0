Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2581.1587088402488193054
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Apr 2020 18:53:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=DjhJOYDV;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95C75E019FC; Thu, 16 Apr 2020 18:53:21 -0700 (PDT)
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
	*      [209.85.214.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A6D7E019F8
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2020 18:53:20 -0700 (PDT)
Received: by mail-pl1-f173.google.com with SMTP id h11so360171plr.11
        for <yocto@yoctoproject.org>; Thu, 16 Apr 2020 18:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aKjFaAzyajQQQ28wdYlXycmBX+tjRBon3VpRsBU6d0o=;
        b=DjhJOYDVcn3FatJeQR41FFhItWtfq34YnU42ATtcc08u+j3UfWr0EGPrId7Zlca+xg
         Pe8HndWIk17lW/aHAaHlYYep0AJKCK1z0xbT5tkUqozPet3BAXNQdc2oXeK1lsNBi6IN
         7kkd+ob5Xjppsks2UcgTC8u5MiLETwe4o3amTnNmzCAfcCNxdihGt45wYRXMM1bULJDm
         zj68Dk9K/AAgFnWBCoBAaRgwQw4G1nCgIl1uGuuXJmhv2/9zEF85yKHuEHJ+uunjHtLC
         k0lH6Xfsy4gEko2JOCQhct3wopzougDdEqABpysAo4RBZHrhn5snSlu+6ElOOgMLALG1
         e/8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=aKjFaAzyajQQQ28wdYlXycmBX+tjRBon3VpRsBU6d0o=;
        b=h1zUD8zC++4AdwjbaoN4JyHdx3MAAo3Z45WPfQJxZ7/fpszmIY07zLe5l7leNAhdCz
         PGJQPChAJOWpgEMOm4mSRwgRHXzUaQvp8FoMp8XT1tl7Uzv5oYKt1bnQDo6YCoWQQPXx
         wrXCAeMgTkQ4M8rsNDKzbtkF16Z0h7q7ZcdvqHpxMrisfqhnVX/P9Fg5U0/9LRyCgVtX
         Kf6At4RcBPIyY8LaIamZVJzdzI5HgFLsdhafIc3Z0/7KJgaYF9VmXIGISJT25+sLDsOR
         AP1JtkUloYx8VNG5y4pX9z0XbnGzcis3Yk/6xUNDI1m/ztdNx72XEKAc2rPrsr9sz/19
         Q+mQ==
X-Gm-Message-State: AGi0PuZApu4LJ1sQFnZ2/3rc1S8nm/Sj5Oo5KSHko0XXH+EXSDV2XlLy
	NxJA0RWVB+l4WyHfP4PdlMk=
X-Google-Smtp-Source: APiQypKkOjrHCobCxA6FX/97JDWEOfZ2DGjHCEazhW8709iMS9auqXL711Ez7jNrG79PlABCNEhNlg==
X-Received: by 2002:a17:902:7449:: with SMTP id e9mr1181604plt.140.1587088399700;
        Thu, 16 Apr 2020 18:53:19 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id j186sm7418524pfb.220.2020.04.16.18.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2020 18:53:18 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 465732A0629; Thu, 16 Apr 2020 18:53:17 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH] initramfs-cgl-boot: Use common MIT license
Date: Thu, 16 Apr 2020 18:53:12 -0700
Message-Id: <20200417015312.3801-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb       | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boo=
t_1.0.bb b/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_=
1.0.bb
index 1a2dd1d..8b1768a 100644
--- a/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.b=
b
+++ b/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.b=
b
@@ -1,8 +1,7 @@
 SUMMARY =3D "Support for having multipath iSCSI devices as root file sys=
tem"
 LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://../COPYING.MIT;md5=3D838c366f69b72c5df05c96=
dff79b35f2"
+LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420"
 SRC_URI =3D "file://init-boot.sh \
-          file://COPYING.MIT \
 "
=20
 do_install() {
--=20
2.20.1


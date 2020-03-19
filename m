Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4081.1584582818782044997
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=plsPQ/X5;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4CA2E01845; Wed, 18 Mar 2020 18:53:38 -0700 (PDT)
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
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E933E017FC
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:38 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id f8so315091plt.10
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TKEBu4WmrmZXhGRR8PLpyRAnuoseltznbPNlAO3seEY=;
        b=plsPQ/X5cXqJbTMwrV2NTJWCoZb4U8Tq+RVep6D8WZrrV44mRa99GtLTmSrshWQBSS
         x68Cqzv3/Fv8ZJNEuCoFVFCb5RbR9vbPQYYC/fIjN4lVEx5tGuC+fp3ioCYFYoAcLRFw
         7a0xS28l2wGK2cvJRlSpO8ONcWy5up1kFZuHj8HUduiexBwK1cf++CcoVimEX+3TiIMc
         dPh8s7NTK/iollOXQ1HryVdEBtz7ugnI+LEpF4sGYpTWOnS25peJturghPHRL2/gUCTz
         rFZgAgR++OEfNihKfw6lp4KOdz1pv3dGZBINlxbV678RtBntlvhOayze9tlAqiJY2b9E
         rarA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=TKEBu4WmrmZXhGRR8PLpyRAnuoseltznbPNlAO3seEY=;
        b=hQMTYWSfI1mkbWKqunR+QjN8agO4ql9XhZ7HV30zkwGpJbAtwevcI2YjwGmOYRxhke
         bgAAwJHxOo43F2PxjBpyg4A/P3vjyU2f9OfAwnWWrBinGjNwpJfi09FtY+0v/fmsbcRB
         PfUXm6Ey1oWvhVX2waN3Of8r/65CT0fx1hA0hBzrR5301yTrgpmURvMAbaOzm3G6Fdp9
         EOVey06eAKwuP03+Ulv9O1vZNRvnFrOYeKTkRJVIhYLtcp197wCE95oDoxwJUfXfXZot
         q36fKaootLEH1soIk94zVPmOun3ZLxLC/bEQisLdBrtDR2l2NpS5XCNgwZsk4Pm7laMN
         Zd4w==
X-Gm-Message-State: ANhLgQ0x8Q97NnqoiNC153COnHPzGol8PRxJmbdQsyb+oMhDvUpoa9tK
	xdevwoqIxHwcKLmooVEkA8hMeobiffA=
X-Google-Smtp-Source: ADFU+vsZnmr8OQaM552MXUwaquhGOEsS595fX7R69buvPaBxNXxZv6Ia0MT0kudrshe9LTtwKvMlNg==
X-Received: by 2002:a17:90a:22a7:: with SMTP id s36mr1139940pjc.35.1584582817866;
        Wed, 18 Mar 2020 18:53:37 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id h15sm306415pgd.19.2020.03.18.18.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:37 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 56E602A09AF; Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 19/20] initramfs-cgl-boot: Do not presume layer is inside corebase
Date: Wed, 18 Mar 2020 18:53:20 -0700
Message-Id: <20200319015321.15525-19-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb            | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb b/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb
index 5265bf0..1a2dd1d 100644
--- a/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb
+++ b/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb
@@ -1,7 +1,9 @@
 SUMMARY = "Support for having multipath iSCSI devices as root file system"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=838c366f69b72c5df05c96dff79b35f2"
-SRC_URI = "file://init-boot.sh"
+LIC_FILES_CHKSUM = "file://../COPYING.MIT;md5=838c366f69b72c5df05c96dff79b35f2"
+SRC_URI = "file://init-boot.sh \
+          file://COPYING.MIT \
+"
 
 do_install() {
         install -m 0755 ${WORKDIR}/init-boot.sh ${D}/init
-- 
2.13.3


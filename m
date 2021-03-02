Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10222.1614698806209105533
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 07:26:46 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=ot9oLBEB;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 54D6138C057C
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 15:26:45 +0000 (UTC)
Received: by mail-lj1-f178.google.com with SMTP id a17so24442283ljq.2
        for <yocto@yoctoproject.org>; Tue, 02 Mar 2021 07:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NRDdvB2aPsmFa63u8hjzCUaLNrU2y4c69fiX3XGiUnY=;
        b=ot9oLBEBSKD34Hp9FsFMvszIIvdisKQ2EO/ShjcKPoVaHtnG+D/UFfMYLhxFNtQJpt
         CxwDeZOZH1PeXtIvEuBch2KS/LDTRMqqrYVaHzTWIOxQlIEb7m+6Eq7vedZa4Im6HGnS
         aPKLGDECFStRLdBsmWkd2WKH5WBLTKWKWN6wvbSZXIpZmCky7NM2Y0CVE3GLREiAzhiu
         TgppgL9HGswyjYYhnfrtrvQb6j6uz5di0dgpucJOEIGwRkRv+UH0e81gCcWDMxMRx00a
         pk7e8j31W4O+i3aNXMjEE7cpL4C9Km8XKyNI9puq/OWQlM6oVdaBw9FBkW4EuGsV0IZV
         i/Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NRDdvB2aPsmFa63u8hjzCUaLNrU2y4c69fiX3XGiUnY=;
        b=kt284KrBWM3HP2rM98VMsvM3KwjqJbO6UrMyX0NZQJ0hqqeCuzjMWsA1N49bpIeW9F
         y9D9puFB59FTxEcYn1NhgnxLhPwdj99/CTZIaV05rk1CmX+8/pHR0uGmhzirr9a9K6RS
         0UoefyOscRTBpCK+mxJCcl8N/OZH98KghjVXCT2UV7OmLxmDOtKokrlpZeNyNplNwqwO
         SolhF47QcEIySRRy5TL6hJAVdk9qa7UE5Je1CK2Jae5Ya03nYPvu4V2GzmrIutEItDwz
         6EHrapcj61upSfWTldka1is7NO08qq74YJEt7k8s6PNmhn/xjZe3FqObetYJWwkI1FmQ
         X0Zw==
X-Gm-Message-State: AOAM531HbeF0XyVvhysOWtVtkW90E3uiiD+a5jW+g7pu4M/ohPEDbx2s
	bVP58o0134Tj/caPLdfg5JBwwgno5Ko=
X-Google-Smtp-Source: ABdhPJzzVHl7DOEBSUwVmE03H9p4x/PrpAfE3nXehayKoh32qP8SOFmTgODGGnzz9lE05kjKH7ANJg==
X-Received: by 2002:a5d:468e:: with SMTP id u14mr21864873wrq.359.1614697080195;
        Tue, 02 Mar 2021 06:58:00 -0800 (PST)
Received: from peterliu-Precision-7530.toradex.int ([2a00:801:42b:8138:fd2e:3bb6:aed9:2cc1])
        by smtp.gmail.com with ESMTPSA id g202sm2862577wme.20.2021.03.02.06.57.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 06:58:00 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][dunfell][PATCH 7/9] initramfs-framework-ima: let ima_enabled return 0
Date: Tue,  2 Mar 2021 15:57:43 +0100
Message-Id: <20210302145745.1891826-8-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210302145745.1891826-1-liu.ming50@gmail.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Otherwise, ima script would not run as intended.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/initrdscripts/initramfs-framework-ima/ima       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framewor=
k-ima/ima b/meta-integrity/recipes-core/initrdscripts/initramfs-framework=
-ima/ima
index 16ed53f..cff26a3 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/i=
ma
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/i=
ma
@@ -6,6 +6,7 @@ ima_enabled() {
     if [ "$bootparam_no_ima" =3D "true" ]; then
         return 1
     fi
+    return 0
 }
=20
 ima_run() {
--=20
2.29.0


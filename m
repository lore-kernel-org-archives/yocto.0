Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.5797.1613823529579081196
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 04:18:49 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=M8KWpnsk;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7BE1A38C08A4
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 12:18:49 +0000 (UTC)
Received: by mail-lj1-f174.google.com with SMTP id k22so40230197ljg.3
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 04:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GFN9XpYDAWHFA/QFuyvy9edANal8JdmiY1qoCB7qrMI=;
        b=M8KWpnsk8MqO1zL9CLw+XWLBFbxnD+CwyGsXM/ayzio+z5ct+Bq4BpIcQqei8ARjSu
         bUpgNitaf4goS9z9hI0rka3oeUK0B1hiQEM5GPHSmvLxjT4JO69RUZ2VUJbnJldrFpl9
         mMGwxcqXBNANxet0+05q1vqBc3UExT8ixdOgnl/BUFu2EAz+2wxGxb9hdKgwtlaKo117
         rxy58a0S1SAR6GEKZy3Wq75/A4HSyt6eSqQ4OBr6bLJBrEDxxxnHAuiy/010cRymDY0X
         fR9iGnD1JSBG8EMphGlZsrR9noFFVJYqJ47qn0gz7DStykckspRsfIB+uUsCgTjJkj2A
         mfgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GFN9XpYDAWHFA/QFuyvy9edANal8JdmiY1qoCB7qrMI=;
        b=BONJ52hZutCCSKgYpPCciKdRONGnnpKcIrHPYIwGR4zBwdMUOAKuNbcnX6Fk22fgQu
         jsx6T2ZtziqkKlOTfkLRdp2IOH2EkM/npv+GZa6wdIWrWhqe0gL5/R3Vg8QeLYBHC2PY
         nA9rEVFEMUOyA6qrcV37j2C9x98t1egkaKlfoIkmnHYFvGTYsIyheF5t54PzvKrd37y8
         lfWH5d1RWFh7O1Cl04rDQHXH1NT76Emiji6UI1lTyU//UYKwTyPLY7mbX43g3qYNe5/c
         canPkOv3NwDZslWaJ8yse7fVSdUg/Ptpx0t9CX0daj5sLg9lutkv3kTUPEoLA88GWQZF
         JxCQ==
X-Gm-Message-State: AOAM533U353K7UTyonftMHR3KHgvOBqZpP95Uh+41ZYT30kWzeACw5Cq
	yMJzAlT9sydgYX2PQNO8CNFe6Dijy/TbaQ==
X-Google-Smtp-Source: ABdhPJweh5zSwU9sde1AFXTzlLBpt9e5Xh2RDj845COREQVDIUzX0C73V+IRnEQb+7Pr1r0dS75PGQ==
X-Received: by 2002:a05:6512:b06:: with SMTP id w6mr8405505lfu.190.1613823527868;
        Sat, 20 Feb 2021 04:18:47 -0800 (PST)
Received: from peterliu-Precision-7530.lan (c-3ffb72d5.022-417-73746f13.bbcust.telenor.se. [213.114.251.63])
        by smtp.gmail.com with ESMTPSA id b1sm1234163lfq.187.2021.02.20.04.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 04:18:47 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	dbaryshkov@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH V2 4/8] initramfs-framework-ima: RDEPENDS on ima-evm-keys
Date: Sat, 20 Feb 2021 13:18:18 +0100
Message-Id: <20210220121822.1873572-5-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210220121822.1873572-1-liu.ming50@gmail.com>
References: <20210220121822.1873572-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 .../recipes-core/initrdscripts/initramfs-framework-ima.bb       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framewor=
k-ima.bb b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-=
ima.bb
index dacdc8b..77f6f7c 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.b=
b
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.b=
b
@@ -27,5 +27,5 @@ do_install () {
=20
 FILES_${PN} =3D "/init.d ${sysconfdir}"
=20
-RDEPENDS_${PN} =3D "keyutils ${IMA_POLICY}"
+RDEPENDS_${PN} =3D "keyutils ima-evm-keys ${IMA_POLICY}"
 RDEPENDS_${PN} +=3D "initramfs-framework-base"
--=20
2.29.0


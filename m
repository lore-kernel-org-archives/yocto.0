Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.2088.1617125667427920838
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 10:34:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=ARwL6Haz;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 56AD338C08C0
	for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 17:34:27 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id f22-20020a7bc8d60000b029010c024a1407so10774907wml.2
        for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 10:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DVvEhFkjZX60joN3m7VvVsAZjCUrmrRKB2ETE39OQ5Y=;
        b=ARwL6HazK5e/hRvwFT0Uul/B8sfQsCNDdXeuITP/bjL9zC9sENbCO/z32ztslb3uxm
         bd+ygYJza1kqeN0hy1Nk9yM3XPY8FLpFaVf4ARTdlrsQAL7T6SewduCbwSY5fMdpqnwx
         ZwJKY36gsmFZS6h8d00SscjjADFV2des1S9dQ0z+psQtofR1cd08Kj+6ranAZQ6ckhEd
         QVc/Vn1jwP1Rb5yfYfqOj+4UjShtXHBxhJkwApmflcbk1XorOesCrT42lwr4AZ1UJL6R
         C49YjsA/c/iPDPiLIrUbkklGNFaqxaFYSlSN8ayGuYpCuPUlqTKdKB8R0GgHUG1QrOPu
         eEYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DVvEhFkjZX60joN3m7VvVsAZjCUrmrRKB2ETE39OQ5Y=;
        b=oIGahv5oMM4JVReMqN1l3NqWE6GF3p3LJhHj3UQLL43GIoMc/0Iznnl/d/9/pThd2F
         y5NFge8dbftXdUjH0m6WUY3z07xVvDSY2eeagyj3Wl35RwjThP+ehjPjNb7/3GyhfQk+
         kwW/NsrMlMZuIiotQGMneqj75KX0eq8HSPlo93/j6FE8I0mrg+YGfJactQ/vUwzHOB1C
         j+s5a7OXeHWMb/6JDLcnO6wwkirBpThZodnZ3E2MlSQz5i+u3f4bz5vR1X8rEjDPdZXr
         AL7iteTIVlzKpO54K3xN7IKk0WERgqW7SpSIv2ocETvsvpFZZLZfJgibkILoTk213KBr
         gSqA==
X-Gm-Message-State: AOAM530Sh8rsWUW27wOo25tMi9oO8Jb549jP8/8yC/MljL+RYBkgXICZ
	kQs5CjaAysKpLoqWJ7jIPnXSz3WCFUGpMg==
X-Google-Smtp-Source: ABdhPJwnGZKtKt3tzj/62y11H7Gf+Ex9vXQJESR7nuI8UJwoKnNrQX8aOqM43oWXOTXIVoWio6Q4bQ==
X-Received: by 2002:a7b:c083:: with SMTP id r3mr5130809wmh.177.1617125666100;
        Tue, 30 Mar 2021 10:34:26 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id d18sm39179049wra.8.2021.03.30.10.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 10:34:25 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH 2/3] NanoPi-M4: let all variants use the same KMACHINE type
Date: Tue, 30 Mar 2021 19:34:00 +0200
Message-Id: <20210330173401.753589-3-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210330173401.753589-1-yann@blade-group.com>
References: <20210330173401.753589-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

---
 conf/machine/include/nanopi-m4.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/na=
nopi-m4.inc
index 74cdae8..603160f 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -3,6 +3,7 @@
=20
 require rk3399.inc
=20
+KMACHINE =3D "nanopi-m4"
 KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
=20
 RK_BOOT_DEVICE =3D "mmcblk1"
--=20
2.30.2


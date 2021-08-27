Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web08.8900.1630074431792778411
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 07:27:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t1TxCCs2;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so9013276pjr.1
        for <yocto@lists.yoctoproject.org>; Fri, 27 Aug 2021 07:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=lpmll8YkNB8GGIPOBDFElDAF29xYyzZ+kzgztTtIWzk=;
        b=t1TxCCs2wb9ke6UcEySM7VRRXEL2vyEimZzWJmrGOqvM9egunAYCDJCtnNWH3Uk4Ol
         tHDszxr7IDGBc5+XwJScHUys2U3mqW9mttOObPbzRkdwUeDCbPfM/EWSU7IPCHJtLBF1
         /03Ayb3MzJPvh9ni43cxOIfVtJGl5dsgaxvds4BZnN7OYkwF3LmA+L95gEkMLetD+9Db
         fMvtsV1A9lk/DBr1hdf7OlCYA1furIjFKNDMdOZ3TDiHBK3aIsEL7nG9hsV+pa/CMWMG
         iY+wJ87PZBhHUJJnNTta9lvq2AfLAk2z9NANYL+LM9vxeE73t2yuIkcxHUNztVimuimF
         0Wow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lpmll8YkNB8GGIPOBDFElDAF29xYyzZ+kzgztTtIWzk=;
        b=hzT24LPT4NyaZXuCBve55Zxkh1pOiRopAMSJFipFq8Fnb832VtJP6u2j2Xyy69Ex93
         1xvp7v6nC6oWvWwC2dD+KMP+iG4+UxqRboDrjVtERS/t4rOTr/nH5vjcoQr4XBMutzm5
         3gValrXTxZqq8Rs9bdJ9IqA+qjyf40oawactB8Or3LqVPa6E8Z0nt1qXVeljZ2FEeTSP
         GBJRROch/dutgi3Q7Y65BrT8tZ2RTlS+rIdNDes6AHNza0uBloSW1pUiiZ1xLIlutOG1
         aKC3lW5ATxvitm4Rm5CHDBTlcUUQyDtrNL91tj8NvI/u5F+tX/jjtwZcP9G8PE1xHyw6
         6cpA==
X-Gm-Message-State: AOAM533jzSLsguEXeD9zJ+QcYxn7mAInKp1imYqGFgo6XjX8+A8Kh5oB
	zrsM02ZGM/ehfRAfwTWGP36N888GkW8=
X-Google-Smtp-Source: ABdhPJxKr147C9ZVhHzEoFtboCJKNorgc/LDWnJKFJ7sAeaJcQ92Ol9t+xrCDjvmaJTexsB3c7pAPw==
X-Received: by 2002:a17:902:ce87:b0:138:941a:5c72 with SMTP id f7-20020a170902ce8700b00138941a5c72mr4309046plg.24.1630074431169;
        Fri, 27 Aug 2021 07:27:11 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:6d42:ed7e:4699:884f])
        by smtp.gmail.com with ESMTPSA id u17sm6512064pfh.184.2021.08.27.07.27.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 07:27:10 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/6] layer.conf: drop dynamic-layer
Date: Fri, 27 Aug 2021 07:27:05 -0700
Message-Id: <20210827142707.3710584-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210827142707.3710584-1-akuster808@gmail.com>
References: <20210827142707.3710584-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index cdcfaee..ad9da56 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -16,7 +16,3 @@ LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer met
 # Sanity check for meta-security layer.
 # Setting SKIP_META_SECURITY_SANITY_CHECK to "1" would skip the bbappend files check.
 INHERIT += "sanity-meta-security"
-
-BBFILES_DYNAMIC += " \
-rust-layer:${LAYERDIR}/dynamic-layers/meta-rust/recipes-*/*/*.bb  \
-"
-- 
2.25.1


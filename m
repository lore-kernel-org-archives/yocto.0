Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2238.1575427202150256750
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:40:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uaxUnKOM;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04ECFE010AA; Tue,  3 Dec 2019 18:40:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3670E0085D
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 18:40:00 -0800 (PST)
Received: by mail-pf1-f173.google.com with SMTP id d199so2820119pfd.11
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 18:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=HRIkf/XLojNT2WHcDbLTPKBfnTW9c/mG4x/UQ25g98Q=;
        b=uaxUnKOMzJXSEzIp7AqEs+k4hmXICS2HBqNhS/axemb6yqfbKXX8HEz/8D+3KCpBZm
         WfJVKo/84oMI0Hs1bfBaPwFcqy1c9jrP6Pb8mn3C8E1J5M4jb3ArVMOAqkqXd0o/xYUM
         KKHZhm1VGAQG1dR4b2AP3i7xZrsAURKl3609uJrxgGB1kP6NlyVHuo+i7o4CsAlld/AJ
         shxNzbM2s583X8wku5P0gQ3b8HkElPXffQmhkFP7jusjBy8PE25dUVsiZQuBYxcDkp9M
         X/a8PLnfSOQZNc1BxNLVzp2I3hGVJnd7HKNwJn0M3gGjQlACsJbEbrb4VxWGVOWgC/7A
         JmeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=HRIkf/XLojNT2WHcDbLTPKBfnTW9c/mG4x/UQ25g98Q=;
        b=ZSY7CJL5zKpAmzrMyPNmAgm4cyqwslpc8r+CI56aVJd+vEcOYce5V0jzVd6Ocug+xo
         lyBDApYlPI0fcTqOVOzQ0SBBsp+UDMzKdxF/GcwG67TLu1hg5jaYtej2C+CIkMFJ94mK
         b0sJNMmiYuGsUgbslouBD9fdLCygdKoYi0jZ122rdLOer+unoGQCeII6fewiE6Ya9m3d
         MPzOx+mmW68dAZa3RS59N+1Zc7wEqea4AL3hIXmsdiO/FMLzft1S6zSTRduaWwUJqAgh
         IJaMMDmWtCkKfEryi8DdJkdL7iqTSVyrvlrWsR1L+UgYhSR4ompeJBuphBAkYC9EdyVm
         fgpA==
X-Gm-Message-State: APjAAAUL+gClnpfRhrkiO5ZnDkMBx8xZQBQ8tCZddzG5UNQtrjPjEXOY
	Yy8O+JH/kxVLPIx3QOwHZQJqTrmX
X-Google-Smtp-Source: APXvYqwgGs27N0N/88OJJLRjL5SKC+doGyS4Lxs7POaLzUH8rKw94NES/CQVruYh8b29wnm8XxaMoA==
X-Received: by 2002:a62:2cd7:: with SMTP id s206mr1217939pfs.106.1575427200407;
        Tue, 03 Dec 2019 18:40:00 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w4sm4316863pjt.21.2019.12.03.18.39.59
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:39:59 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH 1/5] tpm2-pkcs11: update to tip
Date: Tue,  3 Dec 2019 18:39:54 -0800
Message-Id: <20191204023958.31799-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
index 2185749..351e03e 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
@@ -10,7 +10,7 @@ SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git \
            file://bootstrap_fixup.patch \
           "
 
-SRCREV = "caf20c04651029626466c59d88b36c05cc6ea20b"
+SRCREV = "6de3f6f9c6e0a4983f3fb90e35feb34906f8aea7"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1


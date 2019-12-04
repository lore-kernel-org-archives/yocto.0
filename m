Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2289.1575427203314631011
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:40:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=R5FKrELV;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CE7DE010AD; Tue,  3 Dec 2019 18:40:03 -0800 (PST)
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
	*      [209.85.214.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34D59E0085D
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 18:40:02 -0800 (PST)
Received: by mail-pl1-f170.google.com with SMTP id k20so2481866pll.13
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 18:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=jGHGow177CGTOlK9J6ds+9Jajv0e2Q9eK0rI1V7Uqj8=;
        b=R5FKrELVMxA0W41/veBhdegrARbP8O+IfEpe2k0dHq1KHMcsnoER0g972kj7HmVEUA
         L7beWjy0vw6yiWLRuQq/RwVKW/V86sIe+Amk7KMPKCv/ng98uYs9t4JOk0oDlWz+bflg
         pnq67E8cnX6cX+O3H4kkwxEGrqU5S6I+etbyDBckkcrEwrHD5MDG+qeSI6Y6an/gPXVT
         Ml/3iyGuyPZfCWb6De+cHTVBoPXQ1aZYxVKEx6c4TqAjyzb4WAvxADqvS46PLjH1PdeX
         7sDW+hhS7CYnVE9mvLUXccpTKusqu4K2V4nJ2YNR3HLqJtSrM+DBALkmADaM67CGTWHE
         hkaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=jGHGow177CGTOlK9J6ds+9Jajv0e2Q9eK0rI1V7Uqj8=;
        b=mysi6vRb4+eA1MfD6bX85R9XmvDGTxXrh+rDYpvCvAyfgCEvlKf5889RVCiC6kNFo4
         4z9FLaRrpbEWQ4aCwbaH32oVHxJFTsALfHlyEeeEo7sNEGOsO0wBE4V6MRPF7dB3u4GK
         lNkfU1DWkjFmYzUw0DgpsfDcvpCsqCEoGiXKJ7D5s0+6k9Ll1suc2Xw1OfZb4MKAZqGV
         zHnwktg9lc+3giqOOA2fO75lJrKdmLhE//lmKzE2nuxxbASmFcVaKkkORLUYDT1TErfs
         cMkG21BKTZomuxe6M/cHiFFyk6b4KKtdFgkILgNhjlKDPc76uX2jW+wktsnDqmqXwPro
         E9NQ==
X-Gm-Message-State: APjAAAVVfUmp+NpOESoTcyJtld9olXfHL3f5mc3WwNVpZ7YL3sm04vM/
	zJ8Gqn4qfOUtqwyCmJDZk66KFyGd
X-Google-Smtp-Source: APXvYqwJms70L3M3Whh2JUv5DmMXMpHd7GM2KRbRNJeDNE/H3/xcekX9jmnSp+DdxqYGhhlvj8E8UA==
X-Received: by 2002:a17:90a:ab0c:: with SMTP id m12mr741224pjq.69.1575427201437;
        Tue, 03 Dec 2019 18:40:01 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w4sm4316863pjt.21.2019.12.03.18.40.00
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:40:00 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH 2/5] tpm2-abrmd": update to 2.3.0
Date: Tue,  3 Dec 2019 18:39:55 -0800
Message-Id: <20191204023958.31799-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204023958.31799-1-akuster808@gmail.com>
References: <20191204023958.31799-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/{tpm2-abrmd_2.2.0.bb => tpm2-abrmd_2.3.0.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-abrmd/{tpm2-abrmd_2.2.0.bb => tpm2-abrmd_2.3.0.bb} (97%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.0.bb
similarity index 97%
rename from meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.0.bb
index 021c969..991364a 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.0.bb
@@ -18,7 +18,7 @@ SRC_URI = "\
     file://tpm2-abrmd.default \
 "
 
-SRCREV = "ac2a5a4b5a4e548177ed7a5b74cea23e00fd30b4"
+SRCREV = "ac82192df1158cb58eac02777cf15c965b02cfbc"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1


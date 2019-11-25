Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6724.1574699869018413183
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 08:37:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f2SZEmZn;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: kergoth@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89928E00F45; Mon, 25 Nov 2019 08:37:48 -0800 (PST)
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
	*      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13BA3E00F22
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:37:47 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id s5so18913666wrw.2
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=d998qJyxuS5IJw1utjUKoKO0+2zYSSF8vALV735DT+Q=;
        b=f2SZEmZnBUstbtuhHJDg8qaMR6SuT/QDgLnXVdDr83m5bKpR+lgVrBpCaPt35/RS27
         +c9O4Ub34XP03gQVrkRfm3JFOXTh73T34RA8PaQtU2lOpadSkdqBRvI0RwK3tvoL3bGy
         5pyjSRUfo9n71zzZ8fIpEuT0ZhqVI5tjXhwjycVled9cTbm2/lKo19L7gGjQiZFdPym2
         1tnp7PB4oazJn39cBmCDgD4uu2+4i8yYC5kkwIulP0XxsYTRGQKtBIYEFVKbzMK4Fo/b
         RamBIPcP2samIVJld/+tBuAADmHVW8N6zi0iJm9nl4Qolmpv4lO1N+uPQGJj9Q96i6VC
         gPYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=d998qJyxuS5IJw1utjUKoKO0+2zYSSF8vALV735DT+Q=;
        b=OxgxOB2obl37CZKYJWwdxoo645U0bgV3ZcMWazek4V9wmcVmDGLFDiYheNixrpq9f+
         rZqOt04Ht4LDDJTrsxy7D634+9avTJof7n37FHHWt2719+OLegpFPhes+xJKGrgJAmd7
         9LyOL++87lSDZeiFRcfcZgWhKQYN22TiDHAhOBqzvUx2WNGvGX1o58TOUrDYzebdY4Yz
         znAMiigZ0S6Cz1W4gJUb1DEPTJzkJG8v13iEeVoY9yiPqbjc0G+idlD6XTI36vQDRXEs
         GYumejHfLPl0oLx4XwdHvKx64uWoAkXvmbVRyP4CeIpospZmm50rN4sCHEoToz1SWYAG
         ojhw==
X-Gm-Message-State: APjAAAWTy8f63zdpPb0BOdOCvE7Tl33CizQkVCZZNb2TsCnMjGI/n9SI
	G8tzH/nCxcOA6RWV6jfAHokeqFTz
X-Google-Smtp-Source: APXvYqzuceAejV45nm5uQixme1/kAHP6Mcjav5ip8BSQ6FDeFm+sl8lWdThAmn/H7tHWtURtYiptkg==
X-Received: by 2002:a5d:558e:: with SMTP id i14mr1073053wrv.140.1574699866832;
        Mon, 25 Nov 2019 08:37:46 -0800 (PST)
Received: from svr-pkl-eng-07.mgc.mentorg.com ([110.93.212.98])
        by smtp.gmail.com with ESMTPSA id t185sm9400479wmf.45.2019.11.25.08.37.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Nov 2019 08:37:45 -0800 (PST)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-gplv2][patch 1/2] packagegroup-core-tools-profile: exclude sysprof for non-gplv3 builds
Date: Mon, 25 Nov 2019 21:39:27 +0500
Message-Id: <20191125163928.4685-1-kergoth@gmail.com>
X-Mailer: git-send-email 2.11.1

From: Christopher Larson <chris_larson@mentor.com>

This recipe is gplv3, so exclude it when it's incompatible.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend

diff --git a/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend b/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
new file mode 100644
index 00000000..d93feb0b
--- /dev/null
+++ b/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
@@ -0,0 +1,3 @@
+inherit license
+
+PROFILE_TOOLS_X_remove = "${@incompatible_license_contains('GPL-3.0', 'sysprof', '', d)}"
-- 
2.11.1


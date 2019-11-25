Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7419.1574702698447092168
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 09:24:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=p92IouDl;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: kergoth@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DC4CE00FCC; Mon, 25 Nov 2019 09:24:58 -0800 (PST)
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
	*      [209.85.216.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5E65E00F78
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 09:24:57 -0800 (PST)
Received: by mail-pj1-f52.google.com with SMTP id a10so6892790pju.10
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 09:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CXMDy13TkCsL01THja/LwuPdz3sJ6iMRFUI2JNi4QTE=;
        b=p92IouDl2GsH4z9hSOH0PJq2mplgkRRFLaFuQcyE7B28EDhWpD+ESev9gOCYKvpS5r
         xooyHYq9xEs1dci+Pbm0QMRl2UphHSTCns+gufe3fGpPmTOoB3yPhd5G8/1JoBNKTVnC
         JThrgUQ/NjvA6GnQbnLuMy7NfVqe6VArF4Gr41R2BXM8dD24zMQ/JZiKY+cLbh2zVFlQ
         YTuezFkcY6dcu8tYQjTC/hdkGBm/7g1AKPz8OT8qGEN+4fWWMhGPLNBJkE+q+kQBAnPj
         SbtyXNAnFzFeOOrl2t7Ht6t0lLKkoOKB7zO8fF/QHcx0ERKCkltL7mOoi6NXull1lPo2
         4uBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CXMDy13TkCsL01THja/LwuPdz3sJ6iMRFUI2JNi4QTE=;
        b=ki3YvXqlIRFk43lDJ3cWu0gfzoyMm6wjZyQlK/hQLUQTMdJXAvohA/nn+PnzX30Oh8
         nngDENgh9Mw+1kzwBWtnVnLAW+NxUW136/IyWhzVc7+pYBB/vNPltr1iEcv3rf1BwXuV
         SiRz/N/SoW6EbBS6dinxrI30sxSRKUNPccYX8UcXFhdXW1V70Pm8OH/jjN0y03n54SMf
         m0iGRrqTlZ1QsWIZSlFalzMyhCmmBVqQ7vL7lnDag06wSWGV1vPAQyv2932Z/3Ad18+R
         PqqHnqA5EH39mQYvki2nCguK+7Ngbx3AwqXAg/VpbVq61FmHuaQFCnRX3aUC7vtIYDF9
         ANdg==
X-Gm-Message-State: APjAAAVBF5jS8GGgdkLdOde79RcpKmYPg/Hp5bPkarn5ojGAG+WCSH7t
	fVPkPXjEfV9F3TkIxeqQCXUQDA37H1k=
X-Google-Smtp-Source: APXvYqzWP7oci+oROLqMxjn1AwahqV6wzPOGnAxIHHl2aiUwb2pPbbMfbSZdSyhf4VwkBq+zYznWzw==
X-Received: by 2002:a17:90a:3746:: with SMTP id u64mr7796pjb.4.1574702696844;
        Mon, 25 Nov 2019 09:24:56 -0800 (PST)
Received: from svr-pkl-eng-07.mgc.mentorg.com ([110.93.212.98])
        by smtp.gmail.com with ESMTPSA id c84sm9593550pfc.112.2019.11.25.09.24.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Nov 2019 09:24:55 -0800 (PST)
From: kergoth@gmail.com
To: yocto@yoctoproject.org
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-intel][PATCH] thermald: fix the url
Date: Mon, 25 Nov 2019 22:26:33 +0500
Message-Id: <20191125172633.12230-1-kergoth@gmail.com>
X-Mailer: git-send-email 2.11.1

From: Christopher Larson <chris_larson@mentor.com>

The trailing slash on the github uri causes fetch failures. Ex:

    Cloning into bare repository '.../downloads/git2/github.com.intel.thermal_daemon.'...
    ERROR: Repository not found.
    fatal: Could not read from remote repository.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 recipes-bsp/thermald/thermald_1.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/thermald/thermald_1.9.bb b/recipes-bsp/thermald/thermald_1.9.bb
index 4f3650fa..718e0d4c 100644
--- a/recipes-bsp/thermald/thermald_1.9.bb
+++ b/recipes-bsp/thermald/thermald_1.9.bb
@@ -13,7 +13,7 @@ DEPENDS_append_toolchain-clang = " openmp"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ea8831610e926e2e469075b52bf08848"
 
-SRC_URI = "git://github.com/intel/thermal_daemon/ \
+SRC_URI = "git://github.com/intel/thermal_daemon \
            file://0001-Use-correct-format-specifier-for-size_t.patch \
            "
 SRCREV = "7f573b681a25b5ffbe81103ba9fdcf7fec0f2884"
-- 
2.11.1


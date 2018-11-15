Return-Path: <ste.lendl@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1ADBE00971; Thu, 15 Nov 2018 06:56:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ste.lendl[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B970E00901
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:56:57 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id p2-v6so18188511wmc.2
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=VrXSsKEd/nLx6WL5z+sERYUp+5eBGJaHNwHkJboo3A4=;
	b=BghDrW29XrW7h+pgDonx0HKLJfFi2NTD8nvIvCKuyldl96ItzyCBt31yXCKr0voQZD
	VNlM2MXdXGzg24YhRGRS0iRDVk56M06mE0xvJQ5gSUfjqk382xTG9HdtUoicQEgQkxYo
	t3JOdH+yE+UE4ZzyWB68t3C9nmCCwfY8MkZT2feb83GOdE7G8f6iPFBpwGYdOVVI7/wx
	dRvbi9jg2WED28cmHaMqVVXbD4qrx7aOnAu0LL208XdfbJs/RBrSRSKRzXV35iBms5fN
	pvqItexMl9AHGNOCPd306fw3Xd9f2odTOZYCEVpnXSbkpikRdEvv+PlKkxL/81lLf/sg
	kLmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=VrXSsKEd/nLx6WL5z+sERYUp+5eBGJaHNwHkJboo3A4=;
	b=WUXaw9usUZzPe+Rcwji5soHG+eEVVDzUt7njNijPrj/Q0TLYMwhUTYFb1UA4u5fZMp
	Ckj/1o/V41UnXmgZBbzrIalg/yq5IdYyZr/E/jGvRR+G+FEnvCANhaFXWISXtxt3Tr3/
	prh5zQoljJhradXWJLZruv0FK2HyBrxKSKfRXxCDi+vHGMrlKKPJ6kr3oRsaCacApQoa
	WLXCAbb1QtMIxKjbMyhDHPkFJdUjtVE6/mjfA6X/uwzUO9IzYV0oiqtPY1uFizKC+3MD
	Mam3vp5xLl8ET04ArvcnK4HQ0xQXeLdebAyka7EL2CUPe6rh6SHIeIzlA7yubRnZHpIw
	ZWFA==
X-Gm-Message-State: AGRZ1gKalKZ6CxdDy0oOTvxqfJPykh8c3I62P/b2UJlTrK/N6g+UtPUC
	eYUmUeoV+KbRMj/RF4va4hANYR3Zdfs=
X-Google-Smtp-Source: AJdET5e/llCYG+NAEGuuLNDlqYaTm481cUniuCqqfMbUqJstnZJbufo0Y8CUamD4lzAlpLLb4pn1RQ==
X-Received: by 2002:a1c:e07:: with SMTP id 7-v6mr5935435wmo.52.1542293815747; 
	Thu, 15 Nov 2018 06:56:55 -0800 (PST)
Received: from localhost ([212.69.186.40]) by smtp.gmail.com with ESMTPSA id
	g13-v6sm24057104wru.1.2018.11.15.06.56.54
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 15 Nov 2018 06:56:54 -0800 (PST)
From: Stefan Lendl <ste.lendl@gmail.com>
X-Google-Original-From: Stefan Lendl <sll@mission-embedded.com>
To: yocto@yoctoproject.org
Date: Thu, 15 Nov 2018 15:56:53 +0100
Message-Id: <20181115145653.19273-1-sll@mission-embedded.com>
X-Mailer: git-send-email 2.14.5
Cc: Stefan Lendl <sll@mission-embedded.com>
Subject: [meta-security][PATCH][sumo] Use git fetcher for lynis to fetch older versions
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Nov 2018 14:56:59 -0000

---
 meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
index c25b804..38149a3 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
@@ -6,12 +6,8 @@ HOMEDIR = "https://cisofy.com/"
 LICENSE = "GPL-3.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
-SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "5b9da89c616344bbc73cbc5688a4a0bd"
-SRC_URI[sha256sum] = "7a09c6fc71c65d572ca702df7b4394d71f9037484062ef71b76f59a2c498b029"
-
-S = "${WORKDIR}/${BPN}"
+SRC_URI = "git://github.com/CISOfy/Lynis.git;protocol=https;tag=${PV}"
+S = "${WORKDIR}/git"
 
 inherit autotools-brokensep
 
-- 
2.14.5



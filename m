Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED434E00DAE; Thu, 10 Oct 2019 04:22:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E729E00DA3
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 04:22:47 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id j18so7383242wrq.10
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 04:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=SVi+hQdJLkM8zDuXHjhfhe2qbV8DZYyi7KwJFOaxG+w=;
	b=F7BFsANLHOCgeNBuv/AbdqXlREtxr+WdpNZ3sK0YBzi41Ug6egMJcsgvxvpYO+QNIB
	ghwtpJQOdzOLGI68IfpwuP7x+/JZr0Gtv/2zkDY47h/KaQWVULl7PSNg3f46Vb7/orFL
	m3vbnpSvBEyIF+o45EyDm6Xu3D/PMbxUiRe6nEz/4NmYCPz3AayuW/xtwripa1fsxWCw
	csWr/gB9nKRaZSHj0M/Xobc+cV8341qPflcLVU0y+IYfHbqCud6iO5BqGa81cvMUesqH
	NjDKpkH/N7BuQ1iK3k+mBsIxrR1aFCFB/Pzjf6I2uuTZzmd6pyGJ/FOrLVuY6ZNkd7eL
	s+Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=SVi+hQdJLkM8zDuXHjhfhe2qbV8DZYyi7KwJFOaxG+w=;
	b=KHFj8kC/R6fL+ZG6lmM9cncwiNUCcItm1vFO2h5OAUOogwZNOpm0ZG5k8mR4O/27/b
	picXHblyStmPSlRorFpYMScDgQVYamZJy5eSbf2hSKddl8uv6UPSjeEn5UKWVGNeknX2
	KkRfSrau5DcjP+AaPZtKtyJM6cClJrHSkvzZ9Aeg3BlmUOiA7HdlNd21ir0BgufD1fcw
	VhLKWhfuyh1Lcyp60yaKXg5LCkTYABZ+ucqqirQbXBj4Zv5NZ0bfmJ2WB8HAsOmEGzGS
	rcWHNL+AbnM95rxmB+RSuaH9UrVOWZn1FwN+yTg39eTqTZ0J5H1+ma07hcStdBAuYSgn
	Otaw==
X-Gm-Message-State: APjAAAWS0zY3ekDqo2UVZW+G/yMK+KzOIeJmWU40p54aeUOBM2Vnbamz
	2gJbrEsMn88BVyQxUEsQLg1A39JoHI0=
X-Google-Smtp-Source: APXvYqyJOTpsIiKjwEYx3CEXxTOIMv68rgyjN+GLWb07n6hhBvj4btF9FN3M5h7CRfHhAZl7c05OYw==
X-Received: by 2002:a5d:6b52:: with SMTP id x18mr8004598wrw.66.1570706566246; 
	Thu, 10 Oct 2019 04:22:46 -0700 (PDT)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id 79sm6532065wmb.7.2019.10.10.04.22.45
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 10 Oct 2019 04:22:45 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Oct 2019 13:22:36 +0200
Message-Id: <20191010112237.4227-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] apparmor: add PRIVATE_LIBS for ptest package
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
X-List-Received-Date: Thu, 10 Oct 2019 11:22:48 -0000

Otherwise, the following occurs:
ERROR: apparmor-2.13.3-r0 do_package: apparmor: Multiple shlib providers for libapparmor.so.1: apparmor, apparmor-ptest (used by files: /home/alexander/development/poky/build-metaoe/tmp/work/core2-32-poky-linux/apparmor/2.13.3-r0/packages-split/apparmor/usr/lib/perl5/vendor_perl/5.30.0/i686-linux/auto/LibAppArmor/LibAppArmor.so)
ERROR: apparmor-2.13.3-r0 do_package: apparmor: Multiple shlib providers for libapparmor.so.1: apparmor, apparmor-ptest (used by files: /home/alexander/development/poky/build-metaoe/tmp/work/core2-32-poky-linux/apparmor/2.13.3-r0/packages-split/apparmor/usr/lib/python3.7/site-packages/LibAppArmor/_LibAppArmor.cpython-37m-i686-linux-gnu.so)

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.3.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
index 2e5d221..990d870 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -165,3 +165,5 @@ RDEPENDS_${PN} += "bash"
 RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
+
+PRIVATE_LIBS_${PN}-ptest = "libapparmor.so*"
-- 
2.17.1



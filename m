Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 125ECE009B4; Tue,  5 May 2015 08:27:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF358E00992
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 08:27:12 -0700 (PDT)
Received: by pdbqd1 with SMTP id qd1so199668293pdb.2
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 08:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=7U10mgJssUAYk8oj0iJSnXDuBiVZuUT4FL95RxJ9V3Q=;
	b=MzAhwLpeDw/l0v6ZV9PdfRSBPmeZNGK5jqC+seDQH+yIQ9RrS4gNvgC5XwuddE3TAt
	5f6cabWrFnLkNZv1ET/tVh7a4njg9F5Q3SUNbtUfzQRqR7VEDfezgvWvisKsHDT8vxPe
	ZgwmytNNi2ubz6SpLF11lqgG14AaOyA7u5FzM+EobyeibEUf2i3PLx2n2sUIjgYAuvzR
	ZXLaBcjrhp4Ro2ldtYFbuFcWuGvpWb3bAeSTNl9y7nMSiZzD57sEuvdw00cz4Y1r7jsv
	GtLy/r/iRvpK+fI+nlGdqRgW+uwf7BwfQRjLs3cY89uMy1dCOJnRPHXQ6vduY+uSbbWh
	7cAw==
X-Received: by 10.66.243.69 with SMTP id ww5mr52956438pac.106.1430839618572;
	Tue, 05 May 2015 08:26:58 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	om4sm16297946pdb.68.2015.05.05.08.26.56 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 05 May 2015 08:26:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 May 2015 08:26:51 -0700
Message-Id: <1430839611-22671-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] suricata: Fix QA warnings
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
X-List-Received-Date: Tue, 05 May 2015 15:27:17 -0000

WARNING: QA Issue: suricata rdepends on nspr, but it isn't a build dependency? [build-deps]
WARNING: QA Issue: suricata rdepends on nss, but it isn't a build dependency? [build-deps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/suricata_2.0.7.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/suricata/suricata_2.0.7.bb b/recipes-security/suricata/suricata_2.0.7.bb
index 7e99791..813deff 100644
--- a/recipes-security/suricata/suricata_2.0.7.bb
+++ b/recipes-security/suricata/suricata_2.0.7.bb
@@ -54,4 +54,4 @@ fi
 FILES_${PN} += "${sysconfdir}/suricata ${logdir}/suricata"
 FILES_${PN}-dev += "/usr/lib/python2.7/site-packages"
 
-RDEPENDS_${PN} += " python"
+RDEPENDS_${PN} += " python nspr nss"
-- 
2.3.5



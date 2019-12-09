Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5858.1575858074960002522
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Dec 2019 18:21:15 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: hongxu.jia@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83088E010A3; Sun,  8 Dec 2019 18:21:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 098B6E00BA1
	for <yocto@yoctoproject.org>; Sun,  8 Dec 2019 18:21:13 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xB92LCt9010965
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Sun, 8 Dec 2019 18:21:12 -0800
Received: from ala-lpggp7.wrs.com (147.11.105.171) by ALA-HCB.corp.ad.wrs.com
 (147.11.189.41) with Microsoft SMTP Server id 14.3.468.0; Sun, 8 Dec 2019
 18:21:11 -0800
From: "hongxu" <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <joe_macdonald@mentor.com>
Subject: [meta-selinux][PATCH] rename sed_4.2.2.bbappend to sed_4.%.bbappend
Date: Sun, 8 Dec 2019 18:21:11 -0800
Message-ID: <20191209022111.113292-1-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Since upstream oe-core [bd40260cba sed: upgrade to 4.7],
renme bbappend to match the new version

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-extended/sed/{sed_4.2.2.bbappend =3D> sed_4.%.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-extended/sed/{sed_4.2.2.bbappend =3D> sed_4.%.bbappend} (=
100%)

diff --git a/recipes-extended/sed/sed_4.2.2.bbappend b/recipes-extended/s=
ed/sed_4.%.bbappend
similarity index 100%
rename from recipes-extended/sed/sed_4.2.2.bbappend
rename to recipes-extended/sed/sed_4.%.bbappend
--=20
2.21.0


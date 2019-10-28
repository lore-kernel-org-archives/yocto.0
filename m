Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01AADE00D98; Mon, 28 Oct 2019 15:06:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [83.102.40.152 listed in list.dnswl.org]
X-Greylist: delayed 426 seconds by postgrey-1.32 at yocto-www;
	Mon, 28 Oct 2019 15:06:54 PDT
Received: from sinikuusama2.dnainternet.net (sinikuusama2.dnainternet.net
	[83.102.40.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86EC6E00D85
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 15:06:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by sinikuusama2.dnainternet.net (Postfix) with ESMTP id 740EC10EA0;
	Tue, 29 Oct 2019 00:00:16 +0200 (EET)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from sinikuusama2.dnainternet.net ([83.102.40.152])
	by localhost (sinikuusama2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041)
	with ESMTP id r3jUDmEqrME4; Tue, 29 Oct 2019 00:00:16 +0200 (EET)
Received: from omenapuu2.dnainternet.net (omenapuu2.dnainternet.net
	[83.102.40.54])
	by sinikuusama2.dnainternet.net (Postfix) with ESMTP id F318B10D1E;
	Tue, 29 Oct 2019 00:00:15 +0200 (EET)
Received: from localhost.localdomain (178-75-137-78.bb.dnainternet.fi
	[178.75.137.78])
	by omenapuu2.dnainternet.net (Postfix) with ESMTP id 75F912CE;
	Tue, 29 Oct 2019 00:00:12 +0200 (EET)
From: Anders Montonen <Anders.Montonen@iki.fi>
To: yocto@yoctoproject.org
Date: Mon, 28 Oct 2019 23:59:27 +0200
Message-Id: <20191028215927.25625-4-Anders.Montonen@iki.fi>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028215927.25625-1-Anders.Montonen@iki.fi>
References: <20191028215927.25625-1-Anders.Montonen@iki.fi>
Subject: [meta-security][thud][PATCH 3/3] apparmor: Fix xargs error
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
X-List-Received-Date: Mon, 28 Oct 2019 22:06:56 -0000

The functions script uses flags specific to GNU xargs.
Add findutils to RDEPENDS.
Fixes: /lib/apparmor/functions: line 92: echo: write error: Broken pipe

Signed-off-by: Anders Montonen <Anders.Montonen@iki.fi>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index ad7f94e..d2d83ca 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -177,7 +177,7 @@ FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
 ALLOW_EMPTY_${PN} = "1"
 
-RDEPENDS_${PN} += "bash lsb"
+RDEPENDS_${PN} += "bash lsb findutils"
 RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3 python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib"
-- 
2.17.1



Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F166AE0155A
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 09:48:43 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id ey16so974689wid.10
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 09:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=bSjON9//3iW1NqHNr698bV+H3RQaCzlVF+w83X2LBog=;
	b=R3419r/sDsCpgmAlNun0fXiiTRJoGXKOAtBO7I1mCR1SAMRFRGGSL5fyP0HFlMT85E
	9oq2JQ2qNB4AaEGdLr+xyREHu7wb0HDvR9tsm995EimW9pulqKS1FUh2UJaSkVjpK7Jd
	f4jeZvD/DTCGl3mPmOdugWjeA78vVwRRboKKWJC9WQwfHE3od4voY2aS+5Emg4WJnRPY
	v/3vkC1iC0+oVeMUBpp34pOzgCWuvMLkgOGJDingsEfDN0w5iBHi2RMxL0XFIm0bsL00
	ha/2H+eBUe7TVFoqz6NuEdfweJjRAVmrkn+n4vNriwOHtT3xRmkiar5+ZrMjoik0OjjF
	ONNA==
X-Received: by 10.194.86.106 with SMTP id o10mr20325598wjz.93.1372178922311;
	Tue, 25 Jun 2013 09:48:42 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id ev19sm5333422wid.2.2013.06.25.09.48.40
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 25 Jun 2013 09:48:41 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 25 Jun 2013 17:45:12 +0100
Message-Id: <1372178712-19450-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQkuG5zJ+h+Z4iNFx3ws0QOzYrFJWcvg4XHa56dAelJsjYuzBR4+dPrS0Cy5C2F9eIGRcmfm
Subject: [meta-intel][PATCH] lms8: handle different host setups
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
X-List-Received-Date: Tue, 25 Jun 2013 16:48:46 -0000

The configure script looks at the *host* environment to decide where to install
the init script, so it's location at packaging time can change.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 common/recipes-bsp/amt/lms8_8.0.0-7.bb |    8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/recipes-bsp/amt/lms8_8.0.0-7.bb b/common/recipes-bsp/amt/lms8_8.0.0-7.bb
index fbb4e45..65c413a 100644
--- a/common/recipes-bsp/amt/lms8_8.0.0-7.bb
+++ b/common/recipes-bsp/amt/lms8_8.0.0-7.bb
@@ -26,7 +26,13 @@ INITSCRIPT_PARAMS = "defaults"
 do_install_append () {
 	mv ${D}/${sbindir}/lms ${D}/${sbindir}/lms8
 	install -d ${D}${sysconfdir}/init.d
-	mv ${D}${sysconfdir}/rc.d/init.d/lms ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+	# The configure script looks at the host to decide where to put init
+	# scripts, so move it at the same time as renaming it.
+	if test -f ${D}${sysconfdir}/rc.d/init.d/lms ; then
+		mv ${D}${sysconfdir}/rc.d/init.d/lms ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+	else
+		mv ${D}${sysconfdir}/init.d/lms ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+	fi
 	sed -i 's/^NAME=lms/NAME=lms8/' ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
 	rmdir ${D}${datadir} || :
 }
-- 
1.7.10.4



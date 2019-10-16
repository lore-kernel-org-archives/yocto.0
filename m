Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13FF7E00D5F; Wed, 16 Oct 2019 09:55:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 906B3E00BFF
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2019 09:55:18 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id a2so15079589pfo.10
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2019 09:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=dfxTsq5wegcgWowfCstzmTNDahGQgaQggqlJS52036A=;
	b=Yg0kY3G7JTJ+cWxn8TRx8/5mjebQBZbvSlMpygt83Ii+z7P6/+1dUPxnMZezD5IwON
	cLZamcs85f0eqNG28XRE4dDkOTs3tSrUImcJyxub6Vp82UYdpMhY2JlpCkfrx857IGz3
	J5GTAYGNr6r52hEmIFxG8wC6szmb8BnEDDcHxNg5++AIopKslB4WUYE5yRUtqRJ68t/V
	/I3bXGthenfDyWDIL1zJzexappTatXs3m5+uRDQP/+VJjgS1YBbQrCKOB5C7bhnPgb0A
	hppDCvriSZOX1FcnAp5RYh0wSb0UKVIuOgE/LL5No1OA9h5fVgGEOT3gB9R4acRN41Ng
	VxoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=dfxTsq5wegcgWowfCstzmTNDahGQgaQggqlJS52036A=;
	b=K4ayCLfX5gIxkLWMpn4yHAYdjtWh0WbI5TvKeBI17qLSGebQCtmwvgo7M5aeWalS+i
	D2OqiraVTYJ7FyhsAJxLO0cnNFACFISw6FTTBFksLDCeOUjGLd6porDDQhI2WuURO4x7
	2DuZSl1y08Wx/sue13mNnlmV0IRgWl64ISviJZBvrnQmmCNvQPzEs3+nL5P6g3FUiW/7
	OSrakCMcKyUbcaV7gXWjRfzdb+pPIj/1q1VFqtrNJj09vX2jW/1qBv7zwaNDUHou0qog
	QaY+eeXtVCQmynrNjR36bSsGzopaXn6VawRkUJt8vac6uXsArbxm0qnUhXoW4+vktPuW
	XUQg==
X-Gm-Message-State: APjAAAXf1zHwAL3rdORT87PevjjXEefjc5tRD8TGcarxEX0cozK4LdVW
	XkHS2Q5vy33DadtRLzNay7j42ufv
X-Google-Smtp-Source: APXvYqzzsu98CCpPhgFrmElvML0dBltC/8JsTeqhdqxROUKZ9V4ZdLqdddQbPB4xvIl0zwlFUEpVMQ==
X-Received: by 2002:aa7:95b9:: with SMTP id a25mr44364172pfk.181.1571244917679;
	Wed, 16 Oct 2019 09:55:17 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	v9sm9707716pfe.109.2019.10.16.09.55.16 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 16 Oct 2019 09:55:17 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 16 Oct 2019 09:55:15 -0700
Message-Id: <20191016165515.1738-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] apparmor: fix systemd support so it works
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
X-List-Received-Date: Wed, 16 Oct 2019 16:55:19 -0000

[Yocto # 13568]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.3.bb | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
index 6183064..d434fd3 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -42,7 +42,6 @@ PACKAGECONFIG[aa-decode] = ",,,bash"
 PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
 HTTPD="${@bb.utils.contains('PACKAGECONFIG', 'apache2', '1', '0', d)}"
 
-
 python() {
     if 'apache2' in d.getVar('PACKAGECONFIG').split() and \
             'webserver' not in d.getVar('BBFILE_COLLECTIONS').split():
@@ -86,7 +85,6 @@ do_compile () {
 do_install () {
 	install -d ${D}/${INIT_D_DIR}
 	install -d ${D}/lib/apparmor
-		
 	oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" install
 	oe_runmake -C ${B}/binutils DESTDIR="${D}" install
 	oe_runmake -C ${B}/utils DESTDIR="${D}" install
@@ -116,8 +114,13 @@ do_install () {
 
 	install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
 	install ${WORKDIR}/functions ${D}/lib/apparmor
-	install -d ${D}${systemd_system_unitdir}
-	install ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
+	sed -i -e 's/getconf _NPROCESSORS_ONLN/nproc/' ${D}/lib/apparmor/functions
+	sed -i -e 's/ls -AU/ls -A/' ${D}/lib/apparmor/functions  
+
+	if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+		install -d ${D}${systemd_system_unitdir}
+		install ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
+	fi
 }
 
 do_compile_ptest () {
@@ -153,13 +156,16 @@ if [ ! -d /etc/apparmor.d/cache ] ; then
 fi
 }
 
+# We need the init script so don't rm it
+RMINITDIR_class-target_remove = " rm_sysvinit_initddir"
+
 INITSCRIPT_PACKAGES = "${PN}"
 INITSCRIPT_NAME = "apparmor"
 INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
 
 SYSTEMD_PACKAGES = "${PN}"
 SYSTEMD_SERVICE_${PN} = "apparmor.service"
-SYSTEMD_AUTO_ENABLE = "disable"
+SYSTEMD_AUTO_ENABLE ?= "enable"
 
 PACKAGES += "mod-${PN}"
 
-- 
2.17.1



Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03EEBE00B87; Sun,  1 Oct 2017 09:43:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 981B9E00B87
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 09:43:49 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id p5so1208004pgn.2
	for <yocto@yoctoproject.org>; Sun, 01 Oct 2017 09:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=jWjGHHlmIh6DbtsLekvut6Qt9zLIwtmJRH7RwmBcrKI=;
	b=IW2RHGe3BjF1nF3475obtL0UxCaoTgcw9CWN+r1JoGoZqR8SifrOhxrKOcaK6EIUZ0
	tcN95f065150Rl9U4PWd8RvTOw5kpuP88IcopzoBl9YSipHeWYtSco7i/XxwsRNIl0/b
	B8M7CWsdxGpnUDLS+mF/oT/8Nj+wiaUFaDRPMV5zQC7nnQpX9fnM8Q8JOYJlKNwez2Hj
	5DkPEjGcWmqiWfv4yv23A/FwWIorXglnizrORiENOsAptgdkKOuxAIJkVlNS/y0189vF
	nEyY1predULJUP+0EESD7zo7QoMmq1UTl7lh6tZM4xL7GOOU8HU8oaNSMMDT09r8SNOd
	2cyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=jWjGHHlmIh6DbtsLekvut6Qt9zLIwtmJRH7RwmBcrKI=;
	b=rsLMLH26k/Y08nU2GxUksINbif0HUEjLgh+tvU4vwdJQMcbas2bO4cSBQyQ9vvSJ+6
	oVbm9z/pW9eKni5KL+8l8F+J3g18BOfQsbDghYAx3R4UZv6+alRGuvjjU0kmTCBfyCOt
	K2/3sGjfnG5I4WV8msEX2ZnLyEYAIolm9JwXm8mSMPHVapPs3BlnYQgN8P6AIfQG9LCa
	kISrnzKZ9Z8DWDlfXlbloxUadGLjEMvhwB5ozJSv/VNTQDW+HrysL2XP1T++y/HL4xbE
	SRSbRMnpuzI7kKEKp6lj3/SlBoeCTCFMKp6lvIqq2avuex+2g4tNBDqMArRn2nLBPXba
	MK2A==
X-Gm-Message-State: AMCzsaU80KpNo+YH8MlocJlP3fjiqlDrtytCWDfyEouNud/jCFdNpFog
	uKtiEjnQgxzlWsRILag2gdGGtg==
X-Google-Smtp-Source: AOwi7QAJAeA21ZxrCSKAm0o6AUZeT4biwZF46So/cRhGJgEm7vbfKgHVhdYsDtIieKv/bwDDrP2T8g==
X-Received: by 10.98.206.68 with SMTP id y65mr626241pfg.324.1506876229448;
	Sun, 01 Oct 2017 09:43:49 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e0ed:d79b:a9ce:26d1])
	by smtp.gmail.com with ESMTPSA id
	h1sm14546794pgf.54.2017.10.01.09.43.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Oct 2017 09:43:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  1 Oct 2017 09:43:39 -0700
Message-Id: <1506876220-22710-9-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
References: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 09/10] bastile: fix QA issue
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
X-List-Received-Date: Sun, 01 Oct 2017 16:43:50 -0000

WARNING: bastille-3.2.1-r0 do_package_qa: QA Issue: Symlink /usr/sbin/UndoBastille in bastille points to TMPDIR [symlink-to-sysroot]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/bastille/bastille_3.2.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 969ce30..eee1a38 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -151,7 +151,7 @@ do_install () {
 
 	${THISDIR}/files/set_required_questions.py ${D}${sysconfdir}/Bastille/config ${D}${datadir}/Bastille/Questions
 
-	ln -s ${D}${sbindir}/RevertBastille ${D}${sbindir}/UndoBastille
+	ln -s RevertBastille ${D}${sbindir}/UndoBastille
 }
 
 FILES_${PN} += "${datadir}/Bastille ${libdir}/Bastille ${libdir}/perl* ${sysconfdir}/*"
-- 
2.7.4



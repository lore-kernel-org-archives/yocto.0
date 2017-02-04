Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18BF1E00510; Fri,  3 Feb 2017 16:02:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
Received: from mail-pg0-f42.google.com (mail-pg0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFFB6E004D2
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 16:02:48 -0800 (PST)
Received: by mail-pg0-f42.google.com with SMTP id 194so10505338pgd.2
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 16:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=i3deKOIhLWLHcRV9eQItDhPihOqEajqvzG1Hr/mrYRU=;
	b=rkkmhfxLErbbY8PPcfwix0erxURCqecjrNmBHpJ5PQUcoLy+PnSQ1lSRqIcvtGCAri
	EPcTnXb1fyngkFzERMFINHS/1XdkVQHmKr3O+TfNstxj+GXudZTDs9CokCIg/X7iJDtP
	gfy4ZxGgmZNe1DAibc6gxES2U1lOicfZpM14Rfhs8riJGYT2Pwkg6uJPcm2bdyMKWf0P
	Nnuu81iFUYh7VnzpEK/W1Gn/1Esxb0QVlEA1eGyH9YU8AJG3Dp1+0yTy79T+4Se1zt+5
	ha8CdaojuX2k3NpLarIyn08ywxYC+/gK9PiwU37FKB9zadRmTVrjvOETy/C/Zdd99DzY
	WNdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=i3deKOIhLWLHcRV9eQItDhPihOqEajqvzG1Hr/mrYRU=;
	b=MHNbNB1KURUU2WmgWfzdywIY4kg2WB+cbi/sNBTd58R2O/y4Pm1f9EYM0PeqrT3oA9
	/mVSh05tOA2Eo/GJGL3ZjIiiMuMC3wkLBqpwckA3kPXsFQURsAiZbVfNjJxpn8UGs4U6
	MFAhkKcqNM78dgYkMC6YlGDS0Vms2Vy7VEEJCcynmYjfrzosfQZMqATDx7U8Ctp5gydq
	DBQz982xlbu/IDbrYA925MT6AayMywj18qSbJqx6dQDNtBBrLSsq6lsbWhicGW7qDelI
	vaZPuVn+GZzkl0MIFqQKkdfrHF0MVDOmM60PH7NI2VdG3V0ql06v4qmXBEZnvlBOBpq4
	Jd9g==
X-Gm-Message-State: AIkVDXIPeGCCrs+L6AMWNGCmb6S0/VjFMpAIUOQ0ayP7SnXckljjnEJkvb6DAc4QowVO3w==
X-Received: by 10.84.210.232 with SMTP id a95mr24867355pli.31.1486166568164;
	Fri, 03 Feb 2017 16:02:48 -0800 (PST)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:d531:58a3:5f79:edad])
	by smtp.gmail.com with ESMTPSA id
	r78sm69765276pfe.55.2017.02.03.16.02.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 16:02:47 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 16:02:46 -0800
Message-Id: <1486166566-28447-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-selinux][PATCH] audit: fix build failure
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
X-List-Received-Date: Sat, 04 Feb 2017 00:02:52 -0000

From: Armin Kuster <akuster@mvista.com>

ERROR: oe_runmake failed
| /bin/bash: swig: command not found
| Makefile:776: recipe for target 'audit_wrap.c' failed
| make[4]: *** [audit_wrap.c] Error 127

add swig-native to depends

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/audit/audit_2.7.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/audit/audit_2.7.bb b/recipes-security/audit/audit_2.7.bb
index 6bcbecd..61d084b 100644
--- a/recipes-security/audit/audit_2.7.bb
+++ b/recipes-security/audit/audit_2.7.bb
@@ -26,7 +26,7 @@ INITSCRIPT_PARAMS = "defaults"
 
 SYSTEMD_SERVICE_${PN} = "auditd.service"
 
-DEPENDS += "python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30)"
+DEPENDS += "swig-native python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30)"
 
 EXTRA_OECONF += "--without-prelude \
 	--with-libwrap \
-- 
2.7.4



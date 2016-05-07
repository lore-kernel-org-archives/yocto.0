Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22C9DE00C8B; Sat,  7 May 2016 07:15:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2555E00C8B
	for <yocto@yoctoproject.org>; Sat,  7 May 2016 07:15:20 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id yl2so12336806pac.1
	for <yocto@yoctoproject.org>; Sat, 07 May 2016 07:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=cLrHbrDyPBYxFQZKWI1Qq9Cd0Lb1RlXS8FOaMT3gIYw=;
	b=lDOxYlQ0J8XY/CH0wBlpwlbpxIs+1e3tqPHIWzZUzKfcDHhOp5whxpxDqh7vA0xozW
	SSSLMW9tBVTvUP8pON93yXyKOqNlm4PYT5AHoxQLwFFa954J0DLI98lBfSSQ0PVwnidS
	Z/P4D9z9dVvYV6l2zumdnweUSESU/sx5EV15TpGVHrDfqfBbtmXhmVFsL3/xXSdKdrsP
	gIvMT0f+xInAKow4m4F8IZJNisBwd615GGNp/YecEvTHzQPixS8aBrpPMaOn2G5RiAvP
	HVSmZEU7Hs2rtkEfytsjMyJAeKZoR2TB8c+3dgBZJwxDaRffpFx/Qrtq6bTS6RAiWVYK
	U2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=cLrHbrDyPBYxFQZKWI1Qq9Cd0Lb1RlXS8FOaMT3gIYw=;
	b=nDKsJ69xCedXN/5EEa2CoRkF8bTOwAksDS/rSOlICeNn55DMK+Wp0M1pQuIzNL17G2
	TvAuwvfCjaMletibTgZTZ2ptiS1Q4+2pW9U6DRS+k1zOKO/xWiLs+QOKCv0N1CREWB6n
	oq7R5rNdL2h6INZbagesxqbQQqznxrbT+6nbEAOXB95edQJoQ2qy2q2bY8Qq7QKCvH0P
	uVBv8A12RUw7u0nROk5Gf+j0XPQnzkxMlQ3eX6BtSOIwv9Wd0xx8OONFlhbW4/+HEQB+
	FArmuGCMuiGJQ8A3+5v8SgW7yhryuH0sJPFHDnvXuusymB47KeOzc5i+1sSVk6Wcd41w
	vYdQ==
X-Gm-Message-State: AOPr4FUDP4liG/mIhKcYEd23AjpT54/cQpeT13uAIiLjNtVqZrDRGs98lBus610vX7FczQ==
X-Received: by 10.66.132.103 with SMTP id ot7mr36760779pab.27.1462630520076;
	Sat, 07 May 2016 07:15:20 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	y66sm28585654pfy.66.2016.05.07.07.15.18 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 07 May 2016 07:15:18 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  7 May 2016 07:15:16 -0700
Message-Id: <1462630518-1636-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH 1/3] sssd: Fix new QA warning
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
X-List-Received-Date: Sat, 07 May 2016 14:15:25 -0000

NOTE:meta-security/recipes-security/sssd/sssd_1.13.3.bb: base_contains is deprecated, please use bb.utils.contains instead.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/sssd_1.13.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/sssd/sssd_1.13.3.bb b/recipes-security/sssd/sssd_1.13.3.bb
index d538af3..fd4f2a2 100644
--- a/recipes-security/sssd/sssd_1.13.3.bb
+++ b/recipes-security/sssd/sssd_1.13.3.bb
@@ -24,7 +24,7 @@ CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
     "
 
 PACKAGECONFIG ?="nss"
-PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 
 PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
 PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
-- 
2.3.5



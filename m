Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7C77E00D24; Thu,  4 Apr 2019 15:18:03 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EBAFE00D20
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 15:18:01 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id b65so1863302plb.6
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 15:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=mc6MJK6sFCEzbKlfIie42Dn/Urbq94aPJDPrrIHx26k=;
	b=IAHDYdS1pgqA1sYRXy6x6mf2ocJAwvJQKzgUWf0dIajuXWDZ850KAYwTM7ciUlcdMC
	KAji7jhsnHSJwFEKEsY52Erq6yJXDDH2PuRGUnNPZcUGJL3Kif4rpUnORINzJVVAak9o
	fgpogRZLOSpkEfJMiw9xITcQvBqkGj2fq+nLZkirRm17Gp9cKF2UYkPo23QzqoWTTyMU
	wPeQDTg5GtO1QPG8RA1k0lJ2tobxFSTGxsTmEYjuThZI7v8h5yTfhlj7ukwW7yIwWE0b
	ahnjTQ8pGTk7byiure3i7dIDqHpiUJIPeKJXESPCAYb/QjYNcsEy8K5oNcj5TtjyKTS+
	CyLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=mc6MJK6sFCEzbKlfIie42Dn/Urbq94aPJDPrrIHx26k=;
	b=EbYgN5wd5HL/P+KR/q/Rbbrl/KBWsv5mI7pRiarbsL4XF+q0bLEFrUnHmiQ/cXgre2
	vGbyvTdrDU00FqGwpRHm6McEXp1016ownWjpwTn0sh24uAM3Hx/Yge0wDCAX9U461cTM
	VjZMwG5ejQaPZpY31lSXmuditueHmpwp21gfIJHloAlFFzd+b2niz4g7XPi64K6DTCuw
	5ja9ebAzGK+8yhMG1ra5HVlSxXdIXtEc0SdF5yWMKZ5XA4G2V6/3wJH17RsMu+ytM49M
	ns9vUDBU6V9DPCPQWtkLOeJ5/ie5RGvDLOMlx4GHsHtHMaUNvXTxyF2K1rYg7nNj7ymW
	wwng==
X-Gm-Message-State: APjAAAUIL+BBG0PKUHbnRu4IdQmxvFVW12FIHO8wb3/9j2UD+hKw6zOe
	RA8BKTPAMBcZ1CSrtYLXKXm1eKzdhAY=
X-Google-Smtp-Source: APXvYqzGAesmoTX5O4xaaodQuBQRwcK8HWABRXf8VYugpoMYxFf5zwYMGds0uS8l9y60AFVafPnlLg==
X-Received: by 2002:a17:902:b286:: with SMTP id
	u6mr9118416plr.310.1554416280629; 
	Thu, 04 Apr 2019 15:18:00 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id
	v82sm46739718pfa.170.2019.04.04.15.17.59 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 04 Apr 2019 15:18:00 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Apr 2019 03:47:46 +0530
Message-Id: <1554416266-28620-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1554416266-28620-1-git-send-email-akuster808@gmail.com>
References: <1554416266-28620-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] sssd: add DISTRO_FEATURE sssd
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
X-List-Received-Date: Thu, 04 Apr 2019 22:18:03 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 34bc8c8..d6a308c 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -16,7 +16,7 @@ SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f
 
 inherit autotools pkgconfig gettext python-dir distro_features_check
 
-REQUIRED_DISTRO_FEATURES = "pam"
+REQUIRED_DISTRO_FEATURES = "pam sssd"
 
 SSSD_UID ?= "root"
 SSSD_GID ?= "root"
-- 
2.7.4



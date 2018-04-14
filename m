Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7A93E00B1A; Sat, 14 Apr 2018 15:33:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6E68E00571
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 15:33:24 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id j11so2270101pff.10
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 15:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=cZYZ8RMDNJKyTtHWZvYHrSnBa8gP+XIWyKZbRp8TSco=;
	b=APCqI+x9wRPNPp2gUkzm1b7o8pWGABCK5k9dmPoUD9c2vkH9F+Xnxelskt/Eet4BjC
	6rI7HtFUusPvHnOrJVBORW15j/Yy7NGl9aS7gEmK/txrkC/9+zdtw0/oLTtcZupTUqBb
	DdiDfVZfLyl0/K/x3rwx40Xnc2K1ykfjaua0F0jJfp8ZOmBzmGMkDHehuVd6kIZS0r1e
	TPp003yoc2/L7iNvLvFa/RY3RzmTEXm/lCTLaoXD72hI3D1pdAAxXUnaVsVVLDXiIhU+
	uksI2G8wOrVjVSNl+sdOqITqQKaZssJ+kovAWw5XB9yediHo3xzPw27lTvRvFC0Ikp2p
	u7mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=cZYZ8RMDNJKyTtHWZvYHrSnBa8gP+XIWyKZbRp8TSco=;
	b=UtoiC8XHv6JkkzXGiPaM2zk99FkK/5bA4xRQ3gPpAjILidxzNjGoPKjtkObSH3ld63
	awHxNyLfUqqsuc639aLUc520dzOCnvSOBmGHODaC3i4KZ94gwExMPPdiUFW24VElnySd
	Yabu/3m+JFHSzi7PHWE1P/C235pHQjkQsEdzabSADRyw2e0yGTv8jgiyo/7ufYhgMTph
	XqoHWC4HIKHsLQEs590sm8Sxd0WCWt3G0gSmG+c5DIxQuy77ICtwgG8eNQ4bOKavou/+
	1/Xg4RqwuMZ2EEfv3GzJWBFHr3xcqugiEu/p1Y8CcMxjbIcIiNShoWivDxSJ8kLoY9kK
	WHSQ==
X-Gm-Message-State: ALQs6tCpISYa51q46BpIbCvvkjIfSbfOWlTY5SYy4nNm4OIaZO4F2v5l
	7Q3r9eqIk0KSJm4Zj2OD+NU=
X-Google-Smtp-Source: AIpwx493N/CDLQlUcGR5ljyib9wKFf81KXFoGMUQvXAmX0/ns8PKFWPxQG8H3vKATLnKbW3a/l+pPg==
X-Received: by 10.98.58.129 with SMTP id v1mr16440935pfj.231.1523745203979;
	Sat, 14 Apr 2018 15:33:23 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:19e4:d7e5:ee20:78ac])
	by smtp.gmail.com with ESMTPSA id
	c28sm23116731pfe.27.2018.04.14.15.33.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 14 Apr 2018 15:33:23 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Sat, 14 Apr 2018 15:33:21 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Sat, 14 Apr 2018 15:33:19 -0700
Message-Id: <1523745199-16128-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-selinux][PATCH] policycoreutils: remove oe_filter_out
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
X-List-Received-Date: Sat, 14 Apr 2018 22:33:26 -0000

bb.data_smart.ExpansionError: Failure expanding variable WARN_QA[:=], expression was ${@oe_filter_out('unsafe-references-in-scripts', 'ldflags useless-rpaths rpaths staticdev libdir xorg-driver-abi             textrel already-stripped incompatible-license files-invalid             installed-vs-shipped compile-host-path install-host-path             pn-overrides infodir build-deps             unknown-configure-option symlink-to-sysroot multilib             invalid-packageconfig host-user-contaminated uppercase-pn             ', d)} which triggered exception NameError: name 'oe_filter_out' is not defined

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/selinux/policycoreutils.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 442b086..1842fd8 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -64,8 +64,8 @@ RDEPENDS_${BPN}-setsebool += "\
 "
 RDEPENDS_${BPN} += "selinux-python"
 
-WARN_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${WARN_QA}', d)}"
-ERROR_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${ERROR_QA}', d)}"
+WARN_QA_remove = " unsafe-references-in-scripts"
+ERROR_QA_remove = " unsafe-references-in-scripts"
 
 
 PACKAGES =+ "\
-- 
2.7.4



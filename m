Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21E0FE00C72; Mon, 17 Oct 2016 17:02:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 426DFE00C3A
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:50 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id fn2so8806005pad.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=d6LXru8Sgjj1sMv99olro0bz2ExCOaXSIGv81giff9Y=;
	b=i5baBevrL6Qmhe1aWIuKkI9flOhS40X2QRA1Wz5StFcHtUBKCJkdLrYr3xmUbCuV5q
	iSImzFozjN0fFqamjjRIEFVDebP/qHzZ0iJ+0ibWObJL3HWJeRaJpH6nvDUpEj/XH+d+
	Jcq8kpQ4Msd/tWrT4pDqGZDibjEJF6Xup5RjZQIrOEHcsb4tYMtfFMD4lrTRhY9Xrh3p
	U+GE22ShPEMLd/zqfXgpwrmKyt+6MF63OdlYpfHr6pxAtlcgiLvBlfmF1kBEswDGcLth
	5zzMJZ8HACwMwtqG2Xn+AYaJfgcvdzqBQD+9V28BZ/fxCAV+zh2cyX7IM6Xvy5rZSLGK
	0l2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=d6LXru8Sgjj1sMv99olro0bz2ExCOaXSIGv81giff9Y=;
	b=jBGVGA9IkTR/qO1eceR0FnCB4OzXcgER8wyFH+I5mqxBqW9Vgkj6nkKcRFoy8reVLB
	8KjssfrEcq6SxGwW034OEPQFkZUBwk4SGU+Bo+vWw7iNLcdAbZhp9pWkuvKVngVANn7N
	4bTCd4c7hRqKoaXvbmXJ+mBzVhJx9hkMIuBBZoxboE6RYcHjWEgvWwACYkODxJUUPri9
	F6HtmNHRcImW+evuUEtqDRa3xVLTsW3P2fEwsa4TFU/oMHhqzf6deUjWyMUvn5YtPnfX
	XQ5lB5BHQFVQ7+z8aRwziV3ccNvWb8dSQBG5dmBmXgLXjTwhfGh0IruvQDNxErmQ2BRP
	YQQw==
X-Gm-Message-State: AA6/9Rk4vgRqVuuuaksEsRn+6NypG1WV+mf9znvrp9TYhY66QhimE5FFRfgW5rtlTJV+oA==
X-Received: by 10.67.21.169 with SMTP id hl9mr105880pad.185.1476748969796;
	Mon, 17 Oct 2016 17:02:49 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:29 -0700
Message-Id: <1476748950-21342-16-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 16/17] libnetaddr-ip-perl: remove package. not used by anyone in this layer
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:53 -0000

latest version does not build either

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-perl/perl/libnetaddr-ip-perl_4.069.bb | 26 --------------------------
 1 file changed, 26 deletions(-)
 delete mode 100644 recipes-perl/perl/libnetaddr-ip-perl_4.069.bb

diff --git a/recipes-perl/perl/libnetaddr-ip-perl_4.069.bb b/recipes-perl/perl/libnetaddr-ip-perl_4.069.bb
deleted file mode 100644
index 69c2d83..0000000
--- a/recipes-perl/perl/libnetaddr-ip-perl_4.069.bb
+++ /dev/null
@@ -1,26 +0,0 @@
-DESCRIPTION = "This package contains the IP.pm module with friends."
-
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-
-LIC_FILES_CHKSUM = "file://Copying;md5=cde580764a0fbc0f02fafde4c65d6227"
-
-DEPENDS += "perl"
-
-SRC_URI = "http://search.cpan.org/CPAN/authors/id/M/MI/MIKER/NetAddr-IP-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "7721135fcea390327f75421a6b701144"
-SRC_URI[sha256sum] = "96739afc484eca1597c4f4b520864b342169c8fdeef486778511e5a1527ba4e7"
-
-S = "${WORKDIR}/NetAddr-IP-${PV}"
-
-EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=${STAGING_INCDIR}"
-
-inherit cpan
-
-do_compile() {
-	cpan_do_compile
-}
-BBCLASSEXTEND = "native"
-
-PNBLACKLIST[libnetaddr-ip-perl] = "BROKEN: doesn't build | make[2]: *** No rule to make target `config.h', needed by `Util.c'.  Stop."
-- 
2.7.4



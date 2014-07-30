Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D63D4E00862; Wed, 30 Jul 2014 12:47:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D7A6E00781
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 12:47:15 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id lf10so2120926pab.29
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 12:47:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=5VQxDmVbRoLSQeVU/GzOMfoXxjl8GOXzk+TgEF6bAEE=;
	b=WoTqXhDFsaxvAq7XEa01Xc0kx26YmQL75kAMclKorp4HxV0ZtPOQtXNU5+DLN4yrna
	x2WB6XEkhWVu3px+ASA8xSNwMLtpIXJ5ZZytB40epz0R5XF2EQzNSuwXVHK6wRE2E+7G
	wjCP49RcaFEQJnnGjlkKExlbQKfyyi2u4987AHv2CyVKWgxM+ov6ys9vLJq/ighCAwEu
	iDoF9lUItAn93wqzbHOrg91+qbRoRP6rZKgMO8lRQFHJooxDsp34dihquHhW5PfD7KNU
	DnrF9KIgJss+cDMKAa2gCANMHR/Rc6X/mBej02KHnI+N+qR26RbHhEShWZLX5npmsXQs
	b9Lg==
X-Gm-Message-State: ALoCoQmHz3G/zvE4owzoS2P3yfjcCr+gES79YhwNLztyFWsmtgp2blBate3UjVDsS/WmIBrzc8sS
X-Received: by 10.70.38.134 with SMTP id g6mr342377pdk.135.1406749634905;
	Wed, 30 Jul 2014 12:47:14 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id pp2sm4743749pdb.59.2014.07.30.12.47.13
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 30 Jul 2014 12:47:14 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Wed, 30 Jul 2014 12:47:11 -0700
Message-Id: <1406749631-26228-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] libnetaddr-ip-perl: Blacklist recipe
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
X-List-Received-Date: Wed, 30 Jul 2014 19:47:23 -0000

As far as I can tell, this is not used by any reciped in meta-security.

It does not build so I am Black listing it.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/perl/libnetaddr-ip-perl_4.069.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/perl/libnetaddr-ip-perl_4.069.bb b/recipes-security/perl/libnetaddr-ip-perl_4.069.bb
index 99c11b2..69c2d83 100644
--- a/recipes-security/perl/libnetaddr-ip-perl_4.069.bb
+++ b/recipes-security/perl/libnetaddr-ip-perl_4.069.bb
@@ -22,3 +22,5 @@ do_compile() {
 	cpan_do_compile
 }
 BBCLASSEXTEND = "native"
+
+PNBLACKLIST[libnetaddr-ip-perl] = "BROKEN: doesn't build | make[2]: *** No rule to make target `config.h', needed by `Util.c'.  Stop."
-- 
1.9.1



Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CF4EE00754; Wed, 25 Feb 2015 07:12:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08671E00546
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 07:12:48 -0800 (PST)
Received: by mail-ig0-f173.google.com with SMTP id a13so36230593igq.0
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 07:12:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=pRCb8YNgIaVuflllhJuvdM3dTly6XbOhJGYPvA6C6WM=;
	b=ejHla+va2PQBs2uGWHyn2rJweb502sYzFt7PtEdzDA4QD5zoQLw7e1loNSG2YmUo1v
	EaR5xB/nL5/IejG9Vt7TOp4dinlwPF7tvX6DMM6AmyhqO8jtohRGwxIfKziWrwfraxEC
	jqiC9AAE/P4ZFMLX0xRlgaoMG2xK8w0A4yZ2ZylUyIq+LcapezPtDiDKl1Ox8GRQfz1z
	2OKhP0s0dejwoUay1+tjIGtgCpit+eIzDGiUlu1+n4IARN6lqYTZ9tJwqNkmJHlHEFF3
	sousfPdoPsSpJ9KXBYEcjOY73TyChmAIAWln1uFZDADJ++EFCbUfpr0TfzRhRkzKc/26
	P2cQ==
X-Gm-Message-State: ALoCoQn80FL3zEhAoumuvmfBDl8TZ70gZ/4WK6LgO5fsZsbtEI+oKzTmjtm6M+TZotiOYfKgTpnN
X-Received: by 10.43.79.129 with SMTP id zq1mr4303418icb.28.1424877167759;
	Wed, 25 Feb 2015 07:12:47 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id m5sm9885606ige.5.2015.02.25.07.12.46
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 25 Feb 2015 07:12:47 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Feb 2015 10:13:44 -0500
Message-Id: <1424877224-3418-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] python: use wildcard for verison
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
X-List-Received-Date: Wed, 25 Feb 2015 15:12:57 -0000

The current python bbappend doesn't include any patches, so it's
reasonable to move to a wildcard for the version.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 recipes-devtools/python/{python_2.7.3.bbappend => python_%.bbappend} | 2 --
 1 file changed, 2 deletions(-)
 rename recipes-devtools/python/{python_2.7.3.bbappend => python_%.bbappend} (92%)

diff --git a/recipes-devtools/python/python_2.7.3.bbappend b/recipes-devtools/python/python_%.bbappend
similarity index 92%
rename from recipes-devtools/python/python_2.7.3.bbappend
rename to recipes-devtools/python/python_%.bbappend
index b8447e9..9eefd2d 100644
--- a/recipes-devtools/python/python_2.7.3.bbappend
+++ b/recipes-devtools/python/python_%.bbappend
@@ -1,5 +1,3 @@
-PR .= ".1"
-
 inherit selinux
 # If selinux enabled, disable handlers to rw command history file
 FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/${PN}:')}"
-- 
1.9.1



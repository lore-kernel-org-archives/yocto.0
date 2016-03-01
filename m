Return-Path: <h4nn35.work@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45DECE00CC8; Tue,  1 Mar 2016 15:45:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (h4nn35.work[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC26EE00CAE
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 15:45:24 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id n186so61299403wmn.1
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 15:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=jYl08t6dAOht+zlQqm6vEQOxpps+JFbkKiS3FNFQEUw=;
	b=KNrMpB+Rxw59RrFDWM3/NGfw1ChhpMUXuRVcGI+sG5Y/6WGTEGDZpnn2NuWR3/DU+L
	rzuQqv1clPMj7+LJeP8bRDi3QXZGjDlv2YyQ4gBfCHReKr9Y+96Y/leOYyMGrkPi/VW1
	l8OLm9tvHfQprHQOD1J2NEHo4eqZjoeABJ1aQXcci5CEV+z2yYZtJjGZrNy52NdntVJj
	Tsw3+X/DF0TqOMtYXmPR3tYZ9eYLgY4cXdudF+8OoafpFaPrzRQ9ixyxyBIDieUE7WYW
	Zx1cpR/iJe2IgQhixQLOkx1urz7Ej2PtWOdr78cZ3xiASqjLj1z2n2uxDPNo7mZMB5c/
	3ySg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=jYl08t6dAOht+zlQqm6vEQOxpps+JFbkKiS3FNFQEUw=;
	b=feLrZ62Z7UuQN9shhQKGb3q4S6n9kIjmO8NqNVlC9y65AdLr5vXakeSpKJSnHIN8kK
	nDZmanWuFxQLvr4VuRD0n/0mHvhoiAytBOu/baU6syl6DqdGmGGXLyHuswm+8VEskKOY
	x/+a67hUw2wAaYq7c+vB+iWOpy6s+z6A2D/3yVyfU399Wb8mPZgOSwAebZ5wHVzj9e/T
	LBpuFCeuOohnkOce8gh4hoKKSFmnPKQCpvtjaTkFk/3XewZvTgm+mrkisWO3Hll/KooO
	JaWw2qmdo1kheLg8oHxeMO0FB2byQbFwkDSAX9HzHv5hyaaAeftogqo5Q8AQg3nGA5Hg
	UxKQ==
X-Gm-Message-State: AD7BkJJ9tIEKXszrEf/OnlDQdPMpQROH3iDGyf4qUhQlggGTnLHsohC2eS6cvOiKUYb1xQ==
X-Received: by 10.28.88.81 with SMTP id m78mr1578708wmb.58.1456875923389;
	Tue, 01 Mar 2016 15:45:23 -0800 (PST)
Received: from lenovobook.localdomain
	(ipbcc1bda1.dynamic.kabel-deutschland.de. [188.193.189.161])
	by smtp.googlemail.com with ESMTPSA id
	3sm1408463wmp.14.2016.03.01.15.45.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 01 Mar 2016 15:45:22 -0800 (PST)
From: Johannes Pointner <h4nn35.work@gmail.com>
X-Google-Original-From: Johannes Pointner <johannes.pointner@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:45:19 +0100
Message-Id: <1456875919-11392-1-git-send-email-johannes.pointner@gmail.com>
X-Mailer: git-send-email 2.7.2
Cc: rburton@intel.com
Subject: [xcursor-transparent-theme][Patch] Fix typo in cursors Makefile
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
X-List-Received-Date: Tue, 01 Mar 2016 23:45:28 -0000

This patch fixes a typo of the watch cursor.

Signed-off-by: Johannes Pointner <johannes.pointner@gmail.com>
---
 cursors/Makefile.am | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/cursors/Makefile.am b/cursors/Makefile.am
index f0a15ae..d699942 100644
--- a/cursors/Makefile.am
+++ b/cursors/Makefile.am
@@ -79,7 +79,7 @@ CURSOR_NAMES = \
 	ul_angle \
 	ur_angle \
 	v_double_arrow \
-	watcha \
+	watch \
 	xterm  
 
 CURSOR_DIR = $(datadir)/icons/xcursor-transparent/cursors
-- 
2.7.2



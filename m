Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C733E00A4D; Sat, 25 Jul 2015 05:56:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51A5AE009F8
	for <yocto@yoctoproject.org>; Sat, 25 Jul 2015 05:56:47 -0700 (PDT)
Received: by iecrl10 with SMTP id rl10so32595596iec.1
	for <yocto@yoctoproject.org>; Sat, 25 Jul 2015 05:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=CPZgJXgi3mcV46Xmc917BtiF6n3WAeLNbKQrGN8+2AI=;
	b=Ep2vp/rmsN5GAkn19na02IKJKXFC2z9LoJmG5fHDdMv/BunWzAcM8gLtqbTEbn1JXO
	XCZ7Lh81cIMiGmH361v0d+yXWijPy3dSy9jX9QVN7Qumles2uD3329xdqysbl2onAYSr
	wwgBUYttDdQfoo38hu7sKCBiXgBcglG6JiQOC03HUzKnW1X4HN8E9j9YX8ayGWvAJ2YD
	FMXOH8zgcqsdD7zmeY7+m9ccu2snow2q0PolVz07sSlfSojQUWq11kwN23kJBjbwVPYp
	4W/0UCD6lmy1n1lgD42rVJJZygSeQJ/GQO7tgtdSTNphcZdsAFsPlvhj/bduu90Xgdnb
	i89g==
X-Received: by 10.50.143.104 with SMTP id sd8mr4415540igb.34.1437829006752;
	Sat, 25 Jul 2015 05:56:46 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	rr5sm1420231igb.7.2015.07.25.05.56.44
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 25 Jul 2015 05:56:45 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 25 Jul 2015 08:56:23 -0400
Message-Id: <1437828983-7773-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 2.5.0.rc2.13.g961abca
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Lucian Musat <george.l.musat@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: [PATCH][meta-yocto] SANITY_TESTED_DISTROS: fix lsb name for openSUSE 13.2
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
X-List-Received-Date: Sat, 25 Jul 2015 12:56:56 -0000

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e3d3c78..80861f6 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -80,7 +80,7 @@ SANITY_TESTED_DISTROS ?= " \
             CentOS-7.* \n \
             Debian-7.* \n \
             Debian-8.* \n \
-            openSUSE-13.2 \n \
+            openSUSE-project-13.2 \n \
             "
 
 # Default hash policy for distro
-- 
2.5.0.rc2.13.g961abca



Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22618E006EF; Wed, 14 May 2014 15:30:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.49 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pb0-f49.google.com (unknown [209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11F16E00A1D
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:30:49 -0700 (PDT)
Received: by mail-pb0-f49.google.com with SMTP id jt11so180341pbb.36
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=tPHeGAmyGgXF7HGJQqxDtXTSyfAiWYgi82oRypVZ/BQ=;
	b=KOZJ+kYJhpD8HE+tIWpDcQmCgwwJv+E1mrG4ayVdOsnq4P6dprlr3kd+ODuMXIY9mK
	SpHu7TkzxJ1ukgdknbzwZ/C2KSz/8G/98OKL/qInu5mq8QcJSTJkRVQTOnGaXnf2+baJ
	mtkDwymiRLDEVj3Q90tIDnRKRcaI7lA/XlZ3lPeXA1q2aslg06L0VikCZzabJWSCH03Y
	gYi7gf3SIe3lepThi74pTzLhmT/15PhxcxVZ17T51pZDcVgfBgRSIS7b/EjwibmZRE62
	F8+ddV5dS0POmsUsdZE/7igIbtNins7qI+A4Lv01Qz0Kvsq9NSc+ZOthtw+sfjNPSC+t
	8CMw==
X-Received: by 10.68.166.36 with SMTP id zd4mr7740798pbb.54.1400106270561;
	Wed, 14 May 2014 15:24:30 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id jd5sm5364684pbb.18.2014.05.14.15.24.28
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 May 2014 15:24:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Wed, 14 May 2014 15:24:16 -0700
Message-Id: <1400106263-25100-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/9] Use wildcard in mesa bbappend name
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
X-List-Received-Date: Wed, 14 May 2014 22:30:54 -0000

    mesa: Use wildcard in version to minimize keeping in-sync
    with Poky

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-graphics/mesa/mesa_9.2.%.bbappend | 6 ++++++
 recipes-graphics/mesa/mesa_9.2.2.bbappend | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)
 create mode 100644 recipes-graphics/mesa/mesa_9.2.%.bbappend
 delete mode 100644 recipes-graphics/mesa/mesa_9.2.2.bbappend

diff --git a/recipes-graphics/mesa/mesa_9.2.%.bbappend b/recipes-graphics/mesa/mesa_9.2.%.bbappend
new file mode 100644
index 0000000..0004f71
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_9.2.%.bbappend
@@ -0,0 +1,6 @@
+inherit enable-selinux
+
+# But wait!  There's more!  mesa builds a host program named builtin_compiler
+# and it needs selinux, too.  We replace the PACKAGECONFIG[] in the bbclass.
+#
+PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux libselinux-native,"
diff --git a/recipes-graphics/mesa/mesa_9.2.2.bbappend b/recipes-graphics/mesa/mesa_9.2.2.bbappend
deleted file mode 100644
index 0004f71..0000000
--- a/recipes-graphics/mesa/mesa_9.2.2.bbappend
+++ /dev/null
@@ -1,6 +0,0 @@
-inherit enable-selinux
-
-# But wait!  There's more!  mesa builds a host program named builtin_compiler
-# and it needs selinux, too.  We replace the PACKAGECONFIG[] in the bbclass.
-#
-PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux libselinux-native,"
-- 
1.9.1



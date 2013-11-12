Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A1FE017E4
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 21:12:45 -0800 (PST)
Received: by mail-pb0-f50.google.com with SMTP id xb12so2276822pbc.37
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 21:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=vnbbqq0irElv6nOBvOzHQvL4XMdXAzaKVM41nqiFgv4=;
	b=v7XW4qtFs0asxLM1Yl54GLqxaN0XG+2Oh66I4PjJkO1R8/cg6jsoKm93pjWhAZQbkq
	PtLintaCxpuxFki0Vuie0JN8IKp35sZwV2aCV/JXk3pZu0cylLZe7agMtJMkKafHK69n
	IfMiCXF1uW+vA3wnICSnEY6mw6HsNNYeR6/bLmp1ocgwfZQvcM9Pg7ZADSgGdhJHQQOk
	mGa9AwoOSsoPvyJwrFVE7D7ox7Jl2dB8C2+31Nws6DxknBlzJv86bZIwD5Ec9Ql3s33i
	ebYWIBD/zy1/cMNWTEiazuSXWL0JfO8pW6MA36kUolLTv8EcnZVRoN2SaGg0eoHi9ZQE
	079A==
X-Received: by 10.68.190.229 with SMTP id gt5mr1278830pbc.177.1384233165685;
	Mon, 11 Nov 2013 21:12:45 -0800 (PST)
Received: from haswell.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPSA id
	er3sm34644122pbb.40.2013.11.11.21.12.44 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 11 Nov 2013 21:12:45 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Nov 2013 21:12:31 -0800
Message-Id: <1384233151-21897-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [meta-raspberrypi][PATCH] mesa: Match bbappend to OE-Core mesa version
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
X-List-Received-Date: Tue, 12 Nov 2013 05:12:49 -0000

Remove PRINC now that we have a chance

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/mesa/{mesa_9.1.6.bbappend => mesa_9.2.2.bbappend} | 2 --
 1 file changed, 2 deletions(-)
 rename recipes-graphics/mesa/{mesa_9.1.6.bbappend => mesa_9.2.2.bbappend} (97%)

diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend b/recipes-graphics/mesa/mesa_9.2.2.bbappend
similarity index 97%
rename from recipes-graphics/mesa/mesa_9.1.6.bbappend
rename to recipes-graphics/mesa/mesa_9.2.2.bbappend
index 88e5eab..7d158f2 100644
--- a/recipes-graphics/mesa/mesa_9.1.6.bbappend
+++ b/recipes-graphics/mesa/mesa_9.2.2.bbappend
@@ -1,5 +1,3 @@
-PRINC := "${@int(PRINC) + 1}"
-
 #
 # FIXME
 # We may a way to disable EGL and GL ES2, these are provided by userland package
-- 
1.8.3.2



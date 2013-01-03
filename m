Return-Path: <cazfi74@gmail.com>
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A265AE00527
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 23:52:19 -0800 (PST)
Received: by mail-la0-f49.google.com with SMTP id fk20so7448925lab.36
	for <yocto@yoctoproject.org>; Wed, 02 Jan 2013 23:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=VCYrKshFfIaV6ClLsp4O5tKda4kH8ApJ6BvE0JI1fKc=;
	b=WTURRMc6O82bl65EGMc7Zf9bQGPvNGq7Wp/n7comwlKNdhA0QbwIVuZn8aRmlgm7Tb
	9hJqlvnjlbgQHH9pgwIsLqi9NQ5a/UXEyaOxCL4M9N43uUO13PyXmkjyV1SCsf/2Mewz
	x0zMN+uO1fzAg1oudNmqAhr638t9hKwNBnv+6CeNKAQ/n1pLTk/W2bogaJSkkBJjqwGQ
	a0J0/vZFlw9xui1U69u93e0QF/AkHpzCqAnMLDRQV8adsCbR7eskm64Tyd2jBw2ykpec
	qXigCxiVo4mYtKH/LVBvo73AuzYAr8yqmgJJ5zIy6mD6zyFpouAdi/5GA3TR8KW7qY47
	fAXA==
X-Received: by 10.112.17.129 with SMTP id o1mr19647915lbd.54.1357199538375;
	Wed, 02 Jan 2013 23:52:18 -0800 (PST)
Received: from prime (a91-153-5-18.elisa-laajakaista.fi. [91.153.5.18])
	by mx.google.com with ESMTPS id u5sm16731087lbm.8.2013.01.02.23.52.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 Jan 2013 23:52:17 -0800 (PST)
Received: from cazfi by prime with local (Exim 4.80)
	(envelope-from <cazfi74@gmail.com>)
	id 1Tqfb5-0005kU-CK; Thu, 03 Jan 2013 09:52:15 +0200
From: Marko Lindqvist <cazfi74@gmail.com>
To: yocto@yoctoproject.org,
	mark.hatle@windriver.com
Date: Thu,  3 Jan 2013 09:52:12 +0200
Message-Id: <1357199532-22977-2-git-send-email-cazfi74@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1357199532-22977-1-git-send-email-cazfi74@gmail.com>
References: <1357199532-22977-1-git-send-email-cazfi74@gmail.com>
X-Mailman-Approved-At: Fri, 04 Jan 2013 09:33:47 -0800
Cc: Marko Lindqvist <cazfi74@gmail.com>
Subject: [PATCH] fix build with automake-1.13.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Jan 2013 07:52:20 -0000

Rename autoconf input file from deprecated name configure.in to
configure.ac
Replace AM_CONFIG_HEADER obsoleted in automake-1.13 with
AC_CONFIG_HEADERS.

Signed-off-by: Marko Lindqvist <cazfi74@gmail.com>
---
 trunk/{configure.in => configure.ac} |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename trunk/{configure.in => configure.ac} (98%)

diff --git a/trunk/configure.in b/trunk/configure.ac
similarity index 98%
rename from trunk/configure.in
rename to trunk/configure.ac
index 396f3ac..a90cfb2 100644
--- a/trunk/configure.in
+++ b/trunk/configure.ac
@@ -1,6 +1,6 @@
 dnl Process this file with autoconf to produce a configure script. -*-m4-*-
 AC_INIT(src/prelink.c)
-AM_CONFIG_HEADER(config.h)
+AC_CONFIG_HEADERS(config.h)
 AC_PREREQ(2.13)			dnl Minimum Autoconf version required.
 AC_CANONICAL_HOST
 
-- 
1.7.10.4



Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E531E01508
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 22:12:31 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id jh10so689304pab.38
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2013 22:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=8Ks2mHrS7M1ozVivUB1Pd//3SUMR9SfVzcwZWQNXmYE=;
	b=qr2xBZyLCXZIzIHMS/yyQXuJcGF3oi7lNyvJYfQ0a1XzDEIY6MXZb+F0NMN0ISGjRa
	KMh2wxOoqaf+G1kkChuN/2OtLtM3oIoO6UPtiDdvJ8+0SsgKLXBZkHuEUkxBi4MdvM1h
	9dvpmAqgnn+r1BgO/eqeSYgC/SvfdK8T7YbgVQPWh0zbSC+a8Vs/7IniVkMn7FLqtWR8
	ooqGhGxcZ5M6KjfnmFEPNz4eLyU1GkBV7n/hN6yWXoyKpWf9Kdmxt85Crw8s7FdBU4SE
	8ZsoGXVEMD7gV8sqd9V7W+YY+jFJPP8cTBX1hqodDUq6D+WmDkhJQl7aKRGfs2DAlbdb
	S26g==
X-Received: by 10.68.135.136 with SMTP id ps8mr459858pbb.2.1364965950524;
	Tue, 02 Apr 2013 22:12:30 -0700 (PDT)
Received: from isis.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id f4sm4484947pbc.6.2013.04.02.22.12.28
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 02 Apr 2013 22:12:29 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Apr 2013 22:11:50 -0700
Message-Id: <1364965911-17324-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-yocto][PATCH] poky.conf: Use weaker assignment for PREMIRROR
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
X-List-Received-Date: Wed, 03 Apr 2013 05:12:31 -0000

This is to facilitate distros using poky as reference
so that they can use ?= and provide an option for their
users to override it if desired

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-yocto/conf/distro/poky.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index afe328b..963b3dd 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -44,7 +44,7 @@ TCLIBCAPPEND = ""
 QEMU_TARGETS ?= "arm i386 mips mipsel ppc x86_64"
 # Other QEMU_TARGETS "mips64 mips64el sh4"
 
-PREMIRRORS ?= "\
+PREMIRRORS ??= "\
 bzr://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
 cvs://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
 git://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
-- 
1.7.9.5



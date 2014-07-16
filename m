Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 472DFE007AC; Wed, 16 Jul 2014 01:59:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D657E0078A
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:18 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id d1so899552wiv.9
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=3nnermSz7+9NiQItcsouJ7tLJThkVZdGi1TmXUSmSEM=;
	b=ZtySuEBzIcXJGTS2K0ZLNqbyI8ELxZK09x6pdrO1mChhfm+XnYy0YhZsHR1MVEhGTk
	ivd7goQKkF3J0t+/B5hOOo/TLcFoaTb9EDLj2RlBlSMoovkPIetX06aM2W7/JQaojRl5
	INUHbOCI/l8TBuZphMzy7HK+/Ldu8QG9y/DnYKpWBx+I9a9t/po5Sb9lus3sBlDwVRB+
	NGpG8LKfWvaF+0QclBsxt6mo5nihoj883Md7A6yFfM4WGaVvLwgmZM5Rx7rfDhstBdbv
	O55L+s/6IWXARxybUsccJHvohozZ9O3d+XP9WS3Fb/RGJCAQlVprv8g49aFA3qwAS1ZC
	Y1ig==
X-Gm-Message-State: ALoCoQmzavN5Ge+/Ow6MVS8EUyeVWs95pnhFnyBXvtSDKcJa3IfUBf6uF9Sa7BwcuBUbEmkPgLjg
X-Received: by 10.194.173.7 with SMTP id bg7mr33589083wjc.3.1405501154976;
	Wed, 16 Jul 2014 01:59:14 -0700 (PDT)
Received: from localhost ([2001:610:612:0:beee:7bff:fe9e:ae56])
	by mx.google.com with ESMTPSA id
	de6sm38370138wjc.16.2014.07.16.01.59.13 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 16 Jul 2014 01:59:14 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
To: yocto@yoctoproject.org
Date: Wed, 16 Jul 2014 10:58:48 +0200
Message-Id: <1405501129-28327-6-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
References: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
Subject: [meta-raspberrypi][for-daisy][PATCH 6/7] userland: Add '--no-as-needed' linker flag
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
X-List-Received-Date: Wed, 16 Jul 2014 08:59:25 -0000

From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>

This is done to ensure all specified shared libraries are linked against
applications (e.g. raspivid)i.

libmmal_vc_client.so makes use of __attribute__(constructor) to ensure
that supplier components (e.g. camera) are loaded when the static library is
loaded.

raspivid, and possibly other applications, link against libmmal_vc_client.so,
causing the ctor to execute, but there is no needed dependency.

Some build environments (e.g. Yocto/OpenEmbedded) pass the '--no-as-needed'
linker flag which removes the dependency on libmmal_vc_client and thus
components are not registered.

In this situation raspivid then gives an error of the form
  root@raspberrypi:~# raspivid -o test
  mmal: mmal_component_create_core: could not find component 'vc.ril.camera'
  mmal: Failed to create camera component
  mmal: main: Failed to create camera component
  mmal: Failed to run camera app. Please check for firmware updates

For further details see:
https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.html

Change-Id: I9d787fd83379e8b6428dde3827395c8b96be1f7f
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Acked-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index a348090..4b405ee 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -18,7 +18,7 @@ S = "${WORKDIR}/git"
 
 inherit cmake
 
-EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release"
+EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
 
 # The compiled binaries don't provide sonames.
 SOLIBS = "${SOLIBSDEV}"
-- 
1.9.0



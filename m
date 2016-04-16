Return-Path: <toolmmy@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 829AEE00ECA; Sat, 16 Apr 2016 06:31:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (toolmmy[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 122D9E00C89
	for <yocto@yoctoproject.org>; Sat, 16 Apr 2016 06:31:34 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id u206so66426244wme.1
	for <yocto@yoctoproject.org>; Sat, 16 Apr 2016 06:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=8J4Ksp5QOuE8gpO/zabk4omY2TqWv9N1tIbPYkALl4c=;
	b=UyASDyR41sBg0m7grlYaOV6yczQKVkWbHZbOyRr0RoXVWujuwCODtaltAKbx88hg8C
	lJftuqD0hrj87DZRIoJL4JYFvpfUF3zjWRaJqlKItyHUrUT55V3MKMDaz9UyWiwTselU
	LUPWcJwbN3qb/JV5SaGB/v2xBNU0mMjny9b3i7LiPboKmJdbwr0F8FrWGuB7bHbkxNUb
	r3re26aizIz3HFp5jmpLywGjNlgy0djB4ZYNkSpIqz7CTTpoeOr5EjiTB65hiqF4ZHWJ
	Ig+IyxCqTYUoLlAR7BaXx4XW4ERQBz+ZoSZvGRDZzZP0mzumUJ6qlA9iTeVd3fa8JgtV
	A/bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=8J4Ksp5QOuE8gpO/zabk4omY2TqWv9N1tIbPYkALl4c=;
	b=T1r7pl3y4b08tgbgbWVyFJageLMuvCzoorD9KT4COkJPS50l5KGD5wZHrK/cMuGqBc
	jhzK7RwTh4GB3DPj0de5Sygi/YItNcV0n1GudeHU/T8s+dPr9VWdy/oBJmIdzdiGtJ0q
	NBpt07QtZ4wkHJb5qDd+Cw8URM19rFKexKzjxDnE7doE6EA+2sLLo5tBCXMpjL3ioH5l
	+qBOZXOV9TdLcvO+KJfXuvSeCXB9H687qOpT68HT3H1bul+p7CRkmZ0kZ2yO75AyNq9v
	EdSreiMyGEAu582Qlz7/EWKIWpHBaLKo6k91lJYqP7swD4njyDtjXC4FJ7vyP2DHtQy6
	qUpw==
X-Gm-Message-State: AOPr4FU+DIzBSnecboJW3F/DMYzdhIt0CHXNJ7bj3W/RyoTYZzkc9udUWDLicA1nVsPWAw==
X-Received: by 10.194.62.110 with SMTP id x14mr29783748wjr.68.1460813493690;
	Sat, 16 Apr 2016 06:31:33 -0700 (PDT)
Received: from localhost.localdomain
	(HSI-KBW-095-208-027-092.hsi5.kabel-badenwuerttemberg.de.
	[95.208.27.92]) by smtp.gmail.com with ESMTPSA id
	v6sm43463694wmv.16.2016.04.16.06.31.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 16 Apr 2016 06:31:32 -0700 (PDT)
From: toolmmy <toolmmy@googlemail.com>
X-Google-Original-From: toolmmy <toolmmy@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 16 Apr 2016 15:31:25 +0200
Message-Id: <1460813485-1801-1-git-send-email-toolmmy@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Tom Doehring <toolmmy@gmail.com>
Subject: [meta-raspberrypi][PATCH] userland: Fix passing of wayland-native to cmake while configuring
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
X-List-Received-Date: Sat, 16 Apr 2016 13:31:38 -0000

From: Tom Doehring <toolmmy@gmail.com>

While having 'wayland' set DISTRO_FEATURES 'wayland-native' is handled as a cmake parameter which breaks the do_configure:

$ cat /data/builds/rpi3-sandbox/tmp/work/raspberrypi2-poky-linux-gnueab i/userland/git-r5/temp/run.do_configure
 cmake \
          ${OECMAKE_SITEFILE} \
          [...]
          -DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'                  wayland-native \
          -Wno-dev

$ CMake Error: The source directory "/data/builds/rpi3-sandbox/tmp/work/raspberrypi2-poky-linux-gnueabi/userland/git-r5/build/wayland-native" does not exist.
| Specify --help for usage, or press the help button on the CMake GUI.

Assuming that wayland-native should only be defined as a DEPENDS package this patch moves it to the correct PACKAGECONFIG position.

Signed-off-by: Tom Doehring <toolmmy@gmail.com>
Signed-off-by: toolmmy <toolmmy@gmail.com>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index ef06b12..0e7057e 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -45,7 +45,7 @@ EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-a
 
 PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
 
-PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,wayland-native,wayland"
+PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,,wayland-native wayland"
 
 CFLAGS_append = " -fPIC"
 
-- 
1.9.1



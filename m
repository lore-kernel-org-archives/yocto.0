Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B55BBE01363
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 18:06:16 -0700 (PDT)
Received: by dajx4 with SMTP id x4so8492260daj.28
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 18:06:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=+R900EMgeEej+tcQFCsO9KMkygV1W6ZE7YZxeMr9AU0=;
	b=eifjf1n1U3PKLz3oGFmdcjSJ8X0V1wLPUuH06VHlo7M91tXPp0CsGkquZ2yOpL5o2e
	NUnriLeyN7hSTpQLRpsZwkWQD3QhEY4XKYtdk7WANLqQKm3HgZFtFu7chvGB1xxsNq6X
	csUa3FpbRmJsv5b2dPRr6tOPXRP1k3+ZwVsKdwYbjpae846CC344zyu2gcQ3mWoe5Eu+
	RfO8G7hRyFUUV02iIvMTpD/Q0qblwyxG7KTX1/WbE6v3Ch5FD9fNOxd8SSUV97viEiq0
	T8CG2Qq80nX/lm50zpwvDIZ+AYieP5bq2yqU2zY++yXoKjxeuyXptt776honWlrKpVX2
	SCMw==
Received: by 10.68.236.197 with SMTP id uw5mr32028554pbc.27.1334624776151;
	Mon, 16 Apr 2012 18:06:16 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id r10sm19158240pbf.22.2012.04.16.18.06.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 16 Apr 2012 18:06:14 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 16 Apr 2012 18:06:12 -0700
Message-Id: <c1922f73308b4c2ef021c55adb3cdc0f25cb45bc.1334624662.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334624662.git.dvhart@linux.intel.com>
References: <cover.1334624662.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmClRn6tMt8egDzMHgpfMUlubfw6lINdyD/3G5njXUhvEkOIr12Yl4VmZuLOiYXxtRlvcm3
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/1] poky-tiny: Separate the libc features required for meta-toolchain
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
X-List-Received-Date: Tue, 17 Apr 2012 01:06:16 -0000

This fixes bug [YOCTO #2295]

eglibc needs libc-posix-regexp-glibc & libc-libm-big enabled in its
configuration to avoid following eglibc build issue. Thanks to
Nitin for identifying the required features.

    ...
    | In file included from xregex.c:634:0:
    | xregex.c: In function 'byte_regex_compile':
    | xregex.c:3395:8: error: too few arguments to function 'findidx'
    | ../locale/weight.h:23:1: note: declared here
    ...

The libc features added to support building meta-toolchain add 461KB to the C
libraries. 320KB directly to libc (a 32% increase in size). If not building
meta-toolchain, the user should be able to easily configure these out.

Create a new variable to capture these dependencies,
DISTRO_FEATURES_LIBC_TOOLCHAIN, keeping them separate from the core tiny
requirements. Make it clear how to disable these if meta-toolchain is not
needed.

This patch has been tested by running the following for the qemux86 machine with
DISTRO=poky-tiny:

    $ bitbake -c cleansstate eglibc
    $ bitbake meta-toolchain
    $ bitbake core-image-minimal

The libc comparisons were made from core-image-minimal ext2 filesystems build
before and after the applicaiton of this patch and Nitin's previous poky-tiny
libc features patch in support of meta-toolchain:

    commit 8c48ab6183934fd32600997cc33e0cd3bf63139b
    Author: Nitin A Kamble <nitin.a.kamble@intel.com>
    Date:   Mon Apr 9 15:15:01 2012 -0700

        poky-tiny.conf: adjust eglibc options for poky-tiny

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Nitin A. Kamble <nitin.a.kamble@intel.com>
CC: Saul Wold <sgw@linux.intel.com>
CC: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto/conf/distro/poky-tiny.conf |   18 ++++++++++++------
 1 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 58d64ec..327cc1e 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -63,12 +63,17 @@ ASSUME_PROVIDED += "pkgconfig$"
 # Reconfigure eglibc for a smaller installation
 # Comment out any of the lines below to disable them in the build
 DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
-# for gettext
-DISTRO_FEATURES_LIBC_TINY += "libc-posix-clang-wchar"
-# for m4
-DISTRO_FEATURES_LIBC_TINY += "libc-spawn libc-locale-code"
-# for elfutils
-DISTRO_FEATURES_LIBC_TINY += "libc-ftraverse"
+
+# Building meta-toolchain currently imposes some additional requirements:
+# If you do not plan to build meta-toolchain, you can save ~461KB by
+# commenting out the DISTRO_FEATURES_LIBC_TOOLCHAIN assignment
+# gettext needs wchar, m4 needs spawn and locale, elfutils needs ftraverse
+DISTRO_FEATURES_LIBC_TOOLCHAIN = "libc-posix-clang-wchar \
+                                  libc-spawn libc-locale-code \
+                                  libc-ftraverse libc-libm-big \
+                                  libc-posix-regexp-glibc \
+                                 "
+
 # Required for "who"
 DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
 DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
@@ -78,6 +83,7 @@ DISTRO_FEATURES_LIBC = "${DISTRO_FEATURES_LIBC_TINY} \
                         ${DISTRO_FEATURES_LIBC_MINIMAL} \
                         ${DISTRO_FEATURES_LIBC_REGEX} \
                         ${DISTRO_FEATURES_LIBC_NET} \
+                        ${DISTRO_FEATURES_LIBC_TOOLCHAIN} \
                        "
 
 # Comment out any of the lines below to disable them in the build
-- 
1.7.5.4



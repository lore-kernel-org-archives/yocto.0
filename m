Return-Path: <leodmendesjr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E86B0E00BB7; Wed, 20 Feb 2019 06:56:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (leodmendesjr[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
	[209.85.217.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4391E00B81
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 06:56:12 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id e10so14127865vsp.1
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 06:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=44QNzP3ZjTouDKxhnNbrbIMQrFA43nng4/shzAnq/Ok=;
	b=XNsHgs9hmuRd8+eFTUsusCU3MGe5USsgz+My/yPdnonVAYKCNIAzeZr6/WgB66iJP2
	xxWFv6AFOq+q6Hp6kuK1WKJI+d1W3nDzvVdqFNds3+8jfE92rV7k3lKqU0qY8/e99k2Z
	TnUCtqHF5g3VGySmv3Ydie1JqI2+nWXMMn8J0D1/xvCzclVuQ1BGyDlroPOEWVHyqYmd
	znLOC3joVjK2TAPJZbT3HzO162skzaJS5NoxEhFES/qO+f4H6ONHknT35DjN3FBsq/Pz
	DEuYYw14ctzphKW5dNZ8Pg6X7vXgNWh6QEFjFVwV15wBRK8wHptj8l8F3Vu6x7GYmFoX
	zDZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=44QNzP3ZjTouDKxhnNbrbIMQrFA43nng4/shzAnq/Ok=;
	b=nPFFONjoQKnXvbr/e9uPKe8p8OnsFKxCNRnwhjMBHU8RuXN2TJrHgNIQDF52vK+V16
	El5hQxMVEKnXYj3BaycwXZ7UHRkf6Ll2h8m/5dG0ZIzf1cNdvY/wS4WYG5yXO40YAr83
	rPugG60S58RoNl1D7aBO5kPGlxvYGvAdxyQG8uHBO7BdRYVHFUJ/p55s9xy6kGwQlF0x
	+D07Gnco3bS/G0tPLAR64JP3qJINQC2KvLTu1WThExWtXczSd/4pL/IJYS3g+nf97wNG
	caTO7F8AMN53jIvaazT0aEyf/Y+CXcOgnTmyG+MlrnUfUSS0oB9zBkJAGubU6aQ7Oq9G
	BH2w==
X-Gm-Message-State: AHQUAuZyqbQCyIZA8JR56WAL+LCjfaTzlGdmN69GWmQx0zWFMqOFJFI4
	xhthyu5zy8dRFGN+YtU+fYHXVgzQNRljznXUhLng30M=
X-Google-Smtp-Source: AHgI3Ibkd44efnBrAD84jwro2Qb0b6cKI6BB2fJcFCckImNQr/IXTqkwckTbGY4VR11VWw3oXQKL6DBs1N+WWTklMeA=
X-Received: by 2002:a67:1a84:: with SMTP id
	a126mr18382304vsa.165.1550674571514; 
	Wed, 20 Feb 2019 06:56:11 -0800 (PST)
MIME-Version: 1.0
From: Leonardo Jose Duarte MendesJunior <leodmendesjr@gmail.com>
Date: Wed, 20 Feb 2019 11:55:58 -0300
Message-ID: <CAA3Hs=f4HNa+zPvO36edTVh_eKQ1Juvx7QepViYfJwLgZRXWhg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: icecast error
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
X-List-Received-Date: Wed, 20 Feb 2019 14:56:15 -0000
Content-Type: multipart/alternative; boundary="000000000000ff59ac0582548e8c"

--000000000000ff59ac0582548e8c
Content-Type: text/plain; charset="UTF-8"

Good morning.

I'm trying to compile the icecast, and I had this issue:

Initialising tasks: 100%
|#####################################################################################################|
Time: 0:00:03
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: icecast-2.3.2-r2 do_compile: oe_runmake failed
ERROR: icecast-2.3.2-r2 do_compile: Function failed: do_compile (log file
is located at
/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/temp/log.do_compile.38033)
ERROR: Logfile of failure stored in:
/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/temp/log.do_compile.38033
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 1
| make  all-recursive
| make[1]: Entering directory
'/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build'
| Making all in src
| make[2]: Entering directory
'/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src'
| Making all in avl
| make[3]: Entering directory
'/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src/avl'
| ../../arm-angstrom-linux-gnueabi-libtool  --tag=CC   --mode=compile
arm-angstrom-linux-gnueabi-gcc  -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard
--sysroot=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6
-DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/avl -I../..
-I../../../icecast-2.3.2/src/avl/..   -pthread -O2 -pipe -g
-feliminate-unused-debug-types
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=/usr/src/debug/icecast/2.3.2-r2
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
-c -o libiceavl_la-avl.lo `test -f 'avl.c' || echo
'../../../icecast-2.3.2/src/avl/'`avl.c
| arm-angstrom-linux-gnueabi-libtool: compile:
arm-angstrom-linux-gnueabi-gcc -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard
--sysroot=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6
-DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/avl -I../..
-I../../../icecast-2.3.2/src/avl/.. -pthread -O2 -pipe -g
-feliminate-unused-debug-types
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=/usr/src/debug/icecast/2.3.2-r2
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
-c ../../../icecast-2.3.2/src/avl/avl.c  -fPIC -DPIC -o
.libs/libiceavl_la-avl.o
| arm-angstrom-linux-gnueabi-libtool: compile:
arm-angstrom-linux-gnueabi-gcc -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard
--sysroot=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6
-DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/avl -I../..
-I../../../icecast-2.3.2/src/avl/.. -pthread -O2 -pipe -g
-feliminate-unused-debug-types
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=/usr/src/debug/icecast/2.3.2-r2
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
-c ../../../icecast-2.3.2/src/avl/avl.c -o libiceavl_la-avl.o >/dev/null
2>&1
| ../../arm-angstrom-linux-gnueabi-libtool  --tag=CC   --mode=link
arm-angstrom-linux-gnueabi-gcc  -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard
--sysroot=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6 -pthread
-O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=/usr/src/debug/icecast/2.3.2-r2
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
 -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o libiceavl.la
libiceavl_la-avl.lo
| arm-angstrom-linux-gnueabi-libtool: link: arm-angstrom-linux-gnueabi-ar
cru .libs/libiceavl.a .libs/libiceavl_la-avl.o
| arm-angstrom-linux-gnueabi-ar: `u' modifier ignored since `D' is the
default (see `U')
| arm-angstrom-linux-gnueabi-libtool: link:
arm-angstrom-linux-gnueabi-ranlib .libs/libiceavl.a
| arm-angstrom-linux-gnueabi-libtool: link: ( cd ".libs" && rm -f "
libiceavl.la" && ln -s "../libiceavl.la" "libiceavl.la" )
| make[3]: Leaving directory
'/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src/avl'
| Making all in thread
| make[3]: Entering directory
'/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src/thread'
| ../../arm-angstrom-linux-gnueabi-libtool  --tag=CC   --mode=compile
arm-angstrom-linux-gnueabi-gcc  -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard
--sysroot=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6
-DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/thread -I../..
-I../../../icecast-2.3.2/src/thread/..   -pthread -O2 -pipe -g
-feliminate-unused-debug-types
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=/usr/src/debug/icecast/2.3.2-r2
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
-c -o libicethread_la-thread.lo `test -f 'thread.c' || echo
'../../../icecast-2.3.2/src/thread/'`thread.c
| arm-angstrom-linux-gnueabi-libtool: compile:
arm-angstrom-linux-gnueabi-gcc -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard
--sysroot=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6
-DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/thread -I../..
-I../../../icecast-2.3.2/src/thread/.. -pthread -O2 -pipe -g
-feliminate-unused-debug-types
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=/usr/src/debug/icecast/2.3.2-r2
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
-c ../../../icecast-2.3.2/src/thread/thread.c  -fPIC -DPIC -o
.libs/libicethread_la-thread.o
| arm-angstrom-linux-gnueabi-libtool: compile:
arm-angstrom-linux-gnueabi-gcc -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard
--sysroot=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6
-DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/thread -I../..
-I../../../icecast-2.3.2/src/thread/.. -pthread -O2 -pipe -g
-feliminate-unused-debug-types
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=/usr/src/debug/icecast/2.3.2-r2
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
-c ../../../icecast-2.3.2/src/thread/thread.c -o libicethread_la-thread.o
>/dev/null 2>&1
| ../../arm-angstrom-linux-gnueabi-libtool  --tag=CC   --mode=link
arm-angstrom-linux-gnueabi-gcc  -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard
--sysroot=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6 -pthread
-O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=/usr/src/debug/icecast/2.3.2-r2
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
 -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o libicethread.la
libicethread_la-thread.lo
| arm-angstrom-linux-gnueabi-libtool: link: arm-angstrom-linux-gnueabi-ar
cru .libs/libicethread.a .libs/libicethread_la-thread.o
| arm-angstrom-linux-gnueabi-ar: `u' modifier ignored since `D' is the
default (see `U')
| arm-angstrom-linux-gnueabi-libtool: link:
arm-angstrom-linux-gnueabi-ranlib .libs/libicethread.a
| arm-angstrom-linux-gnueabi-libtool: link: ( cd ".libs" && rm -f "
libicethread.la" && ln -s "../libicethread.la" "libicethread.la" )
| make[3]: Leaving directory
'/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src/thread'
| Making all in httpp
| make[3]: Entering directory
'/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src/httpp'
| ../../arm-angstrom-linux-gnueabi-libtool  --tag=CC   --mode=compile
arm-angstrom-linux-gnueabi-gcc  -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard
--sysroot=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6
-DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/httpp -I../..
-I../../../icecast-2.3.2/src/httpp/.. -Wall -ffast-math -fsigned-char
--should-not-have-used-/usr/bin/xslt-config
-I/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6/usr/lib/include
-pthread -O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=/usr/src/debug/icecast/2.3.2-r2
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
-c -o libicehttpp_la-httpp.lo `test -f 'httpp.c' || echo
'../../../icecast-2.3.2/src/httpp/'`httpp.c
| ERROR: oe_runmake failed
| arm-angstrom-linux-gnueabi-libtool: compile:
arm-angstrom-linux-gnueabi-gcc -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard
--sysroot=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6
-DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/httpp -I../..
-I../../../icecast-2.3.2/src/httpp/.. -Wall -ffast-math -fsigned-char
--should-not-have-used-/usr/bin/xslt-config
-I/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6/usr/lib/include
-pthread -O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=/usr/src/debug/icecast/2.3.2-r2
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=
-fdebug-prefix-map=/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
-c ../../../icecast-2.3.2/src/httpp/httpp.c  -fPIC -DPIC -o
.libs/libicehttpp_la-httpp.o
| arm-angstrom-linux-gnueabi-gcc: error: unrecognized command line option
'--should-not-have-used-/usr/bin/xslt-config'
| Makefile:425: recipe for target 'libicehttpp_la-httpp.lo' failed
| make[3]: *** [libicehttpp_la-httpp.lo] Error 1
| make[3]: Leaving directory
'/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src/httpp'
| Makefile:570: recipe for target 'all-recursive' failed
| make[2]: *** [all-recursive] Error 1
| make[2]: Leaving directory
'/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src'
| Makefile:488: recipe for target 'all-recursive' failed
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
'/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build'
| Makefile:399: recipe for target 'all' failed
| make: *** [all] Error 2
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/temp/log.do_compile.38033)
ERROR: Task
(/home/igor/oe-core/build/../layers/meta-openembedded/meta-oe/recipes-graphics/xorg-app/icecast_2.3.2.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 897 tasks of which 891 didn't need to be
rerun and 1 failed.
NOTE: Writing buildhistory
Waiting for 0 running tasks to finish:
error: object file .git/objects/01/618b9b57aefcf80ddea529c1f72d6e21968118
is empty
error: object file .git/objects/01/618b9b57aefcf80ddea529c1f72d6e21968118
is empty
fatal: loose object 01618b9b57aefcf80ddea529c1f72d6e21968118 (stored in
.git/objects/01/618b9b57aefcf80ddea529c1f72d6e21968118) is corrupt
error: object file .git/objects/01/618b9b57aefcf80ddea529c1f72d6e21968118
is empty
error: object file .git/objects/01/618b9b57aefcf80ddea529c1f72d6e21968118
is empty

Summary: 1 task failed:

/home/igor/oe-core/build/../layers/meta-openembedded/meta-oe/recipes-graphics/xorg-app/icecast_2.3.2.bb:
do_compile
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

This is the recipe that I'm using:

DESCRIPTION = " Icecast streaming media server "
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"


DEPENDS = "libvorbis libogg libtheora speex libxslt libxslt-native"

PR = "r2"

SRC_URI = "http://downloads.xiph.org/releases/icecast/${PN}-${PV}.tar.gz"
SRC_URI[md5sum] = "ff516b3ccd2bcc31e68f460cd316093f"
SRC_URI[sha256sum] =
"4742b38fc55b6373895a7c0a35baed49a848fec99f5e8538e3f0157383d0b3f0"

# Need to disable curl
EXTRA_OECONF = " \
        --without-curl \
        --with-speex=${STAGING_LIBDIR} \
        --with-ogg=${STAGING_LIBDIR} \
        --with-vorbis=${STAGING_LIBDIR} \
        --with-theora=${STAGING_LIBDIR} \
       "

S = "${WORKDIR}/${PN}-${PV}"

inherit autotools pkgconfig

Any idea what should I do and How to resolve this?
thanks.

--000000000000ff59ac0582548e8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Good morning.</div><div><br></div><div>I&#39;m trying=
 to compile the icecast, and I had this issue:</div><div><br></div><div><di=
v>Initialising tasks: 100% |###############################################=
######################################################| Time: 0:00:03</div>=
<div>NOTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQueue Task=
s</div><div>ERROR: icecast-2.3.2-r2 do_compile: oe_runmake failed</div><div=
>ERROR: icecast-2.3.2-r2 do_compile: Function failed: do_compile (log file =
is located at /home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angst=
rom-linux-gnueabi/icecast/2.3.2-r2/temp/log.do_compile.38033)</div><div>ERR=
OR: Logfile of failure stored in: /home/igor/oe-core/build/tmp-glibc/work/a=
rmv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/temp/log.do_compile.=
38033</div><div>Log data follows:</div><div>| DEBUG: SITE files [&#39;endia=
n-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;arm-32&#39;, &#=
39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;arm=
-linux-gnueabi&#39;, &#39;common&#39;]</div><div>| DEBUG: Executing shell f=
unction do_compile</div><div>| NOTE: make -j 1</div><div>| make=C2=A0 all-r=
ecursive</div><div>| make[1]: Entering directory &#39;/home/igor/oe-core/bu=
ild/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/=
build&#39;</div><div>| Making all in src</div><div>| make[2]: Entering dire=
ctory &#39;/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom=
-linux-gnueabi/icecast/2.3.2-r2/build/src&#39;</div><div>| Making all in av=
l</div><div>| make[3]: Entering directory &#39;/home/igor/oe-core/build/tmp=
-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/s=
rc/avl&#39;</div><div>| ../../arm-angstrom-linux-gnueabi-libtool=C2=A0 --ta=
g=3DCC=C2=A0 =C2=A0--mode=3Dcompile arm-angstrom-linux-gnueabi-gcc=C2=A0 -m=
arch=3Darmv7-a -mthumb -mfpu=3Dneon=C2=A0 -mfloat-abi=3Dhard --sysroot=3D/h=
ome/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6 -DHAVE_CONFIG_H -I. -=
I../../../icecast-2.3.2/src/avl -I../.. -I../../../icecast-2.3.2/src/avl/..=
=C2=A0 =C2=A0-pthread -O2 -pipe -g -feliminate-unused-debug-types -fdebug-p=
refix-map=3D/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstro=
m-linux-gnueabi/icecast/2.3.2-r2=3D/usr/src/debug/icecast/2.3.2-r2 -fdebug-=
prefix-map=3D/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=3D -f=
debug-prefix-map=3D/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
=3D=C2=A0 -c -o libiceavl_la-avl.lo `test -f &#39;avl.c&#39; || echo &#39;.=
./../../icecast-2.3.2/src/avl/&#39;`avl.c</div><div>| arm-angstrom-linux-gn=
ueabi-libtool: compile:=C2=A0 arm-angstrom-linux-gnueabi-gcc -march=3Darmv7=
-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard --sysroot=3D/home/igor/oe-core/b=
uild/tmp-glibc/sysroots/apalis-imx6 -DHAVE_CONFIG_H -I. -I../../../icecast-=
2.3.2/src/avl -I../.. -I../../../icecast-2.3.2/src/avl/.. -pthread -O2 -pip=
e -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/igor/oe-core=
/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-=
r2=3D/usr/src/debug/icecast/2.3.2-r2 -fdebug-prefix-map=3D/home/igor/oe-cor=
e/build/tmp-glibc/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/home/igor/=
oe-core/build/tmp-glibc/sysroots/apalis-imx6=3D -c ../../../icecast-2.3.2/s=
rc/avl/avl.c=C2=A0 -fPIC -DPIC -o .libs/libiceavl_la-avl.o</div><div>| arm-=
angstrom-linux-gnueabi-libtool: compile:=C2=A0 arm-angstrom-linux-gnueabi-g=
cc -march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard --sysroot=3D/ho=
me/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6 -DHAVE_CONFIG_H -I. -I=
../../../icecast-2.3.2/src/avl -I../.. -I../../../icecast-2.3.2/src/avl/.. =
-pthread -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/=
home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnuea=
bi/icecast/2.3.2-r2=3D/usr/src/debug/icecast/2.3.2-r2 -fdebug-prefix-map=3D=
/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=3D -fdebug-prefix-=
map=3D/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=3D -c ../../.=
./icecast-2.3.2/src/avl/avl.c -o libiceavl_la-avl.o &gt;/dev/null 2&gt;&amp=
;1</div><div>| ../../arm-angstrom-linux-gnueabi-libtool=C2=A0 --tag=3DCC=C2=
=A0 =C2=A0--mode=3Dlink arm-angstrom-linux-gnueabi-gcc=C2=A0 -march=3Darmv7=
-a -mthumb -mfpu=3Dneon=C2=A0 -mfloat-abi=3Dhard --sysroot=3D/home/igor/oe-=
core/build/tmp-glibc/sysroots/apalis-imx6 -pthread -O2 -pipe -g -feliminate=
-unused-debug-types -fdebug-prefix-map=3D/home/igor/oe-core/build/tmp-glibc=
/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=3D/usr/src/de=
bug/icecast/2.3.2-r2 -fdebug-prefix-map=3D/home/igor/oe-core/build/tmp-glib=
c/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/home/igor/oe-core/build/tm=
p-glibc/sysroots/apalis-imx6=3D=C2=A0 =C2=A0-Wl,-O1 -Wl,--hash-style=3Dgnu =
-Wl,--as-needed -o=C2=A0<a href=3D"http://libiceavl.la/" target=3D"_blank">=
libiceavl.la</a>=C2=A0 libiceavl_la-avl.lo</div><div>| arm-angstrom-linux-g=
nueabi-libtool: link: arm-angstrom-linux-gnueabi-ar cru .libs/libiceavl.a .=
libs/libiceavl_la-avl.o</div><div>| arm-angstrom-linux-gnueabi-ar: `u&#39; =
modifier ignored since `D&#39; is the default (see `U&#39;)</div><div>| arm=
-angstrom-linux-gnueabi-libtool: link: arm-angstrom-linux-gnueabi-ranlib .l=
ibs/libiceavl.a</div><div>| arm-angstrom-linux-gnueabi-libtool: link: ( cd =
&quot;.libs&quot; &amp;&amp; rm -f &quot;<a href=3D"http://libiceavl.la/" t=
arget=3D"_blank">libiceavl.la</a>&quot; &amp;&amp; ln -s &quot;../<a href=
=3D"http://libiceavl.la/" target=3D"_blank">libiceavl.la</a>&quot; &quot;<a=
 href=3D"http://libiceavl.la/" target=3D"_blank">libiceavl.la</a>&quot; )</=
div><div>| make[3]: Leaving directory &#39;/home/igor/oe-core/build/tmp-gli=
bc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src/a=
vl&#39;</div><div>| Making all in thread</div><div>| make[3]: Entering dire=
ctory &#39;/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom=
-linux-gnueabi/icecast/2.3.2-r2/build/src/thread&#39;</div><div>| ../../arm=
-angstrom-linux-gnueabi-libtool=C2=A0 --tag=3DCC=C2=A0 =C2=A0--mode=3Dcompi=
le arm-angstrom-linux-gnueabi-gcc=C2=A0 -march=3Darmv7-a -mthumb -mfpu=3Dne=
on=C2=A0 -mfloat-abi=3Dhard --sysroot=3D/home/igor/oe-core/build/tmp-glibc/=
sysroots/apalis-imx6 -DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/threa=
d -I../.. -I../../../icecast-2.3.2/src/thread/..=C2=A0 =C2=A0-pthread -O2 -=
pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/igor/oe-c=
ore/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3=
.2-r2=3D/usr/src/debug/icecast/2.3.2-r2 -fdebug-prefix-map=3D/home/igor/oe-=
core/build/tmp-glibc/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/home/ig=
or/oe-core/build/tmp-glibc/sysroots/apalis-imx6=3D=C2=A0 -c -o libicethread=
_la-thread.lo `test -f &#39;thread.c&#39; || echo &#39;../../../icecast-2.3=
.2/src/thread/&#39;`thread.c</div><div>| arm-angstrom-linux-gnueabi-libtool=
: compile:=C2=A0 arm-angstrom-linux-gnueabi-gcc -march=3Darmv7-a -mthumb -m=
fpu=3Dneon -mfloat-abi=3Dhard --sysroot=3D/home/igor/oe-core/build/tmp-glib=
c/sysroots/apalis-imx6 -DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/thr=
ead -I../.. -I../../../icecast-2.3.2/src/thread/.. -pthread -O2 -pipe -g -f=
eliminate-unused-debug-types -fdebug-prefix-map=3D/home/igor/oe-core/build/=
tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=3D/u=
sr/src/debug/icecast/2.3.2-r2 -fdebug-prefix-map=3D/home/igor/oe-core/build=
/tmp-glibc/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/home/igor/oe-core=
/build/tmp-glibc/sysroots/apalis-imx6=3D -c ../../../icecast-2.3.2/src/thre=
ad/thread.c=C2=A0 -fPIC -DPIC -o .libs/libicethread_la-thread.o</div><div>|=
 arm-angstrom-linux-gnueabi-libtool: compile:=C2=A0 arm-angstrom-linux-gnue=
abi-gcc -march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard --sysroot=
=3D/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6 -DHAVE_CONFIG_H =
-I. -I../../../icecast-2.3.2/src/thread -I../.. -I../../../icecast-2.3.2/sr=
c/thread/.. -pthread -O2 -pipe -g -feliminate-unused-debug-types -fdebug-pr=
efix-map=3D/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom=
-linux-gnueabi/icecast/2.3.2-r2=3D/usr/src/debug/icecast/2.3.2-r2 -fdebug-p=
refix-map=3D/home/igor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=3D -fd=
ebug-prefix-map=3D/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=
=3D -c ../../../icecast-2.3.2/src/thread/thread.c -o libicethread_la-thread=
.o &gt;/dev/null 2&gt;&amp;1</div><div>| ../../arm-angstrom-linux-gnueabi-l=
ibtool=C2=A0 --tag=3DCC=C2=A0 =C2=A0--mode=3Dlink arm-angstrom-linux-gnueab=
i-gcc=C2=A0 -march=3Darmv7-a -mthumb -mfpu=3Dneon=C2=A0 -mfloat-abi=3Dhard =
--sysroot=3D/home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6 -pthrea=
d -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/ig=
or/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icec=
ast/2.3.2-r2=3D/usr/src/debug/icecast/2.3.2-r2 -fdebug-prefix-map=3D/home/i=
gor/oe-core/build/tmp-glibc/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/=
home/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=3D=C2=A0 =C2=A0-Wl,-=
O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o=C2=A0<a href=3D"http://libicet=
hread.la/" target=3D"_blank">libicethread.la</a>=C2=A0 libicethread_la-thre=
ad.lo</div><div>| arm-angstrom-linux-gnueabi-libtool: link: arm-angstrom-li=
nux-gnueabi-ar cru .libs/libicethread.a .libs/libicethread_la-thread.o</div=
><div>| arm-angstrom-linux-gnueabi-ar: `u&#39; modifier ignored since `D&#3=
9; is the default (see `U&#39;)</div><div>| arm-angstrom-linux-gnueabi-libt=
ool: link: arm-angstrom-linux-gnueabi-ranlib .libs/libicethread.a</div><div=
>| arm-angstrom-linux-gnueabi-libtool: link: ( cd &quot;.libs&quot; &amp;&a=
mp; rm -f &quot;<a href=3D"http://libicethread.la/" target=3D"_blank">libic=
ethread.la</a>&quot; &amp;&amp; ln -s &quot;../<a href=3D"http://libicethre=
ad.la/" target=3D"_blank">libicethread.la</a>&quot; &quot;<a href=3D"http:/=
/libicethread.la/" target=3D"_blank">libicethread.la</a>&quot; )</div><div>=
| make[3]: Leaving directory &#39;/home/igor/oe-core/build/tmp-glibc/work/a=
rmv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src/thread&#39=
;</div><div>| Making all in httpp</div><div>| make[3]: Entering directory &=
#39;/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-=
gnueabi/icecast/2.3.2-r2/build/src/httpp&#39;</div><div>| ../../arm-angstro=
m-linux-gnueabi-libtool=C2=A0 --tag=3DCC=C2=A0 =C2=A0--mode=3Dcompile arm-a=
ngstrom-linux-gnueabi-gcc=C2=A0 -march=3Darmv7-a -mthumb -mfpu=3Dneon=C2=A0=
 -mfloat-abi=3Dhard --sysroot=3D/home/igor/oe-core/build/tmp-glibc/sysroots=
/apalis-imx6 -DHAVE_CONFIG_H -I. -I../../../icecast-2.3.2/src/httpp -I../..=
 -I../../../icecast-2.3.2/src/httpp/.. -Wall -ffast-math -fsigned-char --sh=
ould-not-have-used-/usr/bin/xslt-config -I/home/igor/oe-core/build/tmp-glib=
c/sysroots/apalis-imx6/usr/lib/include=C2=A0 -pthread -O2 -pipe -g -felimin=
ate-unused-debug-types -fdebug-prefix-map=3D/home/igor/oe-core/build/tmp-gl=
ibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2=3D/usr/src=
/debug/icecast/2.3.2-r2 -fdebug-prefix-map=3D/home/igor/oe-core/build/tmp-g=
libc/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/home/igor/oe-core/build=
/tmp-glibc/sysroots/apalis-imx6=3D=C2=A0 -c -o libicehttpp_la-httpp.lo `tes=
t -f &#39;httpp.c&#39; || echo &#39;../../../icecast-2.3.2/src/httpp/&#39;`=
httpp.c</div><div>| ERROR: oe_runmake failed</div><div>| arm-angstrom-linux=
-gnueabi-libtool: compile:=C2=A0 arm-angstrom-linux-gnueabi-gcc -march=3Dar=
mv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard --sysroot=3D/home/igor/oe-cor=
e/build/tmp-glibc/sysroots/apalis-imx6 -DHAVE_CONFIG_H -I. -I../../../iceca=
st-2.3.2/src/httpp -I../.. -I../../../icecast-2.3.2/src/httpp/.. -Wall -ffa=
st-math -fsigned-char --should-not-have-used-/usr/bin/xslt-config -I/home/i=
gor/oe-core/build/tmp-glibc/sysroots/apalis-imx6/usr/lib/include -pthread -=
O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/igor/=
oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast=
/2.3.2-r2=3D/usr/src/debug/icecast/2.3.2-r2 -fdebug-prefix-map=3D/home/igor=
/oe-core/build/tmp-glibc/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/hom=
e/igor/oe-core/build/tmp-glibc/sysroots/apalis-imx6=3D -c ../../../icecast-=
2.3.2/src/httpp/httpp.c=C2=A0 -fPIC -DPIC -o .libs/libicehttpp_la-httpp.o</=
div><div>| arm-angstrom-linux-gnueabi-gcc: error: unrecognized command line=
 option &#39;--should-not-have-used-/usr/bin/xslt-config&#39;</div><div>| M=
akefile:425: recipe for target &#39;libicehttpp_la-httpp.lo&#39; failed</di=
v><div>| make[3]: *** [libicehttpp_la-httpp.lo] Error 1</div><div>| make[3]=
: Leaving directory &#39;/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf=
-neon-angstrom-linux-gnueabi/icecast/2.3.2-r2/build/src/httpp&#39;</div><di=
v>| Makefile:570: recipe for target &#39;all-recursive&#39; failed</div><di=
v>| make[2]: *** [all-recursive] Error 1</div><div>| make[2]: Leaving direc=
tory &#39;/home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-=
linux-gnueabi/icecast/2.3.2-r2/build/src&#39;</div><div>| Makefile:488: rec=
ipe for target &#39;all-recursive&#39; failed</div><div>| make[1]: *** [all=
-recursive] Error 1</div><div>| make[1]: Leaving directory &#39;/home/igor/=
oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/icecast=
/2.3.2-r2/build&#39;</div><div>| Makefile:399: recipe for target &#39;all&#=
39; failed</div><div>| make: *** [all] Error 2</div><div>| WARNING: exit co=
de 1 from a shell command.</div><div>| ERROR: Function failed: do_compile (=
log file is located at /home/igor/oe-core/build/tmp-glibc/work/armv7at2hf-n=
eon-angstrom-linux-gnueabi/icecast/2.3.2-r2/temp/log.do_compile.38033)</div=
><div>ERROR: Task (/home/igor/oe-core/build/../layers/meta-openembedded/met=
a-oe/recipes-graphics/xorg-app/icecast_2.3.2.bb:do_compile) failed with exi=
t code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempted 897 tasks of wh=
ich 891 didn&#39;t need to be rerun and 1 failed.</div><div>NOTE: Writing b=
uildhistory</div><div>Waiting for 0 running tasks to finish:</div><div>erro=
r: object file .git/objects/01/618b9b57aefcf80ddea529c1f72d6e21968118 is em=
pty</div><div>error: object file .git/objects/01/618b9b57aefcf80ddea529c1f7=
2d6e21968118 is empty</div><div>fatal: loose object 01618b9b57aefcf80ddea52=
9c1f72d6e21968118 (stored in .git/objects/01/618b9b57aefcf80ddea529c1f72d6e=
21968118) is corrupt</div><div>error: object file .git/objects/01/618b9b57a=
efcf80ddea529c1f72d6e21968118 is empty</div><div>error: object file .git/ob=
jects/01/618b9b57aefcf80ddea529c1f72d6e21968118 is empty</div><div><br></di=
v><div>Summary: 1 task failed:</div><div>=C2=A0 /home/igor/oe-core/build/..=
/layers/meta-openembedded/meta-oe/recipes-graphics/xorg-app/icecast_2.3.2.b=
b:do_compile</div><div>Summary: There was 1 WARNING message shown.</div><di=
v>Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.</div></div><div><br></div><div>This is the recipe that I&#39;m using:</d=
iv><div><br></div><div><div>DESCRIPTION =3D &quot; Icecast streaming media =
server=C2=A0&quot;<br></div><div>LICENSE =3D &quot;GPLv2&quot;</div><div>LI=
C_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae=
19f&quot;</div><div><br></div><div><br></div><div>DEPENDS =3D &quot;libvorb=
is libogg libtheora speex libxslt libxslt-native&quot;</div><div><br></div>=
<div>PR =3D &quot;r2&quot;</div><div><br></div><div>SRC_URI =3D &quot;<a hr=
ef=3D"http://downloads.xiph.org/releases/icecast/$%7BPN%7D-$%7BPV%7D.tar.gz=
" target=3D"_blank">http://downloads.xiph.org/releases/icecast/${PN}-${PV}.=
tar.gz</a>&quot;</div><div>SRC_URI[md5sum] =3D &quot;ff516b3ccd2bcc31e68f46=
0cd316093f&quot;</div><div>SRC_URI[sha256sum] =3D &quot;4742b38fc55b6373895=
a7c0a35baed49a848fec99f5e8538e3f0157383d0b3f0&quot;</div><div><br></div><di=
v># Need to disable curl</div><div>EXTRA_OECONF =3D &quot; \</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 --without-curl \</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 --with-speex=3D${STAGING_LIBDIR} \</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 --with-ogg=3D${STAGING_LIBDIR} \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 --with-vorbis=3D${STAGING_LIBDIR} \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 --with-theora=3D${STAGING_LIBDIR} \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;</div><div><br></div><div>S =3D &quot;${WORKDIR}/${PN}-${PV}&quot;=
</div><div><br></div><div>inherit autotools pkgconfig</div></div><div><br><=
/div><div>Any idea what should I do and How to resolve this?</div><div>than=
ks.</div><div><br></div></div>

--000000000000ff59ac0582548e8c--

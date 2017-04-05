Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0640E00985; Wed,  5 Apr 2017 08:38:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08BDCE00970
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 08:38:01 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id t20so3754129wra.2
	for <yocto@yoctoproject.org>; Wed, 05 Apr 2017 08:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=S4UXfASgcui6xKxSu85mno1IYVwS9YkNJBWJnQeDNF4=;
	b=GYBFL5WU3SHLfxd9UO8OLmUV72tJOxqW/q8GKMHIuAP99wv0Si0DSfYeygjbqoXniH
	CMoiSRmNGX3TXbuxNzc85vck1a4BMTp3buPLpc2zX/BoDTfUkvG76OEdDLMzKDtxfquc
	cgnSxTsVOV3486MnAoBUyJcJnIl9b1g7umIUI6Bke6istBR1JlCDtCi4nh4aL7mZ+cG0
	MpM+bJ21qxDb1LAZtO/c9Wt0P8USOIuX9agF2ZiCNjq1aWYCxF6VkHLVKqm2oawv9AVq
	Qrg7g3s0I2D0m+SvG74kF9HZjBPJn32OiAE+tTbEzGQHMyOb9Izx3NaIVrsLguhIL9m8
	SoUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=S4UXfASgcui6xKxSu85mno1IYVwS9YkNJBWJnQeDNF4=;
	b=UpxcQ5dzkHItjdc0zvRkOczfYj5hH63Ty/Aj3VHGJJo7G8pIDYfFjOG/GW5eUoOnim
	S6geNrDZMvIy7/Dcx5R9CFK/Re7Ox3VLcndWGd+Mb7q9wPo2+0KlcGr/1FgW0c/kgg8i
	BZgYjyQ9vncbPdVjOvjbb3RFcncSNhX/l4BU5Miq0VzCGzTIauwz2lRYzpUsbyyA3y3b
	035YS+F0W5sfyZbNv7ItLvKLBQk1x7BlB/4rseibNC3yNaCv3fwbZ1IHMGxT+zcEY1IA
	ey1eYqb8eFtc77xVboK8RvhTAJ92aHYS2gGUf2rXUEqJ9fENCqxlVF3qod3XejqPGqkq
	f/Yg==
X-Gm-Message-State: AFeK/H0ysz4zqvSVJE3CKE8hDSow3veZ2oIqyFEDj/XCs81NR+9IoFLo
	DCQmBq/t8eqmnSf/4w0=
X-Received: by 10.28.60.65 with SMTP id j62mr19645596wma.73.1491406680555;
	Wed, 05 Apr 2017 08:38:00 -0700 (PDT)
Received: from carbonA (host109-159-26-35.range109-159.btcentralplus.com.
	[109.159.26.35]) by smtp.gmail.com with ESMTPSA id
	t16sm16586415wra.44.2017.04.05.08.37.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Apr 2017 08:37:59 -0700 (PDT)
Date: Wed, 5 Apr 2017 16:37:57 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andrea Galbusera <gizero@gmail.com>
Message-ID: <20170405153757.GN4938@carbonA>
References: <1491250047-3989-1-git-send-email-gizero@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1491250047-3989-1-git-send-email-gizero@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] wiringpi: uprev to 2.44
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
X-List-Received-Date: Wed, 05 Apr 2017 15:38:04 -0000
X-Groupsio-MsgNum: 35429
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p1Od3smaOkJqivj4"
Content-Disposition: inline

--p1Od3smaOkJqivj4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 03, 2017 at 10:07:27PM +0200, Andrea Galbusera wrote:
> This upgrade is required to solve the following runtime hardware detection
> issue when calling wiringPiSetup() on the Pi3:
>
>   Unable to determine hardware version. I see: Hardware   : BCM2835
>   ,
>   - expecting BCM2708 or BCM2709.
>
> This was triggered by the recent kernel upgrade to 4.9 that introduced
> "BCM2835" as the hardware signature in /proc/cpuinfo.
>
> Patches reworked as follow:
> * 0001-Add-initial-cross-compile-support.patch: rebase to current upstream
> * 0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch: drop since i=
s now
> upstream
>
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>  .../0001-Add-initial-cross-compile-support.patch   | 96 +++++++++++-----=
------
>  ...de-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch | 58 -------------
>  recipes-devtools/wiringPi/wiringpi_git.bb          |  5 +-
>  3 files changed, 51 insertions(+), 108 deletions(-)
>  delete mode 100644 recipes-devtools/wiringPi/wiringpi/0001-include-asm-i=
octl.h-directly-for-_IOC_SIZEBITS.patch
>
> diff --git a/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compi=
le-support.patch b/recipes-devtools/wiringPi/files/0001-Add-initial-cross-c=
ompile-support.patch
> index 603422c..a081b8d 100644
> --- a/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-supp=
ort.patch
> +++ b/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-supp=
ort.patch
> @@ -1,21 +1,26 @@
> -From 6d85e6cc3ab97c3f060e5e0a8e3f1945a14c86ba Mon Sep 17 00:00:00 2001
> -From: Gianfranco Costamagna <gianfranco.costamagna@abinsula.com>
> -Date: Mon, 12 Oct 2015 12:15:51 +0200
> -Subject: [PATCH] Add initial cross compile support (rebase from Petter M=
ab=E4cker <petter@technux.se> version)
> +From 4ed727aa9e528f130fdc8798df771037a1f22fc9 Mon Sep 17 00:00:00 2001
> +From: Andrea Galbusera <gizero@gmail.com>
> +Date: Mon, 3 Apr 2017 14:48:14 +0200
> +Subject: [PATCH] =3D?UTF-8?q?Add=3D20initial=3D20cross=3D20compile=3D20s=
upport=3D20(re?=3D
> + =3D?UTF-8?q?base=3D20from=3D20Petter=3D20Mab=3DC3=3DA4cker=3D20<petter@=
technux.se>=3D20ve?=3D
> + =3D?UTF-8?q?rsion)?=3D
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=3DUTF-8
> +Content-Transfer-Encoding: 8bit
>
>  ---
> - devLib/Makefile             |   54 ++++++++++++++++++++++++------------=
-------
> - examples/Gertboard/Makefile |   22 +++++++++++-------
> - examples/Makefile           |   22 +++++++++++-------
> - examples/PiFace/Makefile    |   22 +++++++++++-------
> - examples/PiGlow/Makefile    |    4 ++--
> - examples/q2w/Makefile       |    4 ++--
> - gpio/Makefile               |   29 ++++++++++++-----------
> - wiringPi/Makefile           |   50 +++++++++++++++++++++---------------=
---
> - 8 files changed, 119 insertions(+), 88 deletions(-)
> + devLib/Makefile             | 54 +++++++++++++++++++++++++-------------=
-------
> + examples/Gertboard/Makefile | 20 +++++++++++------
> + examples/Makefile           | 20 +++++++++++------
> + examples/PiFace/Makefile    | 20 +++++++++++------
> + examples/PiGlow/Makefile    |  4 ++--
> + examples/q2w/Makefile       |  4 ++--
> + gpio/Makefile               | 29 ++++++++++++------------
> + wiringPi/Makefile           | 50 +++++++++++++++++++++++---------------=
---
> + 8 files changed, 116 insertions(+), 85 deletions(-)
>
>  diff --git a/devLib/Makefile b/devLib/Makefile
> -index 0fb0033..cbea759 100644
> +index cf665d6..040c03a 100644
>  --- a/devLib/Makefile
>  +++ b/devLib/Makefile
>  @@ -31,15 +31,19 @@ ifneq ($V,1)
> @@ -46,7 +51,7 @@ index 0fb0033..cbea759 100644
>
>   LIBS    =3D
>
> -@@ -66,16 +70,16 @@ $(STATIC):	$(OBJ)
> +@@ -68,16 +72,16 @@ $(STATIC):	$(OBJ)
>
>   $(DYNAMIC):	$(OBJ)
>   	$Q echo "[Link (Dynamic)]"
> @@ -66,7 +71,7 @@ index 0fb0033..cbea759 100644
>
>   .PHONY:	tags
>   tags:	$(SRC)
> -@@ -86,22 +90,22 @@ tags:	$(SRC)
> +@@ -88,22 +92,22 @@ tags:	$(SRC)
>   .PHONY:	install
>   install:	$(DYNAMIC)
>   	$Q echo "[Install Headers]"
> @@ -99,7 +104,7 @@ index 0fb0033..cbea759 100644
>
>   .PHONY:	install-deb
>   install-deb:	$(DYNAMIC)
> -@@ -116,9 +120,11 @@ install-deb:	$(DYNAMIC)
> +@@ -118,9 +122,11 @@ install-deb:	$(DYNAMIC)
>   .PHONY:	uninstall
>   uninstall:
>   	$Q echo "[UnInstall]"
> @@ -127,12 +132,11 @@ index 1939ad6..98d1415 100644
>  -CC	=3D gcc
>  -INCLUDE	=3D -I/usr/local/include
>  -CFLAGS	=3D $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
> --
> --LDFLAGS	=3D -L/usr/local/lib
> --LDLIBS    =3D -lwiringPi -lwiringPiDev -lpthread -lm
>  +DESTDIR?=3D/usr
>  +PREFIX?=3D/local
> -+
> +
> +-LDFLAGS	=3D -L/usr/local/lib
> +-LDLIBS    =3D -lwiringPi -lwiringPiDev -lpthread -lm
>  +INCLUDE_DIR?=3D$(DESTDIR)$(PREFIX)/include
>  +LIB_DIR?=3D$(DESTDIR)$(PREFIX)/lib
>  +
> @@ -148,7 +152,7 @@ index 1939ad6..98d1415 100644
>   # Should not alter anything below this line
>   #######################################################################=
########
>  diff --git a/examples/Makefile b/examples/Makefile
> -index e6b9b71..931b167 100644
> +index 6d87885..8623816 100644
>  --- a/examples/Makefile
>  +++ b/examples/Makefile
>  @@ -26,14 +26,20 @@ ifneq ($V,1)
> @@ -160,12 +164,11 @@ index e6b9b71..931b167 100644
>  -CC	=3D gcc
>  -INCLUDE	=3D -I/usr/local/include
>  -CFLAGS	=3D $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
> --
> --LDFLAGS	=3D -L/usr/local/lib
> --LDLIBS    =3D -lwiringPi -lwiringPiDev -lpthread -lm
>  +DESTDIR?=3D/usr
>  +PREFIX?=3D/local
> -+
> +
> +-LDFLAGS	=3D -L/usr/local/lib
> +-LDLIBS    =3D -lwiringPi -lwiringPiDev -lpthread -lm -lcrypt -lrt
>  +INCLUDE_DIR?=3D$(DESTDIR)$(PREFIX)/include
>  +LIB_DIR?=3D$(DESTDIR)$(PREFIX)/lib
>  +
> @@ -176,12 +179,12 @@ index e6b9b71..931b167 100644
>  +CFLAGS	?=3D $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
>  +
>  +LDFLAGS	?=3D -L$(LIB_DIR)
> -+LDLIBS    ?=3D -lwiringPi -lwiringPiDev -lpthread -lm
> ++LDLIBS    ?=3D -lwiringPi -lwiringPiDev -lpthread -lm -lcrypt -lrt
>
>   # Should not alter anything below this line
>   #######################################################################=
########
>  diff --git a/examples/PiFace/Makefile b/examples/PiFace/Makefile
> -index 4685adc..cfaf902 100644
> +index f937c14..ad030b3 100644
>  --- a/examples/PiFace/Makefile
>  +++ b/examples/PiFace/Makefile
>  @@ -26,14 +26,20 @@ ifneq ($V,1)
> @@ -193,12 +196,11 @@ index 4685adc..cfaf902 100644
>  -CC	=3D gcc
>  -INCLUDE	=3D -I/usr/local/include
>  -CFLAGS	=3D $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
> --
> --LDFLAGS	=3D -L/usr/local/lib
> --LDLIBS    =3D -lwiringPi -lwiringPiDev -lpthread -lm
>  +DESTDIR?=3D/usr
>  +PREFIX?=3D/local
> -+
> +
> +-LDFLAGS	=3D -L/usr/local/lib
> +-LDLIBS    =3D -lwiringPi -lwiringPiDev -lpthread -lm
>  +INCLUDE_DIR?=3D$(DESTDIR)$(PREFIX)/include
>  +LIB_DIR?=3D$(DESTDIR)$(PREFIX)/lib
>  +
> @@ -214,7 +216,7 @@ index 4685adc..cfaf902 100644
>   # Should not alter anything below this line
>   #######################################################################=
########
>  diff --git a/examples/PiGlow/Makefile b/examples/PiGlow/Makefile
> -index acd4818..dabd64e 100644
> +index f182db7..d1ea74f 100644
>  --- a/examples/PiGlow/Makefile
>  +++ b/examples/PiGlow/Makefile
>  @@ -29,10 +29,10 @@ endif
> @@ -231,7 +233,7 @@ index acd4818..dabd64e 100644
>
>   # Should not alter anything below this line
>  diff --git a/examples/q2w/Makefile b/examples/q2w/Makefile
> -index 6f50fa0..c5e9f6e 100644
> +index 8f773bf..14aa6e4 100644
>  --- a/examples/q2w/Makefile
>  +++ b/examples/q2w/Makefile
>  @@ -29,10 +29,10 @@ endif
> @@ -248,7 +250,7 @@ index 6f50fa0..c5e9f6e 100644
>
>   #######################################################################=
########
>  diff --git a/gpio/Makefile b/gpio/Makefile
> -index 7dcd090..83ec454 100644
> +index f41a005..22753ee 100644
>  --- a/gpio/Makefile
>  +++ b/gpio/Makefile
>  @@ -30,13 +30,17 @@ ifneq ($V,1)
> @@ -259,7 +261,7 @@ index 7dcd090..83ec454 100644
>  -DEBUG	=3D -O2
>  -CC	=3D gcc
>  -INCLUDE	=3D -I$(DESTDIR)$(PREFIX)/include
> --CFLAGS	=3D $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
> +-CFLAGS	=3D $(DEBUG) -Wall -Wextra $(INCLUDE) -Winline -pipe
>  +INCLUDE_DIR?=3D$(DESTDIR)$(PREFIX)/include
>  +LIB_DIR?=3D$(DESTDIR)$(PREFIX)/lib
>  +BIN_DIR?=3D$(DESTDIR)$(PREFIX)/bin
> @@ -269,10 +271,10 @@ index 7dcd090..83ec454 100644
>  +DEBUG	?=3D -O2
>  +CC	?=3D gcc
>  +INCLUDE	?=3D -I$(INCLUDE_DIR)
> -+CFLAGS	?=3D $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
> ++CFLAGS	?=3D $(DEBUG) -Wall -Wextra $(INCLUDE) -Winline -pipe
>  +
>  +LDFLAGS	?=3D -L$(LIB_DIR)
> - LIBS    =3D -lwiringPi -lwiringPiDev -lpthread
> + LIBS    =3D -lwiringPi -lwiringPiDev -lpthread -lrt -lm -lcrypt
>
>   # May not need to  alter anything below this line
>  @@ -72,13 +76,10 @@ tags:	$(SRC)
> @@ -293,7 +295,7 @@ index 7dcd090..83ec454 100644
>
>   .PHONY:	install-deb
>   install-deb:	gpio
> -@@ -89,7 +90,7 @@ install-deb:	gpio
> +@@ -91,7 +92,7 @@ install-deb:	gpio
>   .PHONY:	uninstall
>   uninstall:
>   	$Q echo "[UnInstall]"
> @@ -303,7 +305,7 @@ index 7dcd090..83ec454 100644
>
>   .PHONY:	depend
>  diff --git a/wiringPi/Makefile b/wiringPi/Makefile
> -index 6bbcc5d..5355b74 100644
> +index e1868b9..e39f75a 100644
>  --- a/wiringPi/Makefile
>  +++ b/wiringPi/Makefile
>  @@ -25,19 +25,23 @@ VERSION=3D$(shell cat ../VERSION)
> @@ -334,14 +336,14 @@ index 6bbcc5d..5355b74 100644
>  +CC	?=3D gcc
>  +INCLUDE	?=3D -I.
>   DEFS	=3D -D_GNU_SOURCE
> - CFLAGS	=3D $(DEBUG) $(DEFS) -Wformat=3D2 -Wall -Winline $(INCLUDE) -pip=
e -fPIC
> + CFLAGS	=3D $(DEBUG) $(DEFS) -Wformat=3D2 -Wall -Wextra -Winline $(INCLU=
DE) -pipe -fPIC
>
> -@@ -89,17 +93,17 @@ $(STATIC):	$(OBJ)
> +@@ -78,17 +82,17 @@ $(STATIC):	$(OBJ)
>
>   $(DYNAMIC):	$(OBJ)
>   	$Q echo "[Link (Dynamic)]"
> --	$Q $(CC) -shared -Wl,-soname,libwiringPi.so$(WIRINGPI_SONAME_SUFFIX) -=
o libwiringPi.so.$(VERSION) -lpthread $(OBJ)
> -+	$Q $(CC) $(LDFLAGS) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ=
) -o $(BASE_NAME).so -lpthread $(OBJ)
> +-	$Q $(CC) -shared -Wl,-soname,libwiringPi.so$(WIRINGPI_SONAME_SUFFIX) -=
o libwiringPi.so.$(VERSION) $(LIBS) $(OBJ)
> ++	$Q $(CC) $(LDFLAGS) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ=
) -o $(BASE_NAME).so $(LIBS) $(OBJ)
>
>   .c.o:
>   	$Q echo [Compile] $<
> @@ -357,7 +359,7 @@ index 6bbcc5d..5355b74 100644
>
>   .PHONY:	tags
>   tags:	$(SRC)
> -@@ -110,22 +114,22 @@ tags:	$(SRC)
> +@@ -99,22 +103,22 @@ tags:	$(SRC)
>   .PHONY:	install
>   install:	$(DYNAMIC)
>   	$Q echo "[Install Headers]"
> @@ -390,7 +392,7 @@ index 6bbcc5d..5355b74 100644
>
>   .PHONY:	install-deb
>   install-deb:	$(DYNAMIC)
> -@@ -140,9 +144,11 @@ install-deb:	$(DYNAMIC)
> +@@ -129,9 +133,11 @@ install-deb:	$(DYNAMIC)
>   .PHONY:	uninstall
>   uninstall:
>   	$Q echo "[UnInstall]"
> @@ -406,5 +408,5 @@ index 6bbcc5d..5355b74 100644
>
>   .PHONY:	depend
>  --
> -2.1.4
> +2.7.4
>
> diff --git a/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-=
directly-for-_IOC_SIZEBITS.patch b/recipes-devtools/wiringPi/wiringpi/0001-=
include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch
> deleted file mode 100644
> index 5de5853..0000000
> --- a/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directl=
y-for-_IOC_SIZEBITS.patch
> +++ /dev/null
> @@ -1,58 +0,0 @@
> -From 7f65eb37a82a6d9b095d9c8f262ad9dd205acd03 Mon Sep 17 00:00:00 2001
> -From: Khem Raj <raj.khem@gmail.com>
> -Date: Sat, 30 Jan 2016 16:57:38 -0800
> -Subject: [PATCH] include <asm/ioctl.h> directly for _IOC_SIZEBITS
> -
> -Fixes errors like
> -| wiringPiSPI.c: In function 'wiringPiSPIDataRW':
> -| wiringPiSPI.c:89:35: error: '_IOC_SIZEBITS' undeclared (first use in
> -this function)
> -
> -Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ----
> -Upstream-Status: Submitted
> -
> - wiringPi/wiringPi.c    | 1 +
> - wiringPi/wiringPiI2C.c | 1 +
> - wiringPi/wiringPiSPI.c | 1 +
> - 3 files changed, 3 insertions(+)
> -
> -diff --git a/wiringPi/wiringPi.c b/wiringPi/wiringPi.c
> -index 32e5100..cb5db9d 100644
> ---- a/wiringPi/wiringPi.c
> -+++ b/wiringPi/wiringPi.c
> -@@ -64,6 +64,7 @@
> - #include <time.h>
> - #include <fcntl.h>
> - #include <pthread.h>
> -+#include <asm/ioctl.h>
> - #include <sys/time.h>
> - #include <sys/mman.h>
> - #include <sys/stat.h>
> -diff --git a/wiringPi/wiringPiI2C.c b/wiringPi/wiringPiI2C.c
> -index c787bce..efdf53c 100644
> ---- a/wiringPi/wiringPiI2C.c
> -+++ b/wiringPi/wiringPiI2C.c
> -@@ -52,6 +52,7 @@
> - #include <string.h>
> - #include <fcntl.h>
> - #include <sys/ioctl.h>
> -+#include <asm/ioctl.h>
> -
> - #include "wiringPi.h"
> - #include "wiringPiI2C.h"
> -diff --git a/wiringPi/wiringPiSPI.c b/wiringPi/wiringPiSPI.c
> -index 453df31..ae3c7d9 100644
> ---- a/wiringPi/wiringPiSPI.c
> -+++ b/wiringPi/wiringPiSPI.c
> -@@ -27,6 +27,7 @@
> - #include <fcntl.h>
> - #include <errno.h>
> - #include <string.h>
> -+#include <asm/ioctl.h>
> - #include <sys/ioctl.h>
> - #include <linux/spi/spidev.h>
> -
> ---
> -2.7.0
> -
> diff --git a/recipes-devtools/wiringPi/wiringpi_git.bb b/recipes-devtools=
/wiringPi/wiringpi_git.bb
> index c337b19..7953a55 100644
> --- a/recipes-devtools/wiringPi/wiringpi_git.bb
> +++ b/recipes-devtools/wiringPi/wiringpi_git.bb
> @@ -4,14 +4,13 @@ SECTION =3D "devel/libs"
>  LICENSE =3D "LGPLv3+"
>  LIC_FILES_CHKSUM =3D "file://COPYING.LESSER;md5=3De6a600fd5e1d9cbde2d983=
680233ad02"
>
> -# tag 2.32
> -SRCREV =3D "b0a60c3302973ca1878d149d61f2f612c8f27fac"
> +# tag 2.44
> +SRCREV =3D "96344ff7125182989f98d3be8d111952a8f74e15"
>
>  S =3D "${WORKDIR}/git"
>
>  SRC_URI =3D "git://git.drogon.net/wiringPi \
>             file://0001-Add-initial-cross-compile-support.patch \
> -           file://0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.pa=
tch \
>             "
>
>  COMPATIBLE_MACHINE =3D "raspberrypi"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--p1Od3smaOkJqivj4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljlD1UACgkQJrqo2vax
FPYy9xAAkrQSIijdVYKbkx8ZVpLcEFf8TDJccxOMCoQMUtO/4zwXHjJKxZtcf6sl
qssrH7Ytz1sOiTODEx2k09SVV5dZjgKmtrxlfAR4ygHNJ7wAWlfECf3u5sIySNxj
LbyYMXjNHgd41rnutlrQCl9P1vuh/NaP9G+9986lvR5Nrmg7/a0HT+50B6EiJdbg
UheGBp1IwyG3BMuCiBzjebyQJpQ6Ek8lEPxDq0jB6U2j9hb1znR4orQ/ZryEWWJW
xumZPthCkjflULy40GLlWI8FS1R5DLPBWqBSl9mo5RVcIIlU2MT9AhOhPjKGrmf8
uXDdGqtCmyYGUVrvvvCpbfBnpA7H3+FYWR9XPCm5xh9mmnJMe7Y+NyxHuH6PQ/qt
u9bbe310UfB1W5grOx605yijZZABJJCNqI7mwFprGv80TqWChorxMOGnLpI8Wix1
VsN1DxybOf7Tc0Ivg9ELZYiGknVw/n7LtSQi5xbKkMQYNNUc3YpVVmm0WdlrZU1U
VAkjEz62T3kBxg9keuVeumEYoKGs57S4rqki6Bc+jbuRbdelfvB8a/F7jzQ5oq9z
7uhPUz/NwnRudeQoMjgZLbdEwLAxdU/qSYGoOun/oKndt521t9PMAUPUg+5aigWC
CtaSaUQ2i04/xEQE6Hs2y76xc9jT/fY+Qt/rsRFNxaNdF8xIyZo=
=YtPl
-----END PGP SIGNATURE-----

--p1Od3smaOkJqivj4--

Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0A0EE00D5A; Tue, 12 Apr 2016 07:13:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37208E00C15
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 07:13:18 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id q133so2275582oib.1
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 07:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to; 
	bh=B5hrx2prwsM2FE3eMEVazRSPSI2n2mVa0lyy905cMJc=;
	b=1SYnR8+KnfiflqyQDem/ssjxGbey1Inb/gaik5srs91KmN2OY5TZPhwoi64ZJ+w23N
	in+ReX1gV1MCp2950xfz42yG4AzQWgNHVHOM8n8u4htMvvoHv+i8t2FgSttqDkfdfuNA
	yeIBkKkzXfdWQlhuhTXMk7vduYnKs0v8W2ka2SzlEco/9lEFnXFZoiGdP39jI7QY9X3H
	QQfInAlGBgx7huPViR5KFZTDZiw8MkYe2WxfPHex/dwgw6RazkamV8QrgP+re1+29fj3
	WEDM2EuFCjYkeCauF4v+kRvbALsRPzKzDubsViUI8ixd0mgWlliw8aI77JLdRtdNpu+q
	uz/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=B5hrx2prwsM2FE3eMEVazRSPSI2n2mVa0lyy905cMJc=;
	b=RuntbjjyZTO/oQVLIiP4pAwpc0fKJefr8DCR1fkoyR5kxWaGDnbcNl4K0PNjdc2CXn
	464xFQ4c5YB2JrFJvBfJEUQELQxybuA5VYgejyMx2CPojJe17BgdjfRuvuB6VrQIgi/l
	5cF8t5HfKvjGjpPKAnZqHi2Ks91J8wD+bkUD90FMG/MhUHYlMYY3GeOZkWMRitvGo0Uo
	2YQHsH0HgV+G5DDrueIuS02y/jJdnDdNV6mmS4mm2lAFwCXwMyHaBRpxBHGC1LPEQ7jL
	729IsQuhjQVgzJFXt6pHI/nGfTCRDKorKRsSvfA4/93iCEuVsdHxtMui+VGWZpZ9o39c
	R6FA==
X-Gm-Message-State: AOPr4FUg/kZYr4Uewf41wiNi9iP0fJiyCHbdaf2d2ynMCi/nr0Q3/T9gSpOhzN79svl9FzgpI6iGJi1yrQ9VMw==
MIME-Version: 1.0
X-Received: by 10.157.9.243 with SMTP id 48mr1719722otz.94.1460470397666; Tue,
	12 Apr 2016 07:13:17 -0700 (PDT)
Received: by 10.202.4.71 with HTTP; Tue, 12 Apr 2016 07:13:17 -0700 (PDT)
In-Reply-To: <CALRMKQoQ_1oOi+MDr9gO41wXCRW5jLw_kwpBF7xm=BBqC7hb6w@mail.gmail.com>
References: <CALRMKQqW=aUg-uwNqyBEvX2RdB4oh+_j-t_KBpKp1a2cCgskjQ@mail.gmail.com>
	<CAJ86T=WaPSiWoy0zNiaV8GnWd_7zJ1L2-qJNFU=MUbgidDy31Q@mail.gmail.com>
	<CALRMKQodeu99iu=6Sg1xMAkK3cchbTt0JEGBTy-4TwALttx-XQ@mail.gmail.com>
	<CAME0jBTj6rHSAxP_yBEGHrmG8R1vAsMbt6Xj9PVm+qBRWbUB5Q@mail.gmail.com>
	<CALRMKQoQ_1oOi+MDr9gO41wXCRW5jLw_kwpBF7xm=BBqC7hb6w@mail.gmail.com>
Date: Tue, 12 Apr 2016 08:13:17 -0600
Message-ID: <CALRMKQp0ykjXvgqfJCTm2X_0Kqrbn41+60cDyTodJWHt5G20-w@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: A lot of, seemingly, hung tasks
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
X-List-Received-Date: Tue, 12 Apr 2016 14:13:22 -0000
Content-Type: text/plain; charset=UTF-8

Looking at the results of ps afx with my build currently hung (see
below), I see a bunch of defunct processes, and too many suspect make
invocations to be sure who the culprit is.

Output of ps afx:

 1593 pts/0    Ss     0:00  \_ bash
18272 pts/0    S+     0:00  |   \_ bash /home/ron/yocto_current/poky/scripts/hob
18273 pts/0    Sl+   21:33  |       \_ python
/home/ron/yocto_current/poky/bitbake/bin/bitbake -u hob
18307 pts/0    Sl+    4:21  |           \_ python
/home/ron/yocto_current/poky/bitbake/bin/bitbake -u hob
22938 pts/0    S+     0:09  |               \_ python
/home/ron/yocto_current/poky/bitbake/bin/bitbake-worker decafbad
23432 ?        Ss     0:03  |                   \_ python
/home/ron/yocto_current/poky/bitbake/bin/bitbake-worker decafbad
23454 ?        S      0:00  |                       \_ /bin/sh
/home/ron/yocto_current/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/r
23455 ?        S      0:00  |                           \_ make -j 2
23591 ?        Z      0:00  |                               \_ [chmod] <defunct>
17527 pts/1    Ss     0:00  \_ bash
 3643 pts/1    R+     0:00      \_ ps axf
30572 ?        Sl     0:00 /usr/lib/dconf/dconf-service
 8032 ?        S      0:00 make DESTDIR= RPATH_ENVVAR=LD_LIBRARY_PATH
TARGET_SUBDIR=x86_64-poky-linux
bindir=/var/yocto/production/build/tmp/s
 9016 ?        Z      0:00  \_ [bash] <defunct>
18499 ?        Ssl    0:00 /usr/lib/colord/colord
21556 ?        S      0:00 make all
21569 ?        Z      0:00  \_ [gcc] <defunct>
21572 ?        Z      0:00  \_ [gcc] <defunct>
 9096 ?        S      0:00 make all
 9759 ?        Z      0:00  \_ [gcc] <defunct>
18336 ?        S      0:00 make
DESTDIR=/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-x86_64/5.2.0-r0/image
RPATH_ENVVAR
18487 ?        Z      0:00  \_ [bash] <defunct>
 1493 ?        S      0:01 make
DESTDIR=/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-x86_64/5.2.0-r0/image
RPATH_ENVVAR
 2471 ?        Z      0:00  \_ [bash] <defunct>
30623 ?        S      0:00 make all-am
30635 ?        Z      0:00  \_ [rm] <defunct>
 1908 ?        S      0:00 make DESTDIR= RPATH_ENVVAR=LD_LIBRARY_PATH
TARGET_SUBDIR=x86_64-poky-linux
bindir=/var/yocto/production/build/tmp/s
 2618 ?        Z      0:00  \_ [bash] <defunct>
11197 ?        S      0:00 make DESTDIR= RPATH_ENVVAR=LD_LIBRARY_PATH
TARGET_SUBDIR=i586-poky-linux
bindir=/var/yocto/production/build/tmp/sys
15202 ?        Z      0:00  \_ [bash] <defunct>

--

Output of ps axfww:
18272 pts/0    S+     0:00  |   \_ bash /home/ron/yocto_current/poky/scripts/hob
18273 pts/0    Sl+   21:43  |       \_ python
/home/ron/yocto_current/poky/bitbake/bin/bitbake -u hob
18307 pts/0    Sl+    4:22  |           \_ python
/home/ron/yocto_current/poky/bitbake/bin/bitbake -u hob
22938 pts/0    S+     0:09  |               \_ python
/home/ron/yocto_current/poky/bitbake/bin/bitbake-worker decafbad
23432 ?        Ss     0:03  |                   \_ python
/home/ron/yocto_current/poky/bitbake/bin/bitbake-worker decafbad
23454 ?        S      0:00  |                       \_ /bin/sh
/home/ron/yocto_current/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/run.do_compile.23432
23455 ?        S      0:00  |                           \_ make -j 2
23591 ?        Z      0:00  |                               \_ [chmod] <defunct>
17527 pts/1    Ss     0:00  \_ bash
 5523 pts/1    R+     0:00      \_ ps axfww
30572 ?        Sl     0:00 /usr/lib/dconf/dconf-service
 8032 ?        S      0:00 make DESTDIR= RPATH_ENVVAR=LD_LIBRARY_PATH
TARGET_SUBDIR=x86_64-poky-linux
bindir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-linux.gcc-cross-initial-x86_64
datadir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share
exec_prefix=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr
includedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
datarootdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share
docdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
infodir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/info
pdfdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
htmldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
libdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux.gcc-cross-initial-x86_64
libexecdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux.gcc-cross-initial-x86_64
lispdir= localstatedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/var
mandir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/man
oldincludedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
prefix=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr
sbindir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-linux.gcc-cross-initial-x86_64
sharedstatedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/com
sysconfdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/etc
tooldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/x86_64-poky-linux
build_tooldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/x86_64-poky-linux
target_alias=x86_64-poky-linux AWK=gawk BISON=bison CC_FOR_BUILD=gcc
CFLAGS_FOR_BUILD=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe CXX_FOR_BUILD=g++
CXXFLAGS_FOR_BUILD=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe EXPECT=expect FLEX=flex INSTALL=/usr/bin/install -c
INSTALL_DATA=/usr/bin/install -c -m 644
INSTALL_PROGRAM=/usr/bin/install -c INSTALL_SCRIPT=/usr/bin/install -c
LDFLAGS_FOR_BUILD=-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 LEX=flex M4=m4 MAKE=make RUNTEST=runtest RUNTESTFLAGS=
SED=/bin/sed SHELL=/bin/bash YACC=bison -y XFOO= ADA_CFLAGS=
AR_FLAGS=rc BOOT_ADAFLAGS=-gnatpg BOOT_CFLAGS=-g -O2 BOOT_LDFLAGS=
CFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe CXXFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe LDFLAGS=-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 LIBCFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe LIBCXXFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe -fno-implicit-templates
STAGE1_CHECKING=--enable-checking=yes,types STAGE1_LANGUAGES=c
GNATBIND=no GNATMAKE=no AR_FOR_TARGET=x86_64-poky-linux-ar
AS_FOR_TARGET=x86_64-poky-linux-as CC_FOR_TARGET=
/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-poky-linux/./gcc/xgcc
-B/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x8
 9016 ?        Z      0:00  \_ [bash] <defunct>
18499 ?        Ssl    0:00 /usr/lib/colord/colord
21556 ?        S      0:00 make all
21569 ?        Z      0:00  \_ [gcc] <defunct>
21572 ?        Z      0:00  \_ [gcc] <defunct>
 9096 ?        S      0:00 make all
 9759 ?        Z      0:00  \_ [gcc] <defunct>
18336 ?        S      0:00 make
DESTDIR=/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-x86_64/5.2.0-r0/image
RPATH_ENVVAR=LD_LIBRARY_PATH TARGET_SUBDIR=x86_64-poky-linux
bindir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-linux.gcc-cross-initial-x86_64
datadir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share
exec_prefix=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr
includedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
datarootdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share
docdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
infodir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/info
pdfdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
htmldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
libdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux.gcc-cross-initial-x86_64
libexecdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux.gcc-cross-initial-x86_64
lispdir= localstatedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/var
mandir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/man
oldincludedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
prefix=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr
sbindir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-linux.gcc-cross-initial-x86_64
sharedstatedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/com
sysconfdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/etc
tooldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/x86_64-poky-linux
build_tooldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/x86_64-poky-linux
target_alias=x86_64-poky-linux AWK=gawk BISON=bison CC_FOR_BUILD=gcc
CFLAGS_FOR_BUILD=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe CXX_FOR_BUILD=g++
CXXFLAGS_FOR_BUILD=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe EXPECT=expect FLEX=flex INSTALL=/usr/bin/install -c
INSTALL_DATA=/usr/bin/install -c -m 644
INSTALL_PROGRAM=/usr/bin/install -c INSTALL_SCRIPT=/usr/bin/install -c
LDFLAGS_FOR_BUILD=-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 LEX=flex M4=m4 MAKE=make RUNTEST=runtest RUNTESTFLAGS=
SED=/bin/sed SHELL=/bin/bash YACC=bison -y XFOO= ADA_CFLAGS=
AR_FLAGS=rc BOOT_ADAFLAGS=-gnatpg BOOT_CFLAGS=-g -O2 BOOT_LDFLAGS=
CFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe CXXFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe LDFLAGS=-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 LIBCFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe LIBCXXFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe -fno-implicit-templates
STAGE1_CHECKING=--enable-checking=yes,types STAGE1_LANGUAGES=c
GNATBIND=no GNATMAKE=no AR_FOR_TARGET=x86_64-poky-linux-ar
AS_FOR_TARGET=x86_64-poky-linux-as CC_FOR_TARGET=
/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-poky-linux/./gcc/xgcc
-B/var/yocto/production/buil
18487 ?        Z      0:00  \_ [bash] <defunct>
 1493 ?        S      0:01 make
DESTDIR=/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-x86_64/5.2.0-r0/image
RPATH_ENVVAR=LD_LIBRARY_PATH TARGET_SUBDIR=x86_64-poky-linux
bindir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-linux.gcc-cross-initial-x86_64
datadir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share
exec_prefix=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr
includedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
datarootdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share
docdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
infodir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/info
pdfdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
htmldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
libdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux.gcc-cross-initial-x86_64
libexecdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux.gcc-cross-initial-x86_64
lispdir= localstatedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/var
mandir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/man
oldincludedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
prefix=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr
sbindir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-linux.gcc-cross-initial-x86_64
sharedstatedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/com
sysconfdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/etc
tooldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/x86_64-poky-linux
build_tooldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/x86_64-poky-linux
target_alias=x86_64-poky-linux AWK=gawk BISON=bison CC_FOR_BUILD=gcc
CFLAGS_FOR_BUILD=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe CXX_FOR_BUILD=g++
CXXFLAGS_FOR_BUILD=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe EXPECT=expect FLEX=flex INSTALL=/usr/bin/install -c
INSTALL_DATA=/usr/bin/install -c -m 644
INSTALL_PROGRAM=/usr/bin/install -c INSTALL_SCRIPT=/usr/bin/install -c
LDFLAGS_FOR_BUILD=-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 LEX=flex M4=m4 MAKE=make RUNTEST=runtest RUNTESTFLAGS=
SED=/bin/sed SHELL=/bin/bash YACC=bison -y XFOO= ADA_CFLAGS=
AR_FLAGS=rc BOOT_ADAFLAGS=-gnatpg BOOT_CFLAGS=-g -O2 BOOT_LDFLAGS=
CFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe CXXFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe LDFLAGS=-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 LIBCFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe LIBCXXFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe -fno-implicit-templates
STAGE1_CHECKING=--enable-checking=yes,types STAGE1_LANGUAGES=c
GNATBIND=no GNATMAKE=no AR_FOR_TARGET=x86_64-poky-linux-ar
AS_FOR_TARGET=x86_64-poky-linux-as CC_FOR_TARGET=
/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-poky-linux/./gcc/xgcc
-B/var/yocto/production/buil
 2471 ?        Z      0:00  \_ [bash] <defunct>
30623 ?        S      0:00 make all-am
30635 ?        Z      0:00  \_ [rm] <defunct>
 1908 ?        S      0:00 make DESTDIR= RPATH_ENVVAR=LD_LIBRARY_PATH
TARGET_SUBDIR=x86_64-poky-linux
bindir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-linux.gcc-cross-initial-x86_64
datadir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share
exec_prefix=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr
includedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
datarootdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share
docdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
infodir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/info
pdfdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
htmldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
libdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux.gcc-cross-initial-x86_64
libexecdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux.gcc-cross-initial-x86_64
lispdir= localstatedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/var
mandir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/man
oldincludedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
prefix=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr
sbindir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-linux.gcc-cross-initial-x86_64
sharedstatedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/com
sysconfdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/etc
tooldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/x86_64-poky-linux
build_tooldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/x86_64-poky-linux
target_alias=x86_64-poky-linux AWK=gawk BISON=bison CC_FOR_BUILD=gcc
CFLAGS_FOR_BUILD=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe CXX_FOR_BUILD=g++
CXXFLAGS_FOR_BUILD=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe EXPECT=expect FLEX=flex INSTALL=/usr/bin/install -c
INSTALL_DATA=/usr/bin/install -c -m 644
INSTALL_PROGRAM=/usr/bin/install -c INSTALL_SCRIPT=/usr/bin/install -c
LDFLAGS_FOR_BUILD=-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 LEX=flex M4=m4 MAKE=make RUNTEST=runtest RUNTESTFLAGS=
SED=/bin/sed SHELL=/bin/bash YACC=bison -y XFOO= ADA_CFLAGS=
AR_FLAGS=rc BOOT_ADAFLAGS=-gnatpg BOOT_CFLAGS=-g -O2 BOOT_LDFLAGS=
CFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe CXXFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe LDFLAGS=-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 LIBCFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe LIBCXXFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe -fno-implicit-templates
STAGE1_CHECKING=--enable-checking=yes,types STAGE1_LANGUAGES=c
GNATBIND=no GNATMAKE=no AR_FOR_TARGET=x86_64-poky-linux-ar
AS_FOR_TARGET=x86_64-poky-linux-as CC_FOR_TARGET=
/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-poky-linux/./gcc/xgcc
-B/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x8
 2618 ?        Z      0:00  \_ [bash] <defunct>
11197 ?        S      0:00 make DESTDIR= RPATH_ENVVAR=LD_LIBRARY_PATH
TARGET_SUBDIR=i586-poky-linux
bindir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux.gcc-cross-initial-i586
datadir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share
exec_prefix=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr
includedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
datarootdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share
docdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
infodir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/info
pdfdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
htmldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/doc/
libdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib/i586-poky-linux.gcc-cross-initial-i586
libexecdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux.gcc-cross-initial-i586
lispdir= localstatedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/var
mandir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/share/man
oldincludedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
prefix=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr
sbindir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux.gcc-cross-initial-i586
sharedstatedir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/com
sysconfdir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/etc
tooldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/i586-poky-linux
build_tooldir=/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/i586-poky-linux
target_alias=i586-poky-linux AWK=gawk BISON=bison CC_FOR_BUILD=gcc
CFLAGS_FOR_BUILD=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe CXX_FOR_BUILD=g++
CXXFLAGS_FOR_BUILD=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe EXPECT=expect FLEX=flex INSTALL=/usr/bin/install -c
INSTALL_DATA=/usr/bin/install -c -m 644
INSTALL_PROGRAM=/usr/bin/install -c INSTALL_SCRIPT=/usr/bin/install -c
LDFLAGS_FOR_BUILD=-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 LEX=flex M4=m4 MAKE=make RUNTEST=runtest RUNTESTFLAGS=
SED=/bin/sed SHELL=/bin/bash YACC=bison -y XFOO= ADA_CFLAGS=
AR_FLAGS=rc BOOT_ADAFLAGS=-gnatpg BOOT_CFLAGS=-g -O2 BOOT_LDFLAGS=
CFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe CXXFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe LDFLAGS=-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-L/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/var/yocto/production/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 LIBCFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe LIBCXXFLAGS=-isystem/var/yocto/production/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe -fno-implicit-templates
STAGE1_CHECKING=--enable-checking=yes,types STAGE1_LANGUAGES=c
GNATBIND=no GNATMAKE=no AR_FOR_TARGET=i586-poky-linux-ar
AS_FOR_TARGET=i586-poky-linux-as CC_FOR_TARGET=
/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-i586/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.i586-poky-linux/./gcc/xgcc
-B/var/yocto/production/build/tmp/work/x86_64-linux/gcc-cross-initial-i586/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.i586-poky-linux/./gcc/
CFLAGS_FOR_TA
15202 ?        Z      0:00  \_ [bash] <defunct>

On Mon, Apr 11, 2016 at 9:49 PM, Ronald Oakes <ronaldo@brc2.com> wrote:
> Thank you all.  I'll try some more of the debugging if my current fix
> attempt (using the current sources rather than the tar file, and
> building the qemux86 first) don't work.
>
> I have 4 GBytes DRAM.  I've never seen (at least not according to the
> Gnome system monitor) my current memory usage exceed 60%, and swap
> isn't getting touched at all.
>
> Ron O
>
> On Mon, Apr 11, 2016 at 7:52 PM, Chris Hallinan <challinan@gmail.com> wrote:
>> I have very occasionally hit hung tasks, but I was usually able to identify
>> the exact task which was hanging, it was never "many".  Note that some tasks
>> which may appear "hung" may be waiting for a dependency to complete.  You
>> could try some brute force debugging...set these in local.conf:
>>
>> BB_NUMBER_THREADS = "1"
>> PARALLEL_MAKE = "-j1"
>>
>> Then try building again, and yes it will take a long time.
>>
>> if something is actually hanging, it would be useful to know what task, not
>> only the bitbake "task" but the actual process as reported by ps.  A bitbake
>> "task" can spawn many processes as it works to complete it's job.
>>
>> In the past, once I found the hanging process, strace usually helped me
>> discover why.
>>
>> You mention a "low-end" 2-core machine...RAM is everything.  If you're
>> running Linux out of memory, you get what you deserve <grin>
>>
>> Remember, poky-tiny refers to the resulting distribution you are building,
>> not the machine you want to build it on ;)
>>
>> -Chris
>>
>>
>>
>> On Mon, Apr 11, 2016 at 9:38 PM, Ronald Oakes <ronaldo@brc2.com> wrote:
>>>
>>> It looks like it is hanging fairly consistently during the
>>> gcc-cross-initial-x86_64-5.2.0-r0 do_compile or do_install steps.
>>> I've tried stopping, cleaning, and just building
>>> gcc-cross-initial-x86_64, but it still hangs.
>>>
>>> I'm going to try a 32 bit build just to see if I can get past this.
>>>
>>> Ron Oakes
>>>
>>> On Mon, Apr 11, 2016 at 12:35 PM, Andre McCurdy <armccurdy@gmail.com>
>>> wrote:
>>> > On Mon, Apr 11, 2016 at 11:22 AM, Ronald Oakes <ronaldo@brc2.com> wrote:
>>> >> Over the weekend, I upgraded my connected development platform to
>>> >> Debian 8.4.0 from Centos 7.
>>> >>
>>> >> However, today I have yet to make a successful poky-tiny build for
>>> >> either coreI7-64 or qemux86-64.  In each case, I've aborted the build
>>> >> after one or more tasks has stopped doing anything for 30 minutes or
>>> >> more.
>>> >>
>>> >> I define "stopped doing anything" as having not touched a file in 30
>>> >> minutes, while the CPU utilization (on this 2 core, low end, ASUS
>>> >> VivoPC) drops very low.
>>> >>
>>> >> I've tried re-running the offending recipes and tasks individually,
>>> >> and cleaning and restarting from scratch, but I keep ending up with
>>> >> something hung.
>>> >>
>>> >> Any ideas what is up, and, more importantly, what I should do to
>>> >> resolve it?
>>> >
>>> > Have you used bitbake with the "--debug" option or run "ps axf" or
>>> > similar to see which tasks or commands are hanging?
>>> >
>>> >> Ron Oakes
>>> >> --
>>> >> _______________________________________________
>>> >> yocto mailing list
>>> >> yocto@yoctoproject.org
>>> >> https://lists.yoctoproject.org/listinfo/yocto
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> --
>> Life is like Linux - it never stands still.
>>


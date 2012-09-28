Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3510E0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 07:52:42 -0700 (PDT)
Received: by obhx4 with SMTP id x4so3952750obh.35
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 07:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=5pTyuUS1klkgZzXAkhjHQSLif/bKSG3ZOqwubd/Z4tk=;
	b=m3QpJTXGjK6zvbC4gnY2yGO+GedHtszMgGn/xn9MAkMogtmXUeJ1p011itql2JASFF
	rHX3VIZriG6lJAIfB9nCnBnDSLMvJXzBte9Mwy0y0ZbncIkTTUq+NNL9x2zCkvEqcBOn
	KtGdqZSKviVRVY9LUSfIEEFPf1aESRyZjFpCBIE4tvgxsvomogirHA1mrC9EG/UT3q9B
	xtGRZp8JUNJZBwkRAn/jsVP3i86iE6r49boSLcgFulziRt7vIMAEOCxaDXFG4wnePp4I
	e1DJAJX7lAshTmKDO3tZ7rqUIcjkjXwadQLQ474zGOZ7qX3S1K8ZBx0QsZw00JNI8Z4V
	A5YA==
MIME-Version: 1.0
Received: by 10.60.172.236 with SMTP id bf12mr5992101oec.23.1348843960223;
	Fri, 28 Sep 2012 07:52:40 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Fri, 28 Sep 2012 07:52:40 -0700 (PDT)
In-Reply-To: <CAMAb8ZO4+DBOAboVYLMQDq-Aa2ymreBrumnrLvUp0ZGJcqK+Tw@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A70D02@FMSMSX151.amr.corp.intel.com>
	<CAMAb8ZPWCD+Q6CVwcUM75UCZXqf=JTTL6=-f0wfX19333KHzQw@mail.gmail.com>
	<1470336.PrNkWSnEWe@helios>
	<CAMAb8ZO4+DBOAboVYLMQDq-Aa2ymreBrumnrLvUp0ZGJcqK+Tw@mail.gmail.com>
Date: Fri, 28 Sep 2012 10:52:40 -0400
Message-ID: <CAMAb8ZPh-9gK8n=Aaf7_=kFB=wkUnbrn2ypZXh2SFPrYpptnmg@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: build failure on current
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
X-List-Received-Date: Fri, 28 Sep 2012 14:52:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

It definitely chokes on perl when building core-image-minimal from scratch =
on
my Ubuntu 10.04 LTS machine.  But... it *did* build tar 1.26!(?) And even t=
his
tar cannot, it seems, unpack the perl-5.14.2.tar.gz archive from CPAN:


evadeflow% ls tmp/sysroots/i686-linux/usr/bin/tar
tmp/sysroots/i686-linux/usr/bin/tar
evadeflow% tmp/sysroots/i686-linux/usr/bin/tar --version
tar (GNU tar) 1.26
Copyright (C) 2011 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.htm=
l>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by John Gilmore and Jay Fenlason.
evadeflow% tmp/sysroots/i686-linux/usr/bin/tar xf ~/projects/perl-5.14.2.ta=
r.gz

gzip: stdin: invalid compressed data--crc error
tmp/sysroots/i686-linux/usr/bin/tar: Child returned status 1
tmp/sysroots/i686-linux/usr/bin/tar: Error is not recoverable: exiting now



I really don't know what to make of this. Appending the complete output bel=
ow,
in case it's useful...

----------

evadeflow% git status
# On branch denzil
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	./
#	../build_1/
#	../build_sato_hide/
#	../meta/recipes-devtools/perl/perl-native_5.14.2.bb.tar122
#	../meta/recipes-devtools/perl/perl_5.14.2.bb.tar122
nothing added to commit but untracked files present (use "git add" to track=
)
evadeflow% time bitbake core-image-minimal
Pseudo is not present but is required, building this first before the main
build
WARNING: Host distribution "Ubuntu 10.04 LTS" has not been validated with t=
his
version of the build system; you may possibly experience unexpected failure=
s.
It is recommended that you use a tested distribution.
Parsing recipes: 100%
|###################################################################| Time:
00:00:13
Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105 targets, 34
skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        =3D "1.15.2"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2.1"
TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
TARGET_FPU        =3D "soft"
meta
meta-yocto        =3D "denzil:65ffa7395055f7e012cb973f63f92380828eed0d"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 1 of 77 (ID: 18,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/quilt/quilt-native_=
0.51.bb,
do_fetch)
NOTE: Running task 2 of 77 (ID: 53,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/gnu-=
config/gnu-config_20111111.bb,
do_fetch)
NOTE: Running task 3 of 77 (ID: 67,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/m4/m4-native_1.4.16=
.bb,
do_fetch)
NOTE: Running task 4 of 77 (ID: 32,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
conf/autoconf_2.68.bb,
do_fetch)
NOTE: Running task 5 of 77 (ID: 39,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
make/automake_1.11.2.bb,
do_fetch)
NOTE: Running task 6 of 77 (ID: 46,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/libtool/libtool-nat=
ive_2.4.2.bb,
do_fetch)
NOTE: Running task 7 of 77 (ID: 74,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pkgc=
onfig/pkgconfig_0.25.bb,
do_fetch)
NOTE: Running task 8 of 77 (ID: 60,
/home/evadeflow/projects/poky-git/meta/recipes-core/gettext/gettext-minimal=
-native_0.18.1.1.bb,
do_fetch)
NOTE: Running task 9 of 77 (ID: 25,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/sqlit=
e/sqlite3_3.7.10.bb,
do_fetch)
NOTE: Running task 10 of 77 (ID: 11,
/home/evadeflow/projects/poky-git/meta/recipes-extended/tar/tar-replacement=
-native_1.26.bb,
do_fetch)
NOTE: Running task 11 of 77 (ID: 4,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pseu=
do/pseudo_1.3.bb,
do_fetch)
NOTE: package m4-native-1.4.16-r2: task do_fetch: Started
NOTE: package quilt-native-0.51-r1: task do_fetch: Started
NOTE: package gnu-config-native-20111111-r1: task do_fetch: Started
NOTE: package gnu-config-native-20111111-r1: task do_fetch: Succeeded
NOTE: package m4-native-1.4.16-r2: task do_fetch: Succeeded
NOTE: package autoconf-native-2.68-r7: task do_fetch: Started
NOTE: package libtool-native-2.4.2-r3.0: task do_fetch: Started
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_fetch: Started
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_fetch: Succeeded
NOTE: package tar-replacement-native-1.26-r1: task do_fetch: Started
NOTE: Running task 12 of 77 (ID: 49,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/gnu-=
config/gnu-config_20111111.bb,
do_unpack)
NOTE: package pkgconfig-native-0.25-r3: task do_fetch: Started
NOTE: package sqlite3-native-3.7.10-r2: task do_fetch: Started
NOTE: package pseudo-native-1.3-r10: task do_fetch: Started
NOTE: Running task 13 of 77 (ID: 63,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/m4/m4-native_1.4.16=
.bb,
do_unpack)
NOTE: package quilt-native-0.51-r1: task do_fetch: Succeeded
NOTE: Running task 14 of 77 (ID: 14,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/quilt/quilt-native_=
0.51.bb,
do_unpack)
NOTE: Running task 15 of 77 (ID: 56,
/home/evadeflow/projects/poky-git/meta/recipes-core/gettext/gettext-minimal=
-native_0.18.1.1.bb,
do_unpack)
NOTE: package automake-native-1.11.2-r3: task do_fetch: Started
NOTE: package pkgconfig-native-0.25-r3: task do_fetch: Succeeded
NOTE: package m4-native-1.4.16-r2: task do_unpack: Started
NOTE: package quilt-native-0.51-r1: task do_unpack: Started
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_unpack: Started
NOTE: package libtool-native-2.4.2-r3.0: task do_fetch: Succeeded
NOTE: Running task 16 of 77 (ID: 42,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/libtool/libtool-nat=
ive_2.4.2.bb,
do_unpack)
NOTE: package gnu-config-native-20111111-r1: task do_unpack: Started
NOTE: Running task 17 of 77 (ID: 70,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pkgc=
onfig/pkgconfig_0.25.bb,
do_unpack)
NOTE: package sqlite3-native-3.7.10-r2: task do_fetch: Succeeded
NOTE: package tar-replacement-native-1.26-r1: task do_fetch: Succeeded
NOTE: package pseudo-native-1.3-r10: task do_fetch: Succeeded
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_unpack: Succeeded
NOTE: package libtool-native-2.4.2-r3.0: task do_unpack: Started
NOTE: Running task 18 of 77 (ID: 21,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/sqlit=
e/sqlite3_3.7.10.bb,
do_unpack)
NOTE: Running task 19 of 77 (ID: 7,
/home/evadeflow/projects/poky-git/meta/recipes-extended/tar/tar-replacement=
-native_1.26.bb,
do_unpack)
NOTE: package gnu-config-native-20111111-r1: task do_unpack: Succeeded
NOTE: package automake-native-1.11.2-r3: task do_fetch: Succeeded
NOTE: Running task 20 of 77 (ID: 35,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
make/automake_1.11.2.bb,
do_unpack)
NOTE: package quilt-native-0.51-r1: task do_unpack: Succeeded
NOTE: Running task 21 of 77 (ID: 0,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pseu=
do/pseudo_1.3.bb,
do_unpack)
NOTE: package autoconf-native-2.68-r7: task do_fetch: Succeeded
NOTE: package pkgconfig-native-0.25-r3: task do_unpack: Started
NOTE: Running task 22 of 77 (ID: 28,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
conf/autoconf_2.68.bb,
do_unpack)
NOTE: Running task 23 of 77 (ID: 15,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/quilt/quilt-native_=
0.51.bb,
do_patch)
NOTE: package pkgconfig-native-0.25-r3: task do_unpack: Succeeded
NOTE: package tar-replacement-native-1.26-r1: task do_unpack: Started
NOTE: package m4-native-1.4.16-r2: task do_unpack: Succeeded
NOTE: package libtool-native-2.4.2-r3.0: task do_unpack: Succeeded
NOTE: package pseudo-native-1.3-r10: task do_unpack: Started
NOTE: package pseudo-native-1.3-r10: task do_unpack: Succeeded
NOTE: package quilt-native-0.51-r1: task do_patch: Started
NOTE: package sqlite3-native-3.7.10-r2: task do_unpack: Started
NOTE: package automake-native-1.11.2-r3: task do_unpack: Started
NOTE: package autoconf-native-2.68-r7: task do_unpack: Started
NOTE: package quilt-native-0.51-r1: task do_patch: Succeeded
NOTE: package sqlite3-native-3.7.10-r2: task do_unpack: Succeeded
NOTE: Running task 24 of 77 (ID: 19,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/quilt/quilt-native_=
0.51.bb,
do_configure)
NOTE: package quilt-native-0.51-r1: task do_configure: Started
NOTE: package automake-native-1.11.2-r3: task do_unpack: Succeeded
NOTE: package autoconf-native-2.68-r7: task do_unpack: Succeeded
NOTE: package tar-replacement-native-1.26-r1: task do_unpack: Succeeded
NOTE: package quilt-native-0.51-r1: task do_configure: Succeeded
NOTE: Running task 25 of 77 (ID: 20,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/quilt/quilt-native_=
0.51.bb,
do_compile)
NOTE: package quilt-native-0.51-r1: task do_compile: Started
NOTE: package quilt-native-0.51-r1: task do_compile: Succeeded
NOTE: Running task 26 of 77 (ID: 16,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/quilt/quilt-native_=
0.51.bb,
do_install)
NOTE: package quilt-native-0.51-r1: task do_install: Started
NOTE: package quilt-native-0.51-r1: task do_install: Succeeded
NOTE: Running task 27 of 77 (ID: 17,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/quilt/quilt-native_=
0.51.bb,
do_populate_sysroot)
NOTE: package quilt-native-0.51-r1: task do_populate_sysroot: Started
NOTE: package quilt-native-0.51-r1: task do_populate_sysroot: Succeeded
NOTE: Running task 28 of 77 (ID: 50,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/gnu-=
config/gnu-config_20111111.bb,
do_patch)
NOTE: Running task 29 of 77 (ID: 64,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/m4/m4-native_1.4.16=
.bb,
do_patch)
NOTE: Running task 30 of 77 (ID: 29,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
conf/autoconf_2.68.bb,
do_patch)
NOTE: Running task 31 of 77 (ID: 36,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
make/automake_1.11.2.bb,
do_patch)
NOTE: Running task 32 of 77 (ID: 43,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/libtool/libtool-nat=
ive_2.4.2.bb,
do_patch)
NOTE: Running task 33 of 77 (ID: 71,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pkgc=
onfig/pkgconfig_0.25.bb,
do_patch)
NOTE: Running task 34 of 77 (ID: 57,
/home/evadeflow/projects/poky-git/meta/recipes-core/gettext/gettext-minimal=
-native_0.18.1.1.bb,
do_patch)
NOTE: Running task 35 of 77 (ID: 22,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/sqlit=
e/sqlite3_3.7.10.bb,
do_patch)
NOTE: Running task 36 of 77 (ID: 8,
/home/evadeflow/projects/poky-git/meta/recipes-extended/tar/tar-replacement=
-native_1.26.bb,
do_patch)
NOTE: Running task 37 of 77 (ID: 1,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pseu=
do/pseudo_1.3.bb,
do_patch)
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_patch: Started
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_patch: Succeeded
NOTE: Running task 38 of 77 (ID: 61,
/home/evadeflow/projects/poky-git/meta/recipes-core/gettext/gettext-minimal=
-native_0.18.1.1.bb,
do_configure)
NOTE: package m4-native-1.4.16-r2: task do_patch: Started
NOTE: package libtool-native-2.4.2-r3.0: task do_patch: Started
NOTE: package gnu-config-native-20111111-r1: task do_patch: Started
NOTE: package autoconf-native-2.68-r7: task do_patch: Started
NOTE: package pkgconfig-native-0.25-r3: task do_patch: Started
NOTE: package tar-replacement-native-1.26-r1: task do_patch: Started
NOTE: package tar-replacement-native-1.26-r1: task do_patch: Succeeded
NOTE: package m4-native-1.4.16-r2: task do_patch: Succeeded
NOTE: package automake-native-1.11.2-r3: task do_patch: Started
NOTE: package pseudo-native-1.3-r10: task do_patch: Started
NOTE: package sqlite3-native-3.7.10-r2: task do_patch: Started
NOTE: package pseudo-native-1.3-r10: task do_patch: Succeeded
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_configure: Starte=
d
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_configure: Succee=
ded
NOTE: Running task 39 of 77 (ID: 62,
/home/evadeflow/projects/poky-git/meta/recipes-core/gettext/gettext-minimal=
-native_0.18.1.1.bb,
do_compile)
NOTE: package sqlite3-native-3.7.10-r2: task do_patch: Succeeded
NOTE: package gnu-config-native-20111111-r1: task do_patch: Succeeded
NOTE: Running task 40 of 77 (ID: 54,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/gnu-=
config/gnu-config_20111111.bb,
do_configure)
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_compile: Started
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_compile: Succeede=
d
NOTE: package automake-native-1.11.2-r3: task do_patch: Succeeded
NOTE: package pkgconfig-native-0.25-r3: task do_patch: Succeeded
NOTE: Running task 41 of 77 (ID: 58,
/home/evadeflow/projects/poky-git/meta/recipes-core/gettext/gettext-minimal=
-native_0.18.1.1.bb,
do_install)
NOTE: package autoconf-native-2.68-r7: task do_patch: Succeeded
NOTE: package gnu-config-native-20111111-r1: task do_configure: Started
NOTE: package gnu-config-native-20111111-r1: task do_configure: Succeeded
NOTE: Running task 42 of 77 (ID: 55,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/gnu-=
config/gnu-config_20111111.bb,
do_compile)
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_install: Started
NOTE: package libtool-native-2.4.2-r3.0: task do_patch: Succeeded
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_install: Succeede=
d
NOTE: Running task 43 of 77 (ID: 59,
/home/evadeflow/projects/poky-git/meta/recipes-core/gettext/gettext-minimal=
-native_0.18.1.1.bb,
do_populate_sysroot)
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_populate_sysroot:
Started
NOTE: package gnu-config-native-20111111-r1: task do_compile: Started
NOTE: package gnu-config-native-20111111-r1: task do_compile: Succeeded
NOTE: Running task 44 of 77 (ID: 51,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/gnu-=
config/gnu-config_20111111.bb,
do_install)
NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_populate_sysroot:
Succeeded
NOTE: package gnu-config-native-20111111-r1: task do_install: Started
NOTE: package gnu-config-native-20111111-r1: task do_install: Succeeded
NOTE: Running task 45 of 77 (ID: 52,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/gnu-=
config/gnu-config_20111111.bb,
do_populate_sysroot)
NOTE: package gnu-config-native-20111111-r1: task do_populate_sysroot: Star=
ted
NOTE: package gnu-config-native-20111111-r1: task do_populate_sysroot:
Succeeded
NOTE: Running task 46 of 77 (ID: 68,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/m4/m4-native_1.4.16=
.bb,
do_configure)
NOTE: package m4-native-1.4.16-r2: task do_configure: Started
NOTE: package m4-native-1.4.16-r2: task do_configure: Succeeded
NOTE: Running task 47 of 77 (ID: 69,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/m4/m4-native_1.4.16=
.bb,
do_compile)
NOTE: package m4-native-1.4.16-r2: task do_compile: Started
NOTE: package m4-native-1.4.16-r2: task do_compile: Succeeded
NOTE: Running task 48 of 77 (ID: 65,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/m4/m4-native_1.4.16=
.bb,
do_install)
NOTE: package m4-native-1.4.16-r2: task do_install: Started
NOTE: package m4-native-1.4.16-r2: task do_install: Succeeded
NOTE: Running task 49 of 77 (ID: 66,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/m4/m4-native_1.4.16=
.bb,
do_populate_sysroot)
NOTE: package m4-native-1.4.16-r2: task do_populate_sysroot: Started
NOTE: package m4-native-1.4.16-r2: task do_populate_sysroot: Succeeded
NOTE: Running task 50 of 77 (ID: 33,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
conf/autoconf_2.68.bb,
do_configure)
NOTE: package autoconf-native-2.68-r7: task do_configure: Started
NOTE: package autoconf-native-2.68-r7: task do_configure: Succeeded
NOTE: Running task 51 of 77 (ID: 34,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
conf/autoconf_2.68.bb,
do_compile)
NOTE: package autoconf-native-2.68-r7: task do_compile: Started
NOTE: package autoconf-native-2.68-r7: task do_compile: Succeeded
NOTE: Running task 52 of 77 (ID: 30,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
conf/autoconf_2.68.bb,
do_install)
NOTE: package autoconf-native-2.68-r7: task do_install: Started
NOTE: package autoconf-native-2.68-r7: task do_install: Succeeded
NOTE: Running task 53 of 77 (ID: 31,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
conf/autoconf_2.68.bb,
do_populate_sysroot)
NOTE: package autoconf-native-2.68-r7: task do_populate_sysroot: Started
NOTE: package autoconf-native-2.68-r7: task do_populate_sysroot: Succeeded
NOTE: Running task 54 of 77 (ID: 40,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
make/automake_1.11.2.bb,
do_configure)
NOTE: package automake-native-1.11.2-r3: task do_configure: Started
NOTE: package automake-native-1.11.2-r3: task do_configure: Succeeded
NOTE: Running task 55 of 77 (ID: 41,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
make/automake_1.11.2.bb,
do_compile)
NOTE: package automake-native-1.11.2-r3: task do_compile: Started
NOTE: package automake-native-1.11.2-r3: task do_compile: Succeeded
NOTE: Running task 56 of 77 (ID: 37,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
make/automake_1.11.2.bb,
do_install)
NOTE: package automake-native-1.11.2-r3: task do_install: Started
NOTE: package automake-native-1.11.2-r3: task do_install: Succeeded
NOTE: Running task 57 of 77 (ID: 38,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/auto=
make/automake_1.11.2.bb,
do_populate_sysroot)
NOTE: package automake-native-1.11.2-r3: task do_populate_sysroot: Started
NOTE: package automake-native-1.11.2-r3: task do_populate_sysroot: Succeede=
d
NOTE: Running task 58 of 77 (ID: 47,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/libtool/libtool-nat=
ive_2.4.2.bb,
do_configure)
NOTE: package libtool-native-2.4.2-r3.0: task do_configure: Started
NOTE: package libtool-native-2.4.2-r3.0: task do_configure: Succeeded
NOTE: Running task 59 of 77 (ID: 48,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/libtool/libtool-nat=
ive_2.4.2.bb,
do_compile)
NOTE: package libtool-native-2.4.2-r3.0: task do_compile: Started
NOTE: package libtool-native-2.4.2-r3.0: task do_compile: Succeeded
NOTE: Running task 60 of 77 (ID: 44,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/libtool/libtool-nat=
ive_2.4.2.bb,
do_install)
NOTE: package libtool-native-2.4.2-r3.0: task do_install: Started
NOTE: package libtool-native-2.4.2-r3.0: task do_install: Succeeded
NOTE: Running task 61 of 77 (ID: 45,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/libtool/libtool-nat=
ive_2.4.2.bb,
do_populate_sysroot)
NOTE: package libtool-native-2.4.2-r3.0: task do_populate_sysroot: Started
NOTE: package libtool-native-2.4.2-r3.0: task do_populate_sysroot: Succeede=
d
NOTE: Running task 62 of 77 (ID: 75,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pkgc=
onfig/pkgconfig_0.25.bb,
do_configure)
NOTE: Running task 63 of 77 (ID: 12,
/home/evadeflow/projects/poky-git/meta/recipes-extended/tar/tar-replacement=
-native_1.26.bb,
do_configure)
NOTE: package tar-replacement-native-1.26-r1: task do_configure: Started
NOTE: package pkgconfig-native-0.25-r3: task do_configure: Started
NOTE: package pkgconfig-native-0.25-r3: task do_configure: Succeeded
NOTE: Running task 64 of 77 (ID: 76,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pkgc=
onfig/pkgconfig_0.25.bb,
do_compile)
NOTE: package pkgconfig-native-0.25-r3: task do_compile: Started
NOTE: package pkgconfig-native-0.25-r3: task do_compile: Succeeded
NOTE: Running task 65 of 77 (ID: 72,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pkgc=
onfig/pkgconfig_0.25.bb,
do_install)
NOTE: package pkgconfig-native-0.25-r3: task do_install: Started
NOTE: package pkgconfig-native-0.25-r3: task do_install: Succeeded
NOTE: Running task 66 of 77 (ID: 73,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pkgc=
onfig/pkgconfig_0.25.bb,
do_populate_sysroot)
NOTE: package pkgconfig-native-0.25-r3: task do_populate_sysroot: Started
NOTE: package pkgconfig-native-0.25-r3: task do_populate_sysroot: Succeeded
NOTE: Running task 67 of 77 (ID: 26,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/sqlit=
e/sqlite3_3.7.10.bb,
do_configure)
NOTE: package sqlite3-native-3.7.10-r2: task do_configure: Started
NOTE: package sqlite3-native-3.7.10-r2: task do_configure: Succeeded
NOTE: Running task 68 of 77 (ID: 27,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/sqlit=
e/sqlite3_3.7.10.bb,
do_compile)
NOTE: package sqlite3-native-3.7.10-r2: task do_compile: Started
NOTE: package tar-replacement-native-1.26-r1: task do_configure: Succeeded
NOTE: Running task 69 of 77 (ID: 13,
/home/evadeflow/projects/poky-git/meta/recipes-extended/tar/tar-replacement=
-native_1.26.bb,
do_compile)
NOTE: package tar-replacement-native-1.26-r1: task do_compile: Started
NOTE: package tar-replacement-native-1.26-r1: task do_compile: Succeeded
NOTE: Running task 70 of 77 (ID: 9,
/home/evadeflow/projects/poky-git/meta/recipes-extended/tar/tar-replacement=
-native_1.26.bb,
do_install)
NOTE: package tar-replacement-native-1.26-r1: task do_install: Started
NOTE: package tar-replacement-native-1.26-r1: task do_install: Succeeded
NOTE: Running task 71 of 77 (ID: 10,
/home/evadeflow/projects/poky-git/meta/recipes-extended/tar/tar-replacement=
-native_1.26.bb,
do_populate_sysroot)
NOTE: package tar-replacement-native-1.26-r1: task do_populate_sysroot:
Started
NOTE: package tar-replacement-native-1.26-r1: task do_populate_sysroot:
Succeeded
NOTE: package sqlite3-native-3.7.10-r2: task do_compile: Succeeded
NOTE: Running task 72 of 77 (ID: 23,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/sqlit=
e/sqlite3_3.7.10.bb,
do_install)
NOTE: package sqlite3-native-3.7.10-r2: task do_install: Started
NOTE: package sqlite3-native-3.7.10-r2: task do_install: Succeeded
NOTE: Running task 73 of 77 (ID: 24,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/sqlit=
e/sqlite3_3.7.10.bb,
do_populate_sysroot)
NOTE: package sqlite3-native-3.7.10-r2: task do_populate_sysroot: Started
NOTE: package sqlite3-native-3.7.10-r2: task do_populate_sysroot: Succeeded
NOTE: Running task 74 of 77 (ID: 5,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pseu=
do/pseudo_1.3.bb,
do_configure)
NOTE: package pseudo-native-1.3-r10: task do_configure: Started
NOTE: package pseudo-native-1.3-r10: task do_configure: Succeeded
NOTE: Running task 75 of 77 (ID: 6,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pseu=
do/pseudo_1.3.bb,
do_compile)
NOTE: package pseudo-native-1.3-r10: task do_compile: Started
NOTE: package pseudo-native-1.3-r10: task do_compile: Succeeded
NOTE: Running task 76 of 77 (ID: 2,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pseu=
do/pseudo_1.3.bb,
do_install)
NOTE: package pseudo-native-1.3-r10: task do_install: Started
NOTE: package pseudo-native-1.3-r10: task do_install: Succeeded
NOTE: Running task 77 of 77 (ID: 3,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/pseu=
do/pseudo_1.3.bb,
do_populate_sysroot)
NOTE: package pseudo-native-1.3-r10: task do_populate_sysroot: Started
NOTE: package pseudo-native-1.3-r10: task do_populate_sysroot: Succeeded
NOTE: Tasks Summary: Attempted 77 tasks of which 0 didn't need to be rerun =
and
all succeeded.

Summary: There was 1 WARNING message shown.
WARNING: Host distribution "Ubuntu 10.04 LTS" has not been validated with t=
his
version of the build system; you may possibly experience unexpected failure=
s.
It is recommended that you use a tested distribution.
Parsing recipes: 100%
|###################################################################| Time:
00:00:07
Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105 targets, 34
skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        =3D "1.15.2"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2.1"
TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
TARGET_FPU        =3D "soft"
meta
meta-yocto        =3D "denzil:65ffa7395055f7e012cb973f63f92380828eed0d"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 43 of 1353 (ID: 863,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/gmp/g=
mp_5.0.4.bb,
do_fetch)
NOTE: Running task 44 of 1353 (ID: 335,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/zlib/zli=
b_1.2.6.bb,
do_fetch)
NOTE: Running task 59 of 1353 (ID: 852,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/mpfr/=
mpfr_3.1.0.bb,
do_fetch)
NOTE: Running task 74 of 1353 (ID: 1346,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/gcc/gcc-cross-initi=
al_4.6.bb,
do_fetch)
NOTE: Running task 75 of 1353 (ID: 720,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/biso=
n/bison_2.5.bb,
do_fetch)
NOTE: Running task 76 of 1353 (ID: 709,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/flex=
/flex_2.5.35.bb,
do_fetch)
NOTE: Running task 77 of 1353 (ID: 874,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/libmp=
c/libmpc_0.8.2.bb,
do_fetch)
NOTE: Running task 78 of 1353 (ID: 841,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/binutils/binutils-c=
ross_2.22.bb,
do_fetch)
NOTE: Running task 79 of 1353 (ID: 1246,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/unifdef/unifdef-nat=
ive_2.6.18+git.bb,
do_fetch)
NOTE: Running task 80 of 1353 (ID: 909,
/home/evadeflow/projects/poky-git/meta/recipes-kernel/linux-libc-headers/li=
nux-libc-headers_3.2.bb,
do_fetch)
NOTE: Running task 81 of 1353 (ID: 1235,
/home/evadeflow/projects/poky-git/meta/recipes-core/eglibc/eglibc-initial_2=
.13.bb,
do_fetch)
NOTE: Running task 82 of 1353 (ID: 920,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-extended/gper=
f/gperf_3.0.4.bb,
do_fetch)
NOTE: Running task 83 of 1353 (ID: 437,
/home/evadeflow/projects/poky-git/meta/recipes-core/eglibc/eglibc_2.13.bb,
do_fetch)
NOTE: Running task 84 of 1353 (ID: 1212,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-connectivity/=
openssl/ocf-linux_20100325.bb,
do_fetch)
NOTE: Running task 85 of 1353 (ID: 654,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-connectivity/=
openssl/openssl_1.0.0i.bb,
do_fetch)
NOTE: Running task 86 of 1353 (ID: 160,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-extended/pigz=
/pigz_2.2.4.bb,
do_fetch)
NOTE: package gmp-native-5.0.4-r0: task do_fetch: Started
NOTE: package zlib-native-1.2.6-r1: task do_fetch: Started
NOTE: package zlib-native-1.2.6-r1: task do_fetch: Succeeded
NOTE: package gcc-cross-initial-4.6.3+svnr184847-r28: task do_fetch: Starte=
d
NOTE: package binutils-cross-2.22-r6: task do_fetch: Started
NOTE: package unifdef-native-2.6.18+git-r0: task do_fetch: Started
NOTE: package unifdef-native-2.6.18+git-r0: task do_fetch: Succeeded
NOTE: package linux-libc-headers-3.2-r1: task do_fetch: Started
NOTE: Running task 87 of 1353 (ID: 331,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/zlib/zli=
b_1.2.6.bb,
do_unpack)
NOTE: package mpfr-native-3.1.0-r1: task do_fetch: Started
NOTE: package bison-native-2.5-r1: task do_fetch: Started
NOTE: package flex-native-2.5.35-r3: task do_fetch: Started
NOTE: package libmpc-native-0.8.2-r0: task do_fetch: Started
NOTE: package eglibc-initial-2.13-r28+svnr15508: task do_fetch: Started
NOTE: package gperf-native-3.0.4-r0: task do_fetch: Started
NOTE: package eglibc-2.13-r28+svnr15508: task do_fetch: Started
NOTE: package ocf-linux-native-20100325-r3.0: task do_fetch: Started
NOTE: package openssl-native-1.0.0i-r0.2: task do_fetch: Started
NOTE: package pigz-native-2.2.4-r2: task do_fetch: Started
NOTE: Running task 88 of 1353 (ID: 1242,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/unifdef/unifdef-nat=
ive_2.6.18+git.bb,
do_unpack)
NOTE: package zlib-native-1.2.6-r1: task do_unpack: Started
NOTE: package unifdef-native-2.6.18+git-r0: task do_unpack: Started
NOTE: package gcc-cross-initial-4.6.3+svnr184847-r28: task do_fetch: Succee=
ded
NOTE: package unifdef-native-2.6.18+git-r0: task do_unpack: Succeeded
NOTE: Running task 89 of 1353 (ID: 1342,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/gcc/gcc-cross-initi=
al_4.6.bb,
do_unpack)
NOTE: Running task 90 of 1353 (ID: 1243,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/unifdef/unifdef-nat=
ive_2.6.18+git.bb,
do_patch)
NOTE: package gcc-cross-initial-4.6.3+svnr184847-r28: task do_unpack: Start=
ed
NOTE: package unifdef-native-2.6.18+git-r0: task do_patch: Started
NOTE: package unifdef-native-2.6.18+git-r0: task do_patch: Succeeded
NOTE: Running task 91 of 1353 (ID: 1247,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/unifdef/unifdef-nat=
ive_2.6.18+git.bb,
do_configure)
NOTE: package libmpc-native-0.8.2-r0: task do_fetch: Succeeded
NOTE: package gperf-native-3.0.4-r0: task do_fetch: Succeeded
NOTE: Running task 92 of 1353 (ID: 870,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/libmp=
c/libmpc_0.8.2.bb,
do_unpack)
NOTE: Running task 94 of 1353 (ID: 916,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-extended/gper=
f/gperf_3.0.4.bb,
do_unpack)
NOTE: package unifdef-native-2.6.18+git-r0: task do_configure: Started
NOTE: package unifdef-native-2.6.18+git-r0: task do_configure: Succeeded
NOTE: package zlib-native-1.2.6-r1: task do_unpack: Succeeded
NOTE: Running task 95 of 1353 (ID: 332,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/zlib/zli=
b_1.2.6.bb,
do_patch)
NOTE: Running task 96 of 1353 (ID: 1248,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/unifdef/unifdef-nat=
ive_2.6.18+git.bb,
do_compile)
NOTE: package libmpc-native-0.8.2-r0: task do_unpack: Started
NOTE: package gperf-native-3.0.4-r0: task do_unpack: Started
NOTE: package gmp-native-5.0.4-r0: task do_fetch: Succeeded
NOTE: Running task 97 of 1353 (ID: 859,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/gmp/g=
mp_5.0.4.bb,
do_unpack)
NOTE: package libmpc-native-0.8.2-r0: task do_unpack: Succeeded
NOTE: Running task 98 of 1353 (ID: 871,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/libmp=
c/libmpc_0.8.2.bb,
do_patch)
NOTE: package gperf-native-3.0.4-r0: task do_unpack: Succeeded
NOTE: package zlib-native-1.2.6-r1: task do_patch: Started
NOTE: package unifdef-native-2.6.18+git-r0: task do_compile: Started
NOTE: Running task 99 of 1353 (ID: 917,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-extended/gper=
f/gperf_3.0.4.bb,
do_patch)
NOTE: package gmp-native-5.0.4-r0: task do_unpack: Started
NOTE: package libmpc-native-0.8.2-r0: task do_patch: Started
NOTE: package libmpc-native-0.8.2-r0: task do_patch: Succeeded
NOTE: Running task 101 of 1353 (ID: 469,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/ncurses/=
ncurses_5.9.bb,
do_fetch)
NOTE: package eglibc-initial-2.13-r28+svnr15508: task do_fetch: Succeeded
NOTE: Running task 102 of 1353 (ID: 1230,
/home/evadeflow/projects/poky-git/meta/recipes-core/eglibc/eglibc-initial_2=
.13.bb,
do_unpack)
NOTE: package eglibc-2.13-r28+svnr15508: task do_fetch: Succeeded
NOTE: Running task 103 of 1353 (ID: 432,
/home/evadeflow/projects/poky-git/meta/recipes-core/eglibc/eglibc_2.13.bb,
do_unpack)
NOTE: package gperf-native-3.0.4-r0: task do_patch: Started
NOTE: package gperf-native-3.0.4-r0: task do_patch: Succeeded
NOTE: Running task 104 of 1353 (ID: 921,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-extended/gper=
f/gperf_3.0.4.bb,
do_configure)
NOTE: package zlib-native-1.2.6-r1: task do_patch: Succeeded
NOTE: package ncurses-native-5.9-r9.1: task do_fetch: Started
NOTE: package eglibc-initial-2.13-r28+svnr15508: task do_unpack: Started
NOTE: package eglibc-2.13-r28+svnr15508: task do_unpack: Started
NOTE: Running task 105 of 1353 (ID: 336,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/zlib/zli=
b_1.2.6.bb,
do_configure)
NOTE: package unifdef-native-2.6.18+git-r0: task do_compile: Succeeded
NOTE: package gperf-native-3.0.4-r0: task do_configure: Started
NOTE: package zlib-native-1.2.6-r1: task do_configure: Started
NOTE: package flex-native-2.5.35-r3: task do_fetch: Succeeded
NOTE: package pigz-native-2.2.4-r2: task do_fetch: Succeeded
NOTE: Running task 106 of 1353 (ID: 705,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/flex=
/flex_2.5.35.bb,
do_unpack)
NOTE: Running task 107 of 1353 (ID: 156,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-extended/pigz=
/pigz_2.2.4.bb,
do_unpack)
NOTE: Running task 108 of 1353 (ID: 1244,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/unifdef/unifdef-nat=
ive_2.6.18+git.bb,
do_install)
NOTE: package flex-native-2.5.35-r3: task do_unpack: Started
NOTE: package pigz-native-2.2.4-r2: task do_unpack: Started
NOTE: package unifdef-native-2.6.18+git-r0: task do_install: Started
NOTE: package unifdef-native-2.6.18+git-r0: task do_install: Succeeded
NOTE: Running task 109 of 1353 (ID: 1245,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/unifdef/unifdef-nat=
ive_2.6.18+git.bb,
do_populate_sysroot)
NOTE: package pigz-native-2.2.4-r2: task do_unpack: Succeeded
NOTE: package ocf-linux-native-20100325-r3.0: task do_fetch: Succeeded
NOTE: Running task 110 of 1353 (ID: 1208,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-connectivity/=
openssl/ocf-linux_20100325.bb,
do_unpack)
NOTE: Running task 111 of 1353 (ID: 157,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-extended/pigz=
/pigz_2.2.4.bb,
do_patch)
NOTE: package ocf-linux-native-20100325-r3.0: task do_unpack: Started
NOTE: package pigz-native-2.2.4-r2: task do_patch: Started
NOTE: package ncurses-native-5.9-r9.1: task do_fetch: Succeeded
NOTE: package zlib-native-1.2.6-r1: task do_configure: Succeeded
NOTE: package bison-native-2.5-r1: task do_fetch: Succeeded
NOTE: package unifdef-native-2.6.18+git-r0: task do_populate_sysroot: Start=
ed
NOTE: Running task 112 of 1353 (ID: 716,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/biso=
n/bison_2.5.bb,
do_unpack)
NOTE: package ocf-linux-native-20100325-r3.0: task do_unpack: Succeeded
NOTE: package mpfr-native-3.1.0-r1: task do_fetch: Succeeded
NOTE: package binutils-cross-2.22-r6: task do_fetch: Succeeded
NOTE: Running task 113 of 1353 (ID: 848,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/mpfr/=
mpfr_3.1.0.bb,
do_unpack)
NOTE: package gmp-native-5.0.4-r0: task do_unpack: Succeeded
NOTE: Running task 114 of 1353 (ID: 837,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/binutils/binutils-c=
ross_2.22.bb,
do_unpack)
NOTE: Running task 115 of 1353 (ID: 860,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/gmp/g=
mp_5.0.4.bb,
do_patch)
NOTE: package openssl-native-1.0.0i-r0.2: task do_fetch: Succeeded
NOTE: Running task 116 of 1353 (ID: 650,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-connectivity/=
openssl/openssl_1.0.0i.bb,
do_unpack)
NOTE: Running task 117 of 1353 (ID: 465,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/ncurses/=
ncurses_5.9.bb,
do_unpack)
NOTE: Running task 118 of 1353 (ID: 337,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/zlib/zli=
b_1.2.6.bb,
do_compile)
NOTE: Running task 119 of 1353 (ID: 1209,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-connectivity/=
openssl/ocf-linux_20100325.bb,
do_patch)
NOTE: package flex-native-2.5.35-r3: task do_unpack: Succeeded
NOTE: package bison-native-2.5-r1: task do_unpack: Started
NOTE: package mpfr-native-3.1.0-r1: task do_unpack: Started
NOTE: Running task 120 of 1353 (ID: 706,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/flex=
/flex_2.5.35.bb,
do_patch)
NOTE: package binutils-cross-2.22-r6: task do_unpack: Started
NOTE: package pigz-native-2.2.4-r2: task do_patch: Succeeded
NOTE: package gmp-native-5.0.4-r0: task do_patch: Started
NOTE: package openssl-native-1.0.0i-r0.2: task do_unpack: Started
NOTE: package ncurses-native-5.9-r9.1: task do_unpack: Started
NOTE: package zlib-native-1.2.6-r1: task do_compile: Started
NOTE: package ocf-linux-native-20100325-r3.0: task do_patch: Started
NOTE: package ocf-linux-native-20100325-r3.0: task do_patch: Succeeded
NOTE: package unifdef-native-2.6.18+git-r0: task do_populate_sysroot:
Succeeded
NOTE: Running task 123 of 1353 (ID: 698,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/perl/perl-native_5.=
14.2.bb,
do_fetch)
NOTE: Running task 124 of 1353 (ID: 687,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/expat/ex=
pat_2.0.1.bb,
do_fetch)
NOTE: Running task 125 of 1353 (ID: 1213,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-connectivity/=
openssl/ocf-linux_20100325.bb,
do_configure)
NOTE: package perl-native-5.14.2-r0: task do_fetch: Started
NOTE: package expat-native-2.0.1-r1: task do_fetch: Started
NOTE: package ocf-linux-native-20100325-r3.0: task do_configure: Started
NOTE: package expat-native-2.0.1-r1: task do_fetch: Succeeded
NOTE: package ocf-linux-native-20100325-r3.0: task do_configure: Succeeded
NOTE: Running task 126 of 1353 (ID: 676,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/readline=
/readline_6.2.bb,
do_fetch)
NOTE: Running task 127 of 1353 (ID: 1214,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-connectivity/=
openssl/ocf-linux_20100325.bb,
do_compile)
NOTE: package readline-native-6.2-r2: task do_fetch: Started
NOTE: package ocf-linux-native-20100325-r3.0: task do_compile: Started
NOTE: package perl-native-5.14.2-r0: task do_fetch: Succeeded
NOTE: Running task 128 of 1353 (ID: 694,
/home/evadeflow/projects/poky-git/meta/recipes-devtools/perl/perl-native_5.=
14.2.bb,
do_unpack)
NOTE: package ocf-linux-native-20100325-r3.0: task do_compile: Succeeded
NOTE: Running task 129 of 1353 (ID: 1210,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-connectivity/=
openssl/ocf-linux_20100325.bb,
do_install)
NOTE: package readline-native-6.2-r2: task do_fetch: Succeeded
NOTE: package perl-native-5.14.2-r0: task do_unpack: Started
NOTE: package linux-libc-headers-3.2-r1: task do_fetch: Succeeded
NOTE: Running task 130 of 1353 (ID: 905,
/home/evadeflow/projects/poky-git/meta/recipes-kernel/linux-libc-headers/li=
nux-libc-headers_3.2.bb,
do_unpack)
NOTE: Running task 131 of 1353 (ID: 672,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/readline=
/readline_6.2.bb,
do_unpack)
NOTE: package ocf-linux-native-20100325-r3.0: task do_install: Started
NOTE: package linux-libc-headers-3.2-r1: task do_unpack: Started
NOTE: package readline-native-6.2-r2: task do_unpack: Started
NOTE: package ocf-linux-native-20100325-r3.0: task do_install: Succeeded
NOTE: package readline-native-6.2-r2: task do_unpack: Succeeded
NOTE: Running task 132 of 1353 (ID: 1211,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-connectivity/=
openssl/ocf-linux_20100325.bb,
do_populate_sysroot)
NOTE: Running task 133 of 1353 (ID: 673,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/readline=
/readline_6.2.bb,
do_patch)
NOTE: package ocf-linux-native-20100325-r3.0: task do_populate_sysroot:
Started
NOTE: package readline-native-6.2-r2: task do_patch: Started
NOTE: package flex-native-2.5.35-r3: task do_patch: Started
NOTE: package zlib-native-1.2.6-r1: task do_compile: Succeeded
NOTE: Running task 134 of 1353 (ID: 333,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/zlib/zli=
b_1.2.6.bb,
do_install)
NOTE: package mpfr-native-3.1.0-r1: task do_unpack: Succeeded
NOTE: package flex-native-2.5.35-r3: task do_patch: Succeeded
NOTE: Running task 135 of 1353 (ID: 849,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/mpfr/=
mpfr_3.1.0.bb,
do_patch)
NOTE: Running task 136 of 1353 (ID: 710,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/flex=
/flex_2.5.35.bb,
do_configure)
NOTE: package zlib-native-1.2.6-r1: task do_install: Started
NOTE: package mpfr-native-3.1.0-r1: task do_patch: Started
NOTE: package flex-native-2.5.35-r3: task do_configure: Started
NOTE: package readline-native-6.2-r2: task do_patch: Succeeded
NOTE: package mpfr-native-3.1.0-r1: task do_patch: Succeeded
NOTE: package bison-native-2.5-r1: task do_unpack: Succeeded
NOTE: package gmp-native-5.0.4-r0: task do_patch: Succeeded
NOTE: Running task 137 of 1353 (ID: 717,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/biso=
n/bison_2.5.bb,
do_patch)
NOTE: Running task 138 of 1353 (ID: 864,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/gmp/g=
mp_5.0.4.bb,
do_configure)
NOTE: Running task 139 of 1353 (ID: 808,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/attr/=
attr_2.4.46.bb,
do_fetch)
NOTE: Running task 140 of 1353 (ID: 291,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/elfu=
tils/elfutils_0.148.bb,
do_fetch)
NOTE: package ocf-linux-native-20100325-r3.0: task do_populate_sysroot:
Succeeded
NOTE: package bison-native-2.5-r1: task do_patch: Started
NOTE: package gmp-native-5.0.4-r0: task do_configure: Started
NOTE: package attr-native-2.4.46-r4: task do_fetch: Started
NOTE: package elfutils-native-0.148-r7: task do_fetch: Started
NOTE: Running task 141 of 1353 (ID: 390,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/file=
/file_5.11.bb,
do_fetch)
NOTE: package zlib-native-1.2.6-r1: task do_install: Succeeded
NOTE: package file-native-5.11-r0: task do_fetch: Started
NOTE: package ncurses-native-5.9-r9.1: task do_unpack: Succeeded
NOTE: Running task 142 of 1353 (ID: 466,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/ncurses/=
ncurses_5.9.bb,
do_patch)
NOTE: Running task 143 of 1353 (ID: 334,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/zlib/zli=
b_1.2.6.bb,
do_populate_sysroot)
NOTE: package bison-native-2.5-r1: task do_patch: Succeeded
NOTE: Running task 144 of 1353 (ID: 721,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/biso=
n/bison_2.5.bb,
do_configure)
NOTE: package attr-native-2.4.46-r4: task do_fetch: Succeeded
NOTE: Running task 145 of 1353 (ID: 804,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/attr/=
attr_2.4.46.bb,
do_unpack)
NOTE: package file-native-5.11-r0: task do_fetch: Succeeded
NOTE: package zlib-native-1.2.6-r1: task do_populate_sysroot: Started
NOTE: package bison-native-2.5-r1: task do_configure: Started
NOTE: package attr-native-2.4.46-r4: task do_unpack: Started
NOTE: package ncurses-native-5.9-r9.1: task do_patch: Started
NOTE: Running task 146 of 1353 (ID: 386,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/file=
/file_5.11.bb,
do_unpack)
NOTE: package attr-native-2.4.46-r4: task do_unpack: Succeeded
NOTE: Running task 147 of 1353 (ID: 805,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/attr/=
attr_2.4.46.bb,
do_patch)
NOTE: package file-native-5.11-r0: task do_unpack: Started
NOTE: package ncurses-native-5.9-r9.1: task do_patch: Succeeded
NOTE: package attr-native-2.4.46-r4: task do_patch: Started
NOTE: Running task 148 of 1353 (ID: 470,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-core/ncurses/=
ncurses_5.9.bb,
do_configure)
NOTE: package elfutils-native-0.148-r7: task do_fetch: Succeeded
NOTE: Running task 149 of 1353 (ID: 287,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/elfu=
tils/elfutils_0.148.bb,
do_unpack)
NOTE: package openssl-native-1.0.0i-r0.2: task do_unpack: Succeeded
NOTE: package file-native-5.11-r0: task do_unpack: Succeeded
NOTE: package attr-native-2.4.46-r4: task do_patch: Succeeded
NOTE: Running task 150 of 1353 (ID: 651,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-connectivity/=
openssl/openssl_1.0.0i.bb,
do_patch)
NOTE: Running task 151 of 1353 (ID: 387,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/file=
/file_5.11.bb,
do_patch)
NOTE: Running task 152 of 1353 (ID: 324,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/curl/=
curl_7.24.0.bb,
do_fetch)
NOTE: package ncurses-native-5.9-r9.1: task do_configure: Started
NOTE: package elfutils-native-0.148-r7: task do_unpack: Started
NOTE: package curl-native-7.24.0-r2: task do_fetch: Started
NOTE: package openssl-native-1.0.0i-r0.2: task do_patch: Started
NOTE: package file-native-5.11-r0: task do_patch: Started
NOTE: package zlib-native-1.2.6-r1: task do_populate_sysroot: Succeeded
NOTE: Running task 153 of 1353 (ID: 161,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-extended/pigz=
/pigz_2.2.4.bb,
do_configure)
NOTE: package curl-native-7.24.0-r2: task do_fetch: Succeeded
NOTE: package file-native-5.11-r0: task do_patch: Succeeded
NOTE: package pigz-native-2.2.4-r2: task do_configure: Started
NOTE: Running task 154 of 1353 (ID: 391,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-devtools/file=
/file_5.11.bb,
do_configure)
NOTE: Running task 155 of 1353 (ID: 320,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-support/curl/=
curl_7.24.0.bb,
do_unpack)
NOTE: package pigz-native-2.2.4-r2: task do_configure: Succeeded
NOTE: Running task 156 of 1353 (ID: 162,
virtual:native:/home/evadeflow/projects/poky-git/meta/recipes-extended/pigz=
/pigz_2.2.4.bb,
do_compile)
NOTE: package file-native-5.11-r0: task do_configure: Started
ERROR: Function failed: Unpack failure for URL:
'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command
PATH=3D"/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux/usr=
/bin/armv5te-linux:/home/evadeflow/projects/poky-git/build/tmp/sysroots/i68=
6-linux/usr/bin:/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-l=
inux/usr/sbin:/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-lin=
ux/usr/bin:/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux/=
sbin:/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux//bin:/=
home/evadeflow/projects/poky-git/scripts/native-intercept:/home/evadeflow/p=
rojects/poky-git/scripts:/home/evadeflow/projects/poky-git/bitbake/bin/:/us=
r/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/=
evadeflow/projects/poky-git/scripts"
tar xz --no-same-owner -f
/home/evadeflow/projects/poky-git/build/downloads/perl-5.14.2.tar.gz failed=
 with
return value 2
ERROR: Logfile of failure stored in:
/home/evadeflow/projects/poky-git/build/tmp/work/i686-linux/perl-native-5.1=
4.2-r0/temp/log.do_unpack.3005
Log data follows:
| NOTE: Unpacking
/home/evadeflow/projects/poky-git/build/downloads/perl-5.14.2.tar.gz to
/home/evadeflow/projects/poky-git/build/tmp/work/i686-linux/perl-native-5.1=
4.2-r0/
|
| gzip: stdin: invalid compressed data--crc error
| tar: Child returned status 1
| tar: Error is not recoverable: exiting now
| ERROR: Function failed: Unpack failure for URL:
'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command
PATH=3D"/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux/usr=
/bin/armv5te-linux:/home/evadeflow/projects/poky-git/build/tmp/sysroots/i68=
6-linux/usr/bin:/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-l=
inux/usr/sbin:/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-lin=
ux/usr/bin:/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux/=
sbin:/home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux//bin:/=
home/evadeflow/projects/poky-git/scripts/native-intercept:/home/evadeflow/p=
rojects/poky-git/scripts:/home/evadeflow/projects/poky-git/bitbake/bin/:/us=
r/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/=
evadeflow/projects/poky-git/scripts"
tar xz --no-same-owner -f
/home/evadeflow/projects/poky-git/build/downloads/perl-5.14.2.tar.gz failed=
 with
return value 2
NOTE: package perl-native-5.14.2-r0: task do_unpack: Failed
NOTE: package curl-native-7.24.0-r2: task do_unpack: Started
NOTE: package pigz-native-2.2.4-r2: task do_compile: Started
ERROR: Task 694
(/home/evadeflow/projects/poky-git/meta/recipes-devtools/perl/perl-native_5=
.14.2.bb,
do_unpack) failed with exit code '1'
Waiting for 15 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: eglibc-initial-2.13-r28+svnr15508 do_unpack (pid 2344)
2: eglibc-2.13-r28+svnr15508 do_unpack (pid 2345)
3: gperf-native-3.0.4-r0 do_configure (pid 2348)
4: binutils-cross-2.22-r6 do_unpack (pid 2617)
5: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
6: flex-native-2.5.35-r3 do_configure (pid 3635)
7: gmp-native-5.0.4-r0 do_configure (pid 3858)
8: bison-native-2.5-r1 do_configure (pid 4006)
9: ncurses-native-5.9-r9.1 do_configure (pid 4215)
10: elfutils-native-0.148-r7 do_unpack (pid 4229)
11: openssl-native-1.0.0i-r0.2 do_patch (pid 4244)
12: file-native-5.11-r0 do_configure (pid 4743)
13: curl-native-7.24.0-r2 do_unpack (pid 4748)
14: pigz-native-2.2.4-r2 do_compile (pid 4809)
NOTE: package pigz-native-2.2.4-r2: task do_compile: Succeeded
Waiting for 14 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: eglibc-initial-2.13-r28+svnr15508 do_unpack (pid 2344)
2: eglibc-2.13-r28+svnr15508 do_unpack (pid 2345)
3: gperf-native-3.0.4-r0 do_configure (pid 2348)
4: binutils-cross-2.22-r6 do_unpack (pid 2617)
5: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
6: flex-native-2.5.35-r3 do_configure (pid 3635)
7: gmp-native-5.0.4-r0 do_configure (pid 3858)
8: bison-native-2.5-r1 do_configure (pid 4006)
9: ncurses-native-5.9-r9.1 do_configure (pid 4215)
10: elfutils-native-0.148-r7 do_unpack (pid 4229)
11: openssl-native-1.0.0i-r0.2 do_patch (pid 4244)
12: file-native-5.11-r0 do_configure (pid 4743)
13: curl-native-7.24.0-r2 do_unpack (pid 4748)
NOTE: package elfutils-native-0.148-r7: task do_unpack: Succeeded
Waiting for 13 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: eglibc-initial-2.13-r28+svnr15508 do_unpack (pid 2344)
2: eglibc-2.13-r28+svnr15508 do_unpack (pid 2345)
3: gperf-native-3.0.4-r0 do_configure (pid 2348)
4: binutils-cross-2.22-r6 do_unpack (pid 2617)
5: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
6: flex-native-2.5.35-r3 do_configure (pid 3635)
7: gmp-native-5.0.4-r0 do_configure (pid 3858)
8: bison-native-2.5-r1 do_configure (pid 4006)
9: ncurses-native-5.9-r9.1 do_configure (pid 4215)
10: openssl-native-1.0.0i-r0.2 do_patch (pid 4244)
11: file-native-5.11-r0 do_configure (pid 4743)
12: curl-native-7.24.0-r2 do_unpack (pid 4748)
NOTE: package openssl-native-1.0.0i-r0.2: task do_patch: Succeeded
Waiting for 12 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: eglibc-initial-2.13-r28+svnr15508 do_unpack (pid 2344)
2: eglibc-2.13-r28+svnr15508 do_unpack (pid 2345)
3: gperf-native-3.0.4-r0 do_configure (pid 2348)
4: binutils-cross-2.22-r6 do_unpack (pid 2617)
5: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
6: flex-native-2.5.35-r3 do_configure (pid 3635)
7: gmp-native-5.0.4-r0 do_configure (pid 3858)
8: bison-native-2.5-r1 do_configure (pid 4006)
9: ncurses-native-5.9-r9.1 do_configure (pid 4215)
10: file-native-5.11-r0 do_configure (pid 4743)
11: curl-native-7.24.0-r2 do_unpack (pid 4748)
NOTE: package curl-native-7.24.0-r2: task do_unpack: Succeeded
Waiting for 11 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: eglibc-initial-2.13-r28+svnr15508 do_unpack (pid 2344)
2: eglibc-2.13-r28+svnr15508 do_unpack (pid 2345)
3: gperf-native-3.0.4-r0 do_configure (pid 2348)
4: binutils-cross-2.22-r6 do_unpack (pid 2617)
5: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
6: flex-native-2.5.35-r3 do_configure (pid 3635)
7: gmp-native-5.0.4-r0 do_configure (pid 3858)
8: bison-native-2.5-r1 do_configure (pid 4006)
9: ncurses-native-5.9-r9.1 do_configure (pid 4215)
10: file-native-5.11-r0 do_configure (pid 4743)
NOTE: package eglibc-initial-2.13-r28+svnr15508: task do_unpack: Succeeded
Waiting for 10 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: eglibc-2.13-r28+svnr15508 do_unpack (pid 2345)
2: gperf-native-3.0.4-r0 do_configure (pid 2348)
3: binutils-cross-2.22-r6 do_unpack (pid 2617)
4: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
5: flex-native-2.5.35-r3 do_configure (pid 3635)
6: gmp-native-5.0.4-r0 do_configure (pid 3858)
7: bison-native-2.5-r1 do_configure (pid 4006)
8: ncurses-native-5.9-r9.1 do_configure (pid 4215)
9: file-native-5.11-r0 do_configure (pid 4743)
NOTE: package eglibc-2.13-r28+svnr15508: task do_unpack: Succeeded
Waiting for 9 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: gperf-native-3.0.4-r0 do_configure (pid 2348)
2: binutils-cross-2.22-r6 do_unpack (pid 2617)
3: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
4: flex-native-2.5.35-r3 do_configure (pid 3635)
5: gmp-native-5.0.4-r0 do_configure (pid 3858)
6: bison-native-2.5-r1 do_configure (pid 4006)
7: ncurses-native-5.9-r9.1 do_configure (pid 4215)
8: file-native-5.11-r0 do_configure (pid 4743)
NOTE: package binutils-cross-2.22-r6: task do_unpack: Succeeded
Waiting for 8 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: gperf-native-3.0.4-r0 do_configure (pid 2348)
2: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
3: flex-native-2.5.35-r3 do_configure (pid 3635)
4: gmp-native-5.0.4-r0 do_configure (pid 3858)
5: bison-native-2.5-r1 do_configure (pid 4006)
6: ncurses-native-5.9-r9.1 do_configure (pid 4215)
7: file-native-5.11-r0 do_configure (pid 4743)
NOTE: package gperf-native-3.0.4-r0: task do_configure: Succeeded
Waiting for 7 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
2: flex-native-2.5.35-r3 do_configure (pid 3635)
3: gmp-native-5.0.4-r0 do_configure (pid 3858)
4: bison-native-2.5-r1 do_configure (pid 4006)
5: ncurses-native-5.9-r9.1 do_configure (pid 4215)
6: file-native-5.11-r0 do_configure (pid 4743)
NOTE: package flex-native-2.5.35-r3: task do_configure: Succeeded
Waiting for 6 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
2: gmp-native-5.0.4-r0 do_configure (pid 3858)
3: bison-native-2.5-r1 do_configure (pid 4006)
4: ncurses-native-5.9-r9.1 do_configure (pid 4215)
5: file-native-5.11-r0 do_configure (pid 4743)
NOTE: package file-native-5.11-r0: task do_configure: Succeeded
Waiting for 5 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
2: gmp-native-5.0.4-r0 do_configure (pid 3858)
3: bison-native-2.5-r1 do_configure (pid 4006)
4: ncurses-native-5.9-r9.1 do_configure (pid 4215)
NOTE: package ncurses-native-5.9-r9.1: task do_configure: Succeeded
Waiting for 4 running tasks to finish:
0: gcc-cross-initial-4.6.3+svnr184847-r28 do_unpack (pid 2304)
1: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
2: gmp-native-5.0.4-r0 do_configure (pid 3858)
3: bison-native-2.5-r1 do_configure (pid 4006)
NOTE: package gcc-cross-initial-4.6.3+svnr184847-r28: task do_unpack:
Succeeded
Waiting for 3 running tasks to finish:
0: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
1: gmp-native-5.0.4-r0 do_configure (pid 3858)
2: bison-native-2.5-r1 do_configure (pid 4006)
NOTE: package gmp-native-5.0.4-r0: task do_configure: Succeeded
Waiting for 2 running tasks to finish:
0: linux-libc-headers-3.2-r1 do_unpack (pid 3027)
1: bison-native-2.5-r1 do_configure (pid 4006)
NOTE: package linux-libc-headers-3.2-r1: task do_unpack: Succeeded
Waiting for 1 running tasks to finish:
0: bison-native-2.5-r1 do_configure (pid 4006)
NOTE: package bison-native-2.5-r1: task do_configure: Succeeded
NOTE: Tasks Summary: Attempted 156 tasks of which 74 didn't need to be reru=
n
and 1 failed.

Summary: 1 task failed:
  /home/evadeflow/projects/poky-git/meta/recipes-devtools/perl/perl-native_=
5.14.2.bb,
  do_unpack
  Summary: There was 1 WARNING message shown.
  Summary: There was 1 ERROR message shown, returning a non-zero exit code.
  bitbake core-image-minimal  486.67s user 110.35s system 213% cpu 4:39.60


On Fri, Sep 28, 2012 at 10:16 AM, Evade Flow <evadeflow@gmail.com> wrote:
> Seems it definitely didn't build tar:
>
> evadeflow% pwd
> /home/evadeflow/projects/poky-git/build/tmp/sysroots/i686-linux/usr/bin
> evadeflow% ls t*
> tabs  tailf  taskset  tic  toe  tput  tset  tunctl  tzselect
> evadeflow% tar --version
> tar (GNU tar) 1.22
> Copyright (C) 2009 Free Software Foundation, Inc.
> License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.h=
tml>.
> This is free software: you are free to change and redistribute it.
> There is NO WARRANTY, to the extent permitted by law.
>
> Written by John Gilmore and Jay Fenlason.
>
>
> This is on denzil, BTW. (Maybe the check against the tar version was adde=
d
> later?)
>
>
> evadeflow% bitbake core-image-sato
> WARNING: Host distribution "Ubuntu 10.04 LTS" has not been validated
> with this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested
> distribution.
> Parsing recipes: 100%
> |###################################################################|
> Time: 00:00:07
> Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105
> targets, 34 skipped, 0 masked, 0 errors.
>
> OE Build Configuration:
> BB_VERSION        =3D "1.15.2"
> TARGET_ARCH       =3D "arm"
> TARGET_OS         =3D "linux-gnueabi"
> MACHINE           =3D "qemuarm"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.2.1"
> TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
> TARGET_FPU        =3D "soft"
> meta
> meta-yocto        =3D "denzil:65ffa7395055f7e012cb973f63f92380828eed0d"
>
>
> Maybe I got my build tree into an inconsistent state somehow when I was t=
rying
> to 'fix' this. I can try rebuilding if it helps, using the original perl
> archive (not the one I re-tarballed with tar 1.22)...
>
>
> On Thu, Sep 27, 2012 at 6:58 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Thursday 27 September 2012 17:55:45 Evade Flow wrote:
>>> Fair enough. And I should mention that the error I reported occurs on
>>> Ubuntu 10.04. It's not like I wasn't warned. :-}
>>>
>>>   WARNING: Host distribution "Ubuntu 10.04 LTS" has not been validated
>>>   with this version of the build system; you may possibly experience
>>>   unexpected failures. It is recommended that you use a tested
>>>   distribution.
>>>
>>> (Other than this oddity with the perl package, things seem to work fine=
.)
>>
>> Yeah, it's just a warning :)
>>
>> This issue is rather perplexing. We're supposed to not be using the host=
 tar
>> if it is older than 1.24 due to another bug in earlier versions - if an =
older
>> version is found we build tar-replacement-native before anything else ge=
ts
>> built. Was tar-replacement-native built on the machine where it was fail=
ing?
>> You can verify it built by just checking under tmp/sysroots/<native
>> sysroot>/usr/bin/ to see if tar exists there.
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre


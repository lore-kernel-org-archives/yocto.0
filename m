Return-Path: <rajashekhar.sanda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C173E00BCC; Tue, 19 Feb 2019 22:24:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rajashekhar.sanda[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain different
	*      freemails
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03D66E0091D
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 22:23:58 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id b3so38402210otp.4
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 22:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:from:date:message-id:subject:to;
	bh=uMvxrCqSqw10AF2die9yPrAxnIDsHDTZO7iKEJUDeug=;
	b=l3BQEaP9C+GAwJakFR3QH2e942ne8TzYgb93npUAEfQppnERiu7PQYtXOF/5rFyj52
	ll5+UaqoCIpG2MHkyhjRVEghx6XIOBvKiN0Nror6R9juE0Z58aEF+4pWRCSvk1gboFSU
	pRosI0mjIgTbOHjEzAduh9oEEzU7zfMYRvwTH2UeZc0uZULdPgahFn4VzywrsEl+S7vO
	gv+DUrPUMuRisE5RXyL9ifb3xDeOEjyu5As+G1o9tt0IRbtMKJOCkl/ct8BD5clVs93/
	2XQdEm/fOtw4kCZHjocujUqoD1bQsw80uE8g5kR3PNM5p090D0wWfSVxGDP3T1swWkPf
	vEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:from:date:message-id
	:subject:to;
	bh=uMvxrCqSqw10AF2die9yPrAxnIDsHDTZO7iKEJUDeug=;
	b=lZB2uZ45B5ozkSgB+wutArp17rxEgiTO4BP8wi51JN5Sqw6TqFgrFf9ZwudxfpnmmC
	bjXe00F103YJWvAcAsvRz8+Md1EmW+7IVFNNBBNRIT4xFtdWxCaTyqbH9fSS7lnS+I3n
	hswVOX3m7ALSlne/pDf8CfoXek/ExbumEIgicwQVkw8+kXGiD8ipqn7JnVFW8Ac3A7IX
	pitei1FhbRQXW6QyVrWieMvQoDA1BoruejiSZPvbxk3Jh7nRkKuq2Pqydgb4gX22vZkj
	uhLXdZj+GEbwFLNIGoAEmUpvM6C4NJbEezV2lfxFt2RZ+suodMyeSYqKKZs/BMK66qfd
	He3Q==
X-Gm-Message-State: AHQUAua46SNGA2kcwEqoVmoS1L0h4uwOJ3LCxhaeQB0coMyeGLKxYo6U
	hPEmT1Pr+vBW2VBBx4R/+4Qb84hkVJgkFfhbXH8TTwpX
X-Google-Smtp-Source: AHgI3IbtfevK5I6X5RrPMVZZdG829MzjmkbuEeHPaWjGPfPsrQIs1QQHTJPIf1mOvBzRLxax+2p4v79Ubb+QbthCY/o=
X-Received: by 2002:aca:cf57:: with SMTP id f84mr5057886oig.147.1550643838064; 
	Tue, 19 Feb 2019 22:23:58 -0800 (PST)
MIME-Version: 1.0
From: rajshekharsanda <rajashekhar.sanda@gmail.com>
Date: Wed, 20 Feb 2019 11:53:44 +0530
Message-ID: <CADxnESvvJchMN1ax7oKqpyB+cDrpuRcS3vrvx2ZnkpphTHhpsQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: ERROR: sqlite3-3_3.20.0-r0 do_configure: configure failed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: rajashekharsanda@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Feb 2019 06:24:02 -0000
Content-Type: multipart/alternative; boundary="000000000000241bea05824d6777"

--000000000000241bea05824d6777
Content-Type: text/plain; charset="UTF-8"

details are as follows:

bitbake pulsar-image
Loading cache: 100% |############################################| Time:
0:00:00
Loaded 2271 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.36.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "ubuntu-16.04"
TARGET_SYS           = "aarch64-poky-linux"
MACHINE              = "h3ulcb"
DISTRO               = "poky-ivi-systemd"
DISTRO_VERSION       = "14.0.0"
TUNE_FEATURES        = "aarch64 cortexa57-cortexa53"
TARGET_FPU           = ""
SOC_FAMILY           = "rcar-gen3:r8a7795"
meta
meta-poky
meta-yocto-bsp
meta-oe
meta-filesystems
meta-multimedia
meta-rcar-gen3
meta-ivi
meta-ivi-bsp
meta-optee
meta-android
meta-aac             = "<unknown>:<unknown>"

Initialising tasks: 100% |#######################################| Time:
0:00:06
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: sqlite3-3_3.20.0-r0 do_configure: configure failed
ERROR: sqlite3-3_3.20.0-r0 do_configure: Function failed: do_configure (log
file is located at
/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/temp/log.do_configure.28770)
ERROR: Logfile of failure stored in:
/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/temp/log.do_configure.28770
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64',
'common-linux', 'common-glibc', 'aarch64-linux', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64',
'common-linux', 'common-glibc', 'aarch64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_configure
| automake (GNU automake) 1.15.1
| Copyright (C) 2017 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <
http://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.15
| NOTE: Executing ACLOCAL="aclocal
--system-acdir=/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot/usr/share/aclocal/
--automake-acdir=/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot-native/usr/share/aclocal-1.15"
autoreconf --verbose --install --force --exclude=autopoint -I
/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot-native/usr/share/aclocal/
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal
--system-acdir=/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot/usr/share/aclocal/
--automake-acdir=/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot-native/usr/share/aclocal-1.15
-I
/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot-native/usr/share/aclocal/
--force
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: Consider adding 'AC_CONFIG_MACRO_DIRS([m4])' to configure.ac,
| libtoolize: and rerunning libtoolize and aclocal.
| libtoolize: Consider adding '-I m4' to ACLOCAL_AMFLAGS in Makefile.am.
| autoreconf: running:
/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot-native/usr/bin/autoconf
--include=/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot-native/usr/share/aclocal/
--force
| autoreconf: configure.ac: not using Autoheader
| autoreconf: running: automake --add-missing --copy --force-missing
| configure.ac:19: installing './compile'
| configure.ac:17: installing './missing'
| Makefile.am: installing './depcomp'
| autoreconf: running: gnu-configize
| autoreconf: Leaving directory `.'
| NOTE: Running ../sqlite-autoconf-3200000/configure  --build=x86_64-linux
--host=aarch64-poky-linux   --target=aarch64-poky-linux   --prefix=/usr
--exec_prefix=/usr   --bindir=/usr/bin   --sbindir=/usr/sbin
--libexecdir=/usr/libexec   --datadir=/usr/share   --sysconfdir=/etc
--sharedstatedir=/com   --localstatedir=/var   --libdir=/usr/lib
--includedir=/usr/include   --oldincludedir=/usr/include
--infodir=/usr/share/info   --mandir=/usr/share/man
--disable-silent-rules   --disable-dependency-tracking
--with-libtool-sysroot=/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot
    --enable-shared     --enable-threadsafe     --disable-static-shell
 --disable-editline --disable-readline
| configure: loading site script
/home/buildpc/YoctoGenivi14/poky/meta/site/endian-little
| configure: loading site script
/home/buildpc/YoctoGenivi14/poky/meta/site/arm-common
| configure: loading site script
/home/buildpc/YoctoGenivi14/poky/meta/site/arm-64
| configure: loading site script
/home/buildpc/YoctoGenivi14/poky/meta/site/common-linux
| configure: loading site script
/home/buildpc/YoctoGenivi14/poky/meta/site/common-glibc
| configure: loading site script
/home/buildpc/YoctoGenivi14/poky/meta/site/common
| configure: loading site script
/home/buildpc/YoctoGenivi14/meta-openembedded/meta-oe/site/endian-little
| checking for a BSD-compatible install...
/home/buildpc/YoctoGenivi14/poky/build/tmp/hosttools/install -c
| checking whether build environment is sane... yes
| checking for aarch64-poky-linux-strip... aarch64-poky-linux-strip
| checking for a thread-safe mkdir -p...
/home/buildpc/YoctoGenivi14/poky/build/tmp/hosttools/mkdir -p
| checking for gawk... gawk
| checking whether make sets $(MAKE)... yes
| checking whether make supports nested variables... yes
| checking for style of include used by make... GNU
| checking for aarch64-poky-linux-gcc... aarch64-poky-linux-gcc
-march=armv8-a -mtune=cortex-a57.cortex-a53 -fstack-protector-strong
-D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
--sysroot=/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot
| checking whether the C compiler works... no
| configure: error: in
`/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/build':
| configure: error: C compiler cannot create executables
| See `config.log' for more details
| NOTE: The following config.log files may provide further information.
| NOTE:
/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/build/config.log
| ERROR: configure failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/temp/log.do_configure.28770)
ERROR: Task
(/home/buildpc/YoctoGenivi14/poky/meta/recipes-support/sqlite/sqlite3_3.20.0.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4563 tasks of which 4562 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/buildpc/YoctoGenivi14/poky/meta/recipes-support/sqlite/sqlite3_3.20.0.bb:
do_configure
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--000000000000241bea05824d6777
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">details are as follows:<div><br></div><di=
v><div>bitbake pulsar-image</div><div>Loading cache: 100% |################=
############################| Time: 0:00:00</div><div>Loaded 2271 entries f=
rom dependency cache.</div><div>NOTE: Resolving any missing task queue depe=
ndencies</div><div><br></div><div>Build Configuration:</div><div>BB_VERSION=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.36.0&quot;</div><div>B=
UILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&qu=
ot;</div><div>NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;ubuntu-16.04&qu=
ot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
aarch64-poky-linux&quot;</div><div>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;h3ulcb&quot;</div><div>DISTRO=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky-ivi-systemd&quot;</div=
><div>DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;14.0.0&quot;</div>=
<div>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;aarch64 cortexa57-c=
ortexa53&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;&quot;</div><div>SOC_FAMILY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;rcar-gen3:r8a7795&quot;</div><div>meta=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-poky=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-yocto-bsp=C2=A0 =C2=A0 =C2=
=A0 =C2=A0</div><div>meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</div><div>meta-filesystems=C2=A0 =C2=A0 =C2=A0</div><div>meta-mul=
timedia=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-rcar-gen3=C2=A0 =C2=A0 =C2=
=A0 =C2=A0</div><div>meta-ivi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0</div><div>meta-ivi-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta=
-optee=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-android=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-aac=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</di=
v><div><br></div><div>Initialising tasks: 100% |###########################=
############| Time: 0:00:06</div><div>NOTE: Executing SetScene Tasks</div><=
div>NOTE: Executing RunQueue Tasks</div><div>ERROR: sqlite3-3_3.20.0-r0 do_=
configure: configure failed</div><div>ERROR: sqlite3-3_3.20.0-r0 do_configu=
re: Function failed: do_configure (log file is located at /home/buildpc/Yoc=
toGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/temp/=
log.do_configure.28770)</div><div>ERROR: Logfile of failure stored in: /hom=
e/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.=
20.0-r0/temp/log.do_configure.28770</div><div>Log data follows:</div><div>|=
 DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-64&#39;, &#39;arm-com=
mon&#39;, &#39;arm-64&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;,=
 &#39;aarch64-linux&#39;, &#39;common&#39;]</div><div>| DEBUG: Executing sh=
ell function autotools_preconfigure</div><div>| DEBUG: Shell function autot=
ools_preconfigure finished</div><div>| DEBUG: Executing python function aut=
otools_aclocals</div><div>| DEBUG: SITE files [&#39;endian-little&#39;, &#3=
9;bit-64&#39;, &#39;arm-common&#39;, &#39;arm-64&#39;, &#39;common-linux&#3=
9;, &#39;common-glibc&#39;, &#39;aarch64-linux&#39;, &#39;common&#39;]</div=
><div>| DEBUG: Python function autotools_aclocals finished</div><div>| DEBU=
G: Executing shell function do_configure</div><div>| automake (GNU automake=
) 1.15.1</div><div>| Copyright (C) 2017 Free Software Foundation, Inc.</div=
><div>| License GPLv2+: GNU GPL version 2 or later &lt;<a href=3D"http://gn=
u.org/licenses/gpl-2.0.html">http://gnu.org/licenses/gpl-2.0.html</a>&gt;</=
div><div>| This is free software: you are free to change and redistribute i=
t.</div><div>| There is NO WARRANTY, to the extent permitted by law.</div><=
div>|=C2=A0</div><div>| Written by Tom Tromey &lt;<a href=3D"mailto:tromey@=
redhat.com">tromey@redhat.com</a>&gt;</div><div>|=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 and Alexandre Duret-Lutz &lt;<a href=3D"mailto:adl@gnu.org">adl@gnu.org=
</a>&gt;.</div><div>| AUTOV is 1.15</div><div>| NOTE: Executing ACLOCAL=3D&=
quot;aclocal --system-acdir=3D/home/buildpc/YoctoGenivi14/poky/build/tmp/wo=
rk/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot/usr/share/aclocal/=
 --automake-acdir=3D/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64=
-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot-native/usr/share/aclocal-1.1=
5&quot; autoreconf --verbose --install --force --exclude=3Dautopoint -I /ho=
me/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3=
.20.0-r0/recipe-sysroot-native/usr/share/aclocal/</div><div>| autoreconf: E=
ntering directory `.&#39;</div><div>| autoreconf: <a href=3D"http://configu=
re.ac">configure.ac</a>: not using Gettext</div><div>| autoreconf: running:=
 aclocal --system-acdir=3D/home/buildpc/YoctoGenivi14/poky/build/tmp/work/a=
arch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot/usr/share/aclocal/ --a=
utomake-acdir=3D/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-pok=
y-linux/sqlite3/3_3.20.0-r0/recipe-sysroot-native/usr/share/aclocal-1.15 -I=
 /home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3=
/3_3.20.0-r0/recipe-sysroot-native/usr/share/aclocal/ --force</div><div>| a=
utoreconf: <a href=3D"http://configure.ac">configure.ac</a>: tracing</div><=
div>| autoreconf: running: libtoolize --copy --force</div><div>| libtoolize=
: putting auxiliary files in &#39;.&#39;.</div><div>| libtoolize: copying f=
ile &#39;./ltmain.sh&#39;</div><div>| libtoolize: Consider adding &#39;AC_C=
ONFIG_MACRO_DIRS([m4])&#39; to <a href=3D"http://configure.ac">configure.ac=
</a>,</div><div>| libtoolize: and rerunning libtoolize and aclocal.</div><d=
iv>| libtoolize: Consider adding &#39;-I m4&#39; to ACLOCAL_AMFLAGS in Make=
file.am.</div><div>| autoreconf: running: /home/buildpc/YoctoGenivi14/poky/=
build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot-native=
/usr/bin/autoconf --include=3D/home/buildpc/YoctoGenivi14/poky/build/tmp/wo=
rk/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot-native/usr/share/a=
clocal/ --force</div><div>| autoreconf: <a href=3D"http://configure.ac">con=
figure.ac</a>: not using Autoheader</div><div>| autoreconf: running: automa=
ke --add-missing --copy --force-missing</div><div>| <a href=3D"http://confi=
gure.ac:19">configure.ac:19</a>: installing &#39;./compile&#39;</div><div>|=
 <a href=3D"http://configure.ac:17">configure.ac:17</a>: installing &#39;./=
missing&#39;</div><div>| Makefile.am: installing &#39;./depcomp&#39;</div><=
div>| autoreconf: running: gnu-configize</div><div>| autoreconf: Leaving di=
rectory `.&#39;</div><div>| NOTE: Running ../sqlite-autoconf-3200000/config=
ure=C2=A0 --build=3Dx86_64-linux <span style=3D"white-space:pre">	</span>=
=C2=A0 --host=3Daarch64-poky-linux <span style=3D"white-space:pre">		</span=
>=C2=A0 --target=3Daarch64-poky-linux <span style=3D"white-space:pre">		</s=
pan>=C2=A0 --prefix=3D/usr <span style=3D"white-space:pre">		</span>=C2=A0 =
--exec_prefix=3D/usr <span style=3D"white-space:pre">		</span>=C2=A0 --bind=
ir=3D/usr/bin <span style=3D"white-space:pre">	</span>=C2=A0 --sbindir=3D/u=
sr/sbin <span style=3D"white-space:pre">		</span>=C2=A0 --libexecdir=3D/usr=
/libexec <span style=3D"white-space:pre">		</span>=C2=A0 --datadir=3D/usr/s=
hare <span style=3D"white-space:pre">		</span>=C2=A0 --sysconfdir=3D/etc <s=
pan style=3D"white-space:pre">		</span>=C2=A0 --sharedstatedir=3D/com=C2=A0=
 =C2=A0--localstatedir=3D/var <span style=3D"white-space:pre">		</span>=C2=
=A0 --libdir=3D/usr/lib <span style=3D"white-space:pre">		</span>=C2=A0 --i=
ncludedir=3D/usr/include <span style=3D"white-space:pre">		</span>=C2=A0 --=
oldincludedir=3D/usr/include <span style=3D"white-space:pre">		</span>=C2=
=A0 --infodir=3D/usr/share/info <span style=3D"white-space:pre">		</span>=
=C2=A0 --mandir=3D/usr/share/man <span style=3D"white-space:pre">		</span>=
=C2=A0 --disable-silent-rules <span style=3D"white-space:pre">		</span>=C2=
=A0 --disable-dependency-tracking <span style=3D"white-space:pre">		</span>=
=C2=A0 --with-libtool-sysroot=3D/home/buildpc/YoctoGenivi14/poky/build/tmp/=
work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot=C2=A0 =C2=A0 =C2=
=A0 --enable-shared=C2=A0 =C2=A0 =C2=A0--enable-threadsafe=C2=A0 =C2=A0 =C2=
=A0--disable-static-shell=C2=A0 =C2=A0--disable-editline --disable-readline=
</div><div>| configure: loading site script /home/buildpc/YoctoGenivi14/pok=
y/meta/site/endian-little</div><div>| configure: loading site script /home/=
buildpc/YoctoGenivi14/poky/meta/site/arm-common</div><div>| configure: load=
ing site script /home/buildpc/YoctoGenivi14/poky/meta/site/arm-64</div><div=
>| configure: loading site script /home/buildpc/YoctoGenivi14/poky/meta/sit=
e/common-linux</div><div>| configure: loading site script /home/buildpc/Yoc=
toGenivi14/poky/meta/site/common-glibc</div><div>| configure: loading site =
script /home/buildpc/YoctoGenivi14/poky/meta/site/common</div><div>| config=
ure: loading site script /home/buildpc/YoctoGenivi14/meta-openembedded/meta=
-oe/site/endian-little</div><div>| checking for a BSD-compatible install...=
 /home/buildpc/YoctoGenivi14/poky/build/tmp/hosttools/install -c</div><div>=
| checking whether build environment is sane... yes</div><div>| checking fo=
r aarch64-poky-linux-strip... aarch64-poky-linux-strip</div><div>| checking=
 for a thread-safe mkdir -p... /home/buildpc/YoctoGenivi14/poky/build/tmp/h=
osttools/mkdir -p</div><div>| checking for gawk... gawk</div><div>| checkin=
g whether make sets $(MAKE)... yes</div><div>| checking whether make suppor=
ts nested variables... yes</div><div>| checking for style of include used b=
y make... GNU</div><div>| checking for aarch64-poky-linux-gcc... aarch64-po=
ky-linux-gcc=C2=A0 -march=3Darmv8-a -mtune=3Dcortex-a57.cortex-a53 -fstack-=
protector-strong=C2=A0 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -We=
rror=3Dformat-security --sysroot=3D/home/buildpc/YoctoGenivi14/poky/build/t=
mp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/recipe-sysroot</div><div>| c=
hecking whether the C compiler works... no</div><div>| configure: error: in=
 `/home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite=
3/3_3.20.0-r0/build&#39;:</div><div>| configure: error: C compiler cannot c=
reate executables</div><div>| See `config.log&#39; for more details</div><d=
iv>| NOTE: The following config.log files may provide further information.<=
/div><div>| NOTE: /home/buildpc/YoctoGenivi14/poky/build/tmp/work/aarch64-p=
oky-linux/sqlite3/3_3.20.0-r0/build/config.log</div><div>| ERROR: configure=
 failed</div><div>| WARNING: exit code 1 from a shell command.</div><div>| =
ERROR: Function failed: do_configure (log file is located at /home/buildpc/=
YoctoGenivi14/poky/build/tmp/work/aarch64-poky-linux/sqlite3/3_3.20.0-r0/te=
mp/log.do_configure.28770)</div><div>ERROR: Task (/home/buildpc/YoctoGenivi=
14/poky/meta/recipes-support/sqlite/sqlite3_3.20.0.bb:do_configure) failed =
with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempted 4563 ta=
sks of which 4562 didn&#39;t need to be rerun and 1 failed.</div><div><br><=
/div><div>Summary: 1 task failed:</div><div>=C2=A0 /home/buildpc/YoctoGeniv=
i14/poky/meta/recipes-support/sqlite/sqlite3_3.20.0.bb:do_configure</div><d=
iv>Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de.</div></div><div><br></div></div></div>

--000000000000241bea05824d6777--

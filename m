Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A465AE00B47; Wed, 10 May 2017 04:47:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.133 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.133 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63EFEE00B3E
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 04:47:44 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue005
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0LaYSx-1dtG2S15RP-00mK4g
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 13:47:43 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Wed, 10 May 2017 12:48:57 +0100
Organization: LN Systems Limited
Message-ID: <012f01d2c983$68bea8f0$3a3bfad0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdLJgc1iJBrBNkLFQZOQLLuUQ3JHhQ==
X-Provags-ID: V03:K0:eUC26UA38xKN4PEd1HOJ0BZjUUOkE5zbpN2upwDMy6ykrKc2e2N
	4hWrV+xn7UxJGXX3DymVN1R94ID0LprzHCFZXR1nUfp/E8K4C7+DUWpi/yqkxnX1U8/3GSz
	tg3OzVPUA/BQrX+HcwN6UNx7kePLsnON1uDuyv+kCnpy/mC3Y+XUnCUdUbJFEwt+mcJN8uL
	2RVg8t4KqusVI+GYKLjqA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:X6t8i5X0AuM=:JwXSooeBDLDPMco9LGnxQT
	bfRrZ0/BCCtqNRzqd425VlwC8rLSgKwqMnDlMRNVUqi/4KeFPcckkxCw/rSMnE4ngqUY7wK9u
	wfiOzxDVKCadnW8LWjYrwA0qKx4CaZzxgIh+z2IIz2pth39xTKBcOGx1SdCl3ecOZuMCQqS+E
	w3HR/nJMwYn6zk8+rTCK47JD207Jc4qm7pcsim3TVNwQ35DfdRxZTWRHBKMSs0UM9DnZPjXG2
	Ql1ODMIaeqhhkOuYl4TxNdNzWnhuz3/ShcvX0Coc9gaUqwyhEy0tgFUyU3jNDxi2HZjFtzh/a
	TKuHonTlNxC+RZubjraXa3CYIYsuQJ5MbRbM9OzVWfqsbU5Wt80ardHq9HAWPVBPrkIRQKRLt
	y0Fk4/pPySgZJP3t9FLExVh5KdWGaA3hqreKnfu4orCEcyhkrufbvBG7ygJnQK+1ydggM0ZbB
	KcG3W7/WUSCtTnJLbsP97HlAYWsm7UokRw8sFTS6cXpXk9akUFHeW6VCbDP9DG2AetkYwjDlw
	D2GjjEp3/AFkef9yZDb/NJAKIf6MXcyypQXjp/agoe0bzGbSsotoN9dQ5srQbqoFeLbc7oy8W
	rgakSbC0Av4R9wfQRSGYmM46VhyOmvhYije7t37QFrfhzv7n5M01d2BPv255mMMZXlP2O8ETy
	OE+w74YLzp5Qz9IZz3YqUZONUcAikV1dYt7cqcJ41aa32KM+0ZWn2lc6LWPJe3qQv2So6YX1M
	EXi62pHV880ybq48
Subject: Configure errors in my recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 May 2017 11:47:46 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

I'm trying to put together a recipe for a package (NetworkManager-pptp), but
hitting some peculiar errors in the configure.
I'm building from tarball, and the recipe currently includes
inherit autotools-brokensep gettext
  and
DEPENDS = "intltool-native gettext-native"

I'm not sure what it means by "your autoconf macro directory", but I *can*
see the 'missing' files being put into
networkmanager-pptp/1.2-r0/NetworkManager-pptp-1.2.4/aclocal-copy/

Wondered if anyone can spot what I might be missing?  (Perhaps from
EXTRA_OECONF?)

The log is:

Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_copy_aclocals
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Python function autotools_copy_aclocals finished
| DEBUG: Executing shell function do_configure
| automake (GNU automake) 1.15
| Copyright (C) 2014 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later
<http://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1
| NOTE: Executing glib-gettextize --force --copy
| Copying file po/Makefile.in.in
|
| Please add the files
|   codeset.m4 gettext.m4 glibc21.m4 iconv.m4 isc-posix.m4 lcmessage.m4
|   progtest.m4
| from the
/home/colin/100051-trunk/fsl-community-bsp/build/tmp/sysroots/x86_64-linux/u
sr/share/aclocal directory to your autoconf macro directory
| or directly to your aclocal.m4 file.
| You will also need config.guess and config.sub, which you can get from
| ftp://ftp.gnu.org/pub/gnu/config/.
|
| NOTE: Executing intltoolize --copy --force --automake
| NOTE: Executing ACLOCAL="aclocal
--system-acdir=/home/colin/100051-trunk/fsl-community-bsp/build/tmp/work/cor
texa9hf-neon-poky-linux-gnueabi/networkmanager-pptp/1.2-r0/NetworkManager-pp
tp-1.2.4/aclocal-copy/" autoreconf --verbose --install --force
--exclude=autopoint -I
/home/colin/100051-trunk/fsl-community-bsp/build/tmp/work/cortexa9hf-neon-po
ky-linux-gnueabi/networkmanager-pptp/1.2-r0/NetworkManager-pptp-1.2.4/m4/
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal
--system-acdir=/home/colin/100051-trunk/fsl-community-bsp/build/tmp/work/cor
texa9hf-neon-poky-linux-gnueabi/networkmanager-pptp/1.2-r0/NetworkManager-pp
tp-1.2.4/aclocal-copy/ -I
/home/colin/100051-trunk/fsl-community-bsp/build/tmp/work/cortexa9hf-neon-po
ky-linux-gnueabi/networkmanager-pptp/1.2-r0/NetworkManager-pptp-1.2.4/m4/ -I
/home/colin/100051-trunk/fsl-community-bsp/build/tmp/work/cortexa9hf-neon-po
ky-linux-gnueabi/networkmanager-pptp/1.2-r0/NetworkManager-pptp-1.2.4/m4/
--force -I m4
| configure.ac:88: warning: macro 'AM_GLIB_GNU_GETTEXT' not found in library
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
| libtoolize: copying file 'm4/libtool.m4'
| libtoolize: copying file 'm4/ltoptions.m4'
| libtoolize: copying file 'm4/ltsugar.m4'
| libtoolize: copying file 'm4/ltversion.m4'
| libtoolize: copying file 'm4/lt~obsolete.m4'
| configure.ac:88: warning: macro 'AM_GLIB_GNU_GETTEXT' not found in library
| autoreconf: running:
/home/colin/100051-trunk/fsl-community-bsp/build/tmp/sysroots/x86_64-linux/u
sr/bin/autoconf
--include=/home/colin/100051-trunk/fsl-community-bsp/build/tmp/work/cortexa9
hf-neon-poky-linux-gnueabi/networkmanager-pptp/1.2-r0/NetworkManager-pptp-1.
2.4/m4/ --force
| configure.ac:88: error: possibly undefined macro: AM_GLIB_GNU_GETTEXT
|       If this token and others are legitimate, please use
m4_pattern_allow.
|       See the Autoconf documentation.
| autoreconf:
/home/colin/100051-trunk/fsl-community-bsp/build/tmp/sysroots/x86_64-linux/u
sr/bin/autoconf failed with exit status: 1
| ERROR: autoreconf execution failed.
| ERROR: Function failed: do_configure (log file is located at
/home/colin/100051-trunk/fsl-community-bsp/build/tmp/work/cortexa9hf-neon-po
ky-linux-gnueabi/networkmanager-pptp/1.2-r0/temp/log.do_configure.3514)
ERROR: Task 5
(/home/colin/100051-trunk/fsl-community-bsp/../meta-ln/recipes-connectivity/
networkmanager-pptp/networkmanager-pptp_1.2.bb, do_configure) failed with
exit code '1'
NOTE: Tasks Summary: Attempted 436 tasks of which 434 didn't need to be
rerun and 1 failed.
No currently running tasks (436 of 444)

Summary: 1 task failed:
 
/home/colin/100051-trunk/fsl-community-bsp/../meta-ln/recipes-connectivity/n
etworkmanager-pptp/networkmanager-pptp_1.2.bb, do_configure
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.






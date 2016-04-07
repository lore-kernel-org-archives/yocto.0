Return-Path: <bader@gctnet.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1534E00C28; Thu,  7 Apr 2016 06:42:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.72.192.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 763 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Apr 2016 06:42:42 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22659E006D3
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 06:42:42 -0700 (PDT)
Received: from [192.168.169.21] ([79.231.123.40]) by mrelayeu.kundenserver.de
	(mreue104) with ESMTPSA (Nemesis) id 0LsywU-1bpS0s3RyE-012c3p for
	<yocto@yoctoproject.org>; Thu, 07 Apr 2016 15:29:57 +0200
To: yocto@yoctoproject.org
From: Hans-Georg Bader <bader@gctnet.de>
Organization: =?UTF-8?Q?H.-G._Bader_Ingenieurb=c3=bcro?=
Message-ID: <570660C6.9020601@gctnet.de>
Date: Thu, 7 Apr 2016 15:29:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.2
MIME-Version: 1.0
X-Provags-ID: V03:K0:Xt0Zg3voh/PS67E2v5c2GLjG/bMvsRCeNbrQsj3p6orwOp9mJ89
	lGYIgDMqAa7WP5MTcx7wnHrzwJ0ZJZFABvXpLMFfxMPhzKHAcKlZTXy319qPbkMSfCagy0A
	3UA4OThuZl1fyUndMH82DACmzRSnE9/hbzx8LlGHBFYvLHt2TJsTyYI/6QwskLgMV3Tr8ve
	rQg4I39DFsyJjuMdm1qTA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:E+faMUWuI/c=:yvUA/52u951XbCPg3oHnIH
	3PUpdDJMBCOuUR6D7m0E6FSCtZST+k4jPqZIeToRZ6lJ3bFqc42cCOgxs2RCjGeX6HGTJ6wVJ
	csGL96VSBvs6eWnFGYMEwXJBNHp1/NLqu5kYEbF4Kltl2Bv4Do8WGTld5vhSny7QTC9JMrs3e
	yUrdLmBvNk0Z7CXf+7hgv3tur1Hvwc+NcqXW8vnzhUQnuGzmt4z5A/4vSv5ggHLHf+0TnLlnG
	qvj09/75D8ZGDUFDzimO7rwFMaf7QPS3PPI1YyS12cPpYn/Yp/AaJ7ihEfpwASOPU+n52755D
	tsl07zG/7FtbYwRU4H6p597YedGZEikt4KRlLwlrpBtYJFbwmEfB+QAus5TNxSOXtS8EM1cJG
	CPqm29IA+n45s6lLUtbkrpAvcMpAj8hfxdUkprCd6iu+0WKaM911zqnv2cn6NnDgt3P2LwCS1
	I1tsgyCQem6ebNwme2vbCS8AuWD2TETmZUGl7xMp9Vo0onXOKDoEkHcgmVBPfBOslid7RT2Ia
	HA1rfnrPKMlTe0TeU1sTVpDmq2N+XSlkrdNHBX5BGJw/N2om6LiPeG1gA8oC6AGKp371SPv70
	T0WX44Xzx6HoMIB37Ih651hMKKa421mTT/RlQ0eZiSWL+orTdcoRjZOz3Q8lhsq5e72ly2LGu
	ZmTDeHKzeRVlaJ0AJUmzKp5JqIHf/8cHzEKQQp/as0BFVdzH/U5UHDNVHEa/RK2mzP6s=
Subject: Error including PHP
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: bader@gctnet.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Apr 2016 13:42:46 -0000
X-Groupsio-MsgNum: 29329
Content-Type: multipart/mixed; boundary="------------070506010707090007090603"

--------------070506010707090007090603
Content-Type: multipart/alternative;
 boundary="------------020802010501080900060104"

--------------020802010501080900060104
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Hello everyone,
i am not sure if i am in the correct list, but
maybe someone can help me with my problem:

I wanted to include php in my image.
But i got an error yet in the configure-task.
Can anyone tell me what went wrong here ?
Thanks in advance
Hans-Georg

Here is the output:
bader@ubuntu64:~/oe-core/build$ bitbake -b php_5.4.36
WARNING: Buildfile specified, dependencies will not be handled. If this 
is not what you want, do not use -b / --buildfile.

Build Configuration:
BB_VERSION        = "1.24.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-angstrom-linux-gnueabi"
MACHINE           = "apalis-imx6"
DISTRO            = "angstrom"
DISTRO_VERSION    = "v2014.12"
TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard"
TARGET_FPU        = "vfp-neon"
meta-angstrom     = "(nobranch):9466ed2bafe2fd66324aa79b5d6198bfc2354b98"
meta-toradex      = 
"(detachedfromba0a557):ba0a55762605c6707310ee56f8ba21959ecadfd7"
meta-linaro-toolchain = 
"(nobranch):59655ebd6e10d9f66664db4c2d63c7fac606779d"
meta-oe
meta-efl
meta-gpe
meta-gnome
meta-xfce
meta-initramfs
meta-systemd
meta-networking
meta-multimedia
meta-python
meta-webserver    = "(nobranch):5b6f39ce325d490fc382d5d59c5b8b9d5fa38b38"
meta-lxde         = "(nobranch):2bc2d0940b54858d71ea2c1b6aa6b27bc9bab506"
meta-browser      = "(nobranch):2bca1fd58e8dc827469627e17e9f0d8e711fcc5f"
meta-fsl-arm      = "(nobranch):db1571f40c375a398a8cdbb42de4c4f272ab0cd1"
meta-fsl-arm-extra = "(nobranch):9700f14f3efcab8de9a1b60a3e164b8df39897af"
meta-fsl-demos    = "(nobranch):b9103df7dfdfdf2c4b066e5d2228f168e0c25e46"
meta              = "(nobranch):96270e79a70960289856cf424c9e4c1894acb18c"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_configure (log file is located at 
/home/bader/oe-core/build/out-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/php/5.4.36-r0/temp/log.do_configure.59692)
ERROR: Logfile of failure stored in: 
/home/bader/oe-core/build/out-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/php/5.4.36-r0/temp/log.do_configure.59692
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_copy_aclocals
| DEBUG: Python function autotools_copy_aclocals finished
| DEBUG: Executing shell function do_configure
| automake (GNU automake) 1.14.1
| Copyright (C) 2013 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later 
<http://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.14
| NOTE: Executing ACLOCAL="aclocal 
--system-acdir=/home/bader/oe-core/build/out-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/php/5.4.36-r0/build/aclocal-copy/ 
--automake-acdir=/home/bader/oe-core/build/out-glibc/sysroots/x86_64-linux/usr/share/aclocal-1.14" 
autoreconf --verbose --install --force --exclude=autopoint
| autoreconf: Entering directory `.'
| autoreconf: configure.in: not using Gettext
| autoreconf: running: aclocal 
--system-acdir=/home/bader/oe-core/build/out-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/php/5.4.36-r0/build/aclocal-copy/ 
--automake-acdir=/home/bader/oe-core/build/out-glibc/sysroots/x86_64-linux/usr/share/aclocal-1.14 
--force
| aclocal: warning: autoconf input should be named 'configure.ac', not 
'configure.in'
| configure.in:15: warning: LT_AC_PROG_SED is m4_require'd but not 
m4_defun'd
| acinclude.m4:2641: PHP_CONFIG_NICE is expanded from...
| configure.in:15: the top level
| autoreconf: configure.in: tracing
| configure.in:15: warning: LT_AC_PROG_SED is m4_require'd but not 
m4_defun'd
| acinclude.m4:2641: PHP_CONFIG_NICE is expanded from...
| configure.in:15: the top level
| autoreconf: configure.in: not using Libtool
| autoreconf: running: 
/home/bader/oe-core/build/out-glibc/sysroots/x86_64-linux/usr/bin/autoconf 
--force
| configure.in:15: warning: LT_AC_PROG_SED is m4_require'd but not 
m4_defun'd
| acinclude.m4:2641: PHP_CONFIG_NICE is expanded from...
| configure.in:15: the top level
| configure.in:2: error: possibly undefined macro: dnl
|       If this token and others are legitimate, please use 
m4_pattern_allow.
|       See the Autoconf documentation.
| configure.in:163: error: possibly undefined macro: AC_MSG_ERROR
| configure.in:261: error: possibly undefined macro: AC_MSG_RESULT
| configure.in:458: error: possibly undefined macro: AC_DEFINE
| configure.in:595: error: possibly undefined macro: AC_CACHE_CHECK
| configure.in:1393: error: possibly undefined macro: AC_PROG_LIBTOOL
| configure:3228: error: possibly undefined macro: LT_AC_PROG_SED
| configure:100249: error: possibly undefined macro: _LT_AC_TRY_DLOPEN_SELF
| autoreconf: 
/home/bader/oe-core/build/out-glibc/sysroots/x86_64-linux/usr/bin/autoconf 
failed with exit status: 1
| ERROR: autoreconf execution failed.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at 
/home/bader/oe-core/build/out-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/php/5.4.36-r0/temp/log.do_configure.59692)
ERROR: Task 5 
(/home/bader/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-devtools/php/php_5.4.36.bb, 
do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5 tasks of which 0 didn't need to be 
rerun and 1 failed.
NOTE: Writing buildhistory
No currently running tasks (5 of 13)

Summary: 1 task failed:
/home/bader/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-devtools/php/php_5.4.36.bb, 
do_configure
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
bader@ubuntu64:~/oe-core/build$


--------------020802010501080900060104
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    Hello everyone,<br>
    i am not sure if i am in the correct list, but<br>
    maybe someone can help me with my problem:<br>
    <br>
    I wanted to include php in my image.<br>
    But i got an error yet in the configure-task.<br>
    Can anyone tell me what went wrong here ?<br>
    Thanks in advance<br>
    Hans-Georg<br>
    <br>
    Here is the output:<br>
    <small><small>bader@ubuntu64:~/oe-core/build$ bitbake -b php_5.4.36<br>
        WARNING: Buildfile specified, dependencies will not be handled.
        If this is not what you want, do not use -b / --buildfile.<br>
        <br>
        Build Configuration:<br>
        BB_VERSION        = "1.24.0"<br>
        BUILD_SYS         = "x86_64-linux"<br>
        NATIVELSBSTRING   = "Ubuntu-14.04"<br>
        TARGET_SYS        = "arm-angstrom-linux-gnueabi"<br>
        MACHINE           = "apalis-imx6"<br>
        DISTRO            = "angstrom"<br>
        DISTRO_VERSION    = "v2014.12"<br>
        TUNE_FEATURES     = "arm armv7a vfp thumb neon
        callconvention-hard"<br>
        TARGET_FPU        = "vfp-neon"<br>
        meta-angstrom     =
        "(nobranch):9466ed2bafe2fd66324aa79b5d6198bfc2354b98"<br>
        meta-toradex      =
        "(detachedfromba0a557):ba0a55762605c6707310ee56f8ba21959ecadfd7"<br>
        meta-linaro-toolchain =
        "(nobranch):59655ebd6e10d9f66664db4c2d63c7fac606779d"<br>
        meta-oe           <br>
        meta-efl          <br>
        meta-gpe          <br>
        meta-gnome        <br>
        meta-xfce         <br>
        meta-initramfs    <br>
        meta-systemd      <br>
        meta-networking   <br>
        meta-multimedia   <br>
        meta-python       <br>
        meta-webserver    =
        "(nobranch):5b6f39ce325d490fc382d5d59c5b8b9d5fa38b38"<br>
        meta-lxde         =
        "(nobranch):2bc2d0940b54858d71ea2c1b6aa6b27bc9bab506"<br>
        meta-browser      =
        "(nobranch):2bca1fd58e8dc827469627e17e9f0d8e711fcc5f"<br>
        meta-fsl-arm      =
        "(nobranch):db1571f40c375a398a8cdbb42de4c4f272ab0cd1"<br>
        meta-fsl-arm-extra =
        "(nobranch):9700f14f3efcab8de9a1b60a3e164b8df39897af"<br>
        meta-fsl-demos    =
        "(nobranch):b9103df7dfdfdf2c4b066e5d2228f168e0c25e46"<br>
        meta              =
        "(nobranch):96270e79a70960289856cf424c9e4c1894acb18c"<br>
        <br>
        NOTE: Preparing runqueue<br>
        NOTE: Executing SetScene Tasks<br>
        NOTE: Executing RunQueue Tasks<br>
        ERROR: Function failed: do_configure (log file is located at
/home/bader/oe-core/build/out-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/php/5.4.36-r0/temp/log.do_configure.59692)<br>
        ERROR: Logfile of failure stored in:
/home/bader/oe-core/build/out-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/php/5.4.36-r0/temp/log.do_configure.59692<br>
        Log data follows:<br>
        | DEBUG: Executing python function sysroot_cleansstate<br>
        | DEBUG: Python function sysroot_cleansstate finished<br>
        | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
        'arm-32', 'common-linux', 'common-glibc', 'arm-linux',
        'arm-linux-gnueabi', 'common']<br>
        | DEBUG: Executing shell function autotools_preconfigure<br>
        | DEBUG: Shell function autotools_preconfigure finished<br>
        | DEBUG: Executing python function autotools_copy_aclocals<br>
        | DEBUG: Python function autotools_copy_aclocals finished<br>
        | DEBUG: Executing shell function do_configure<br>
        | automake (GNU automake) 1.14.1<br>
        | Copyright (C) 2013 Free Software Foundation, Inc.<br>
        | License GPLv2+: GNU GPL version 2 or later
        <a class="moz-txt-link-rfc2396E" href="http://gnu.org/licenses/gpl-2.0.html">&lt;http://gnu.org/licenses/gpl-2.0.html&gt;</a><br>
        | This is free software: you are free to change and redistribute
        it.<br>
        | There is NO WARRANTY, to the extent permitted by law.<br>
        | <br>
        | Written by Tom Tromey <a class="moz-txt-link-rfc2396E" href="mailto:tromey@redhat.com">&lt;tromey@redhat.com&gt;</a><br>
        |        and Alexandre Duret-Lutz <a class="moz-txt-link-rfc2396E" href="mailto:adl@gnu.org">&lt;adl@gnu.org&gt;</a>.<br>
        | AUTOV is 1.14<br>
        | NOTE: Executing ACLOCAL="aclocal
        --system-acdir=/home/bader/oe-core/build/out-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/php/5.4.36-r0/build/aclocal-copy/
        --automake-acdir=/home/bader/oe-core/build/out-glibc/sysroots/x86_64-linux/usr/share/aclocal-1.14"
        autoreconf --verbose --install --force --exclude=autopoint<br>
        | autoreconf: Entering directory `.'<br>
        | autoreconf: configure.in: not using Gettext<br>
        | autoreconf: running: aclocal
        --system-acdir=/home/bader/oe-core/build/out-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/php/5.4.36-r0/build/aclocal-copy/
        --automake-acdir=/home/bader/oe-core/build/out-glibc/sysroots/x86_64-linux/usr/share/aclocal-1.14
        --force<br>
        | aclocal: warning: autoconf input should be named
        'configure.ac', not 'configure.in'<br>
        | configure.in:15: warning: LT_AC_PROG_SED is m4_require'd but
        not m4_defun'd<br>
        | acinclude.m4:2641: PHP_CONFIG_NICE is expanded from...<br>
        | configure.in:15: the top level<br>
        | autoreconf: configure.in: tracing<br>
        | configure.in:15: warning: LT_AC_PROG_SED is m4_require'd but
        not m4_defun'd<br>
        | acinclude.m4:2641: PHP_CONFIG_NICE is expanded from...<br>
        | configure.in:15: the top level<br>
        | autoreconf: configure.in: not using Libtool<br>
        | autoreconf: running:
        /home/bader/oe-core/build/out-glibc/sysroots/x86_64-linux/usr/bin/autoconf
        --force<br>
        | configure.in:15: warning: LT_AC_PROG_SED is m4_require'd but
        not m4_defun'd<br>
        | acinclude.m4:2641: PHP_CONFIG_NICE is expanded from...<br>
        | configure.in:15: the top level<br>
        | configure.in:2: error: possibly undefined macro: dnl<br>
        |       If this token and others are legitimate, please use
        m4_pattern_allow.<br>
        |       See the Autoconf documentation.<br>
        | configure.in:163: error: possibly undefined macro:
        AC_MSG_ERROR<br>
        | configure.in:261: error: possibly undefined macro:
        AC_MSG_RESULT<br>
        | configure.in:458: error: possibly undefined macro: AC_DEFINE<br>
        | configure.in:595: error: possibly undefined macro:
        AC_CACHE_CHECK<br>
        | configure.in:1393: error: possibly undefined macro:
        AC_PROG_LIBTOOL<br>
        | configure:3228: error: possibly undefined macro:
        LT_AC_PROG_SED<br>
        | configure:100249: error: possibly undefined macro:
        _LT_AC_TRY_DLOPEN_SELF<br>
        | autoreconf:
        /home/bader/oe-core/build/out-glibc/sysroots/x86_64-linux/usr/bin/autoconf
        failed with exit status: 1<br>
        | ERROR: autoreconf execution failed.<br>
        | WARNING: exit code 1 from a shell command.<br>
        | ERROR: Function failed: do_configure (log file is located at
/home/bader/oe-core/build/out-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/php/5.4.36-r0/temp/log.do_configure.59692)<br>
        ERROR: Task 5
        (/home/bader/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-devtools/php/php_5.4.36.bb,
        do_configure) failed with exit code '1'<br>
        NOTE: Tasks Summary: Attempted 5 tasks of which 0 didn't need to
        be rerun and 1 failed.<br>
        NOTE: Writing buildhistory<br>
        No currently running tasks (5 of 13)<br>
        <br>
        Summary: 1 task failed:<br>
         
        /home/bader/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-devtools/php/php_5.4.36.bb,
        do_configure<br>
        Summary: There was 1 WARNING message shown.<br>
        Summary: There was 1 ERROR message shown, returning a non-zero
        exit code.<br>
        bader@ubuntu64:~/oe-core/build$ </small></small><br>
    <br>
  </body>
</html>

--------------020802010501080900060104--

--------------070506010707090007090603
Content-Type: text/x-vcard; charset=utf-8;
 name="bader.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="bader.vcf"

begin:vcard
fn:Hans-Georg Bader
n:Bader;Hans-Georg
org;quoted-printable:Ingenieurb=C3=BCro Hans-Georg Bader
adr;dom:;;Duttentalstr 59/1;Tuttlingen;BW;78532
email;internet:bader@gctnet.de
tel;work:0 74 61 / 96 94 02
version:2.1
end:vcard


--------------070506010707090007090603--

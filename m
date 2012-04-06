Return-Path: <ashishpandey@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [58.251.152.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B19E013A5
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 06:14:36 -0700 (PDT)
Received: from huawei.com (szxga05-in [172.24.2.49])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M2200DFI7C9QP@szxga05-in.huawei.com> for
	yocto@yoctoproject.org; Fri, 06 Apr 2012 21:12:10 +0800 (CST)
Received: from szxrg02-dlp.huawei.com ([172.24.2.119])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M2200GK17BT37@szxga05-in.huawei.com> for
	yocto@yoctoproject.org; Fri, 06 Apr 2012 21:12:09 +0800 (CST)
Received: from szxeml202-edg.china.huawei.com ([172.24.2.119])
	by szxrg02-dlp.huawei.com (MOS 4.1.9-GA)	with ESMTP id AIF55731; Fri,
	06 Apr 2012 21:12:09 +0800
Received: from SZXEML422-HUB.china.huawei.com (10.82.67.161)
	by szxeml202-edg.china.huawei.com (172.24.2.42) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Fri, 06 Apr 2012 21:11:56 +0800
Received: from SZXEML532-MBX.china.huawei.com ([fe80::79c7:7b0b:cec1:322c])
	by szxeml422-hub.china.huawei.com ([10.82.67.161])
	with mapi id 14.01.0323.003; Fri, 06 Apr 2012 21:12:04 +0800
Date: Fri, 06 Apr 2012 13:12:03 +0000
From: Ashish Pandey <ashishpandey@huawei.com>
X-Originating-IP: [10.18.96.98]
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-id: <F3906846C0EDD246B5CF75E8EDA3C47E138A7864@szxeml532-mbx.china.huawei.com>
MIME-version: 1.0
Accept-Language: en-IN, zh-CN, en-US
Thread-topic: [Yocto] Build Failure in beecrypt-4.2.1-r1 package with
	poky-1.2_M4.rc2 on Open Suse 12.1
Thread-index: Ac0T9beqxV1jVHdTSNuM2m6FpjBb1g==
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-CFilter-Loop: Reflected
Subject: Build Failure in beecrypt-4.2.1-r1 package with poky-1.2_M4.rc2 on Open Suse 12.1
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
X-List-Received-Date: Fri, 06 Apr 2012 13:14:43 -0000
Content-type: multipart/alternative;
	boundary="Boundary_(ID_HCQB4kpXn2YUWyOAqH/gFw)"
Content-language: en-IN

--Boundary_(ID_HCQB4kpXn2YUWyOAqH/gFw)
Content-type: text/plain; charset=iso-8859-1
Content-transfer-encoding: 7BIT

Hi All ,

   I was trying to build "poky-1.2_M4.rc2" with "bitbake core-image-lsb-sdk" option.

I have got build error in the beecrypt-4.2.1-r1 Package. My build machine is Open Suse 12.1 and following is the configuration.

yocto@linux-461v:~/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean> uname -a
Linux linux-461v 3.1.0-1.2-desktop #1 SMP PREEMPT Thu Nov 3 14:45:45 UTC 2011 (187dde0) i686 i686 i386 GNU/Linux

Please verify this error , Is this a problem with build machine or there is some problem with new release.
Kindly let me know if there is any data missed here. Please confirm the issue.



Error Log :


NOTE: Running task 3811 of 5184 (ID: 1614, /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/meta/recipes-support/beecrypt/beecrypt_4.2.1.bb, do_compile)
NOTE: package beecrypt-4.2.1-r1: task do_compile: Started
ERROR: Function failed: do_compile (see /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/temp/log.do_compile.27618 for further information)
ERROR: Logfile of failure stored in: /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/temp/log.do_compile.27618
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 'common-linux', 'common-glibc', 'i586-linux', 'common']
| NOTE: make -j 6
| make  all-recursive
| make[1]: Entering directory `/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/beecrypt-4.2.1'
| Making all in .
| make[2]: Entering directory `/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/beecrypt-4.2.1'
| ./i586-poky-linux-libtool --tag=CC   --mode=compile i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o aes.lo aes.c
| ./i586-poky-linux-libtool --tag=CC   --mode=compile i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o base64.lo base64.c
| ./i586-poky-linux-libtool --tag=CC   --mode=compile i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o beecrypt.lo beecrypt.c
| ./i586-poky-linux-libtool --tag=CC   --mode=compile i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o blockmode.lo blockmode.c
| ./i586-poky-linux-libtool --tag=CC   --mode=compile i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o blockpad.lo blockpad.c
| ./i586-poky-linux-libtool --tag=CC   --mode=compile i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o blowfish.lo blowfish.c
| i586-poky-linux-libtool: compile:  i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c base64.c  -fPIC -DPIC -o .libs/base64.o
| i586-poky-linux-libtool: compile:  i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c beecrypt.c  -fPIC -DPIC -o .libs/beecrypt.o
| i586-poky-linux-libtool: compile:  i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c blowfish.c  -fPIC -DPIC -o .libs/blowfish.o
| i586-poky-linux-libtool: compile:  i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c blockmode.c  -fPIC -DPIC -o .libs/blockmode.o
| i586-poky-linux-libtool: compile:  i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c aes.c  -fPIC -DPIC -o .libs/aes.o
| i586-poky-linux-libtool: compile:  i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c blockpad.c  -fPIC -DPIC -o .libs/blockpad.o
| In file included from ./include/beecrypt/beecrypt.h:33:0,
|                  from ./include/beecERROR: Function failed: do_compile (see /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/temp/log.do_compile.27618 for further information)
| rypt/blowfish.h:37,
|                  from blowfish.c:32:
| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory
| compilation terminated.
| In file included from ./include/beecrypt/beecrypt.h:33:0,
|                  from ./include/beecrypt/aes.h:29,
|                  from aes.c:40:
| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory
| compilation terminated.
| In file included from ./include/beecrypt/beecrypt.h:33:0,
|                  from ./include/beecrypt/blockmode.h:30,
|                  from blockmode.c:32:
| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory
| compilation terminated.
| make[2]: *** [blowfish.lo] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[2]: *** [aes.lo] Error 1
| make[2]: *** [blockmode.lo] Error 1
| In file included from ./include/beecrypt/beecrypt.h:33:0,
|                  from beecrypt.c:31:
| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory
| compilation terminated.
| make[2]: *** [beecrypt.lo] Error 1
| In file included from ./include/beecrypt/beecrypt.h:33:0,
|                  from ./include/beecrypt/base64.h:28,
|                  from base64.c:31:
| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory
| compilation terminated.
| make[2]: *** [base64.lo] Error 1
| In file included from ./include/beecrypt/beecrypt.h:33:0,
|                  from ./include/beecrypt/blockpad.h:29,
|                  from blockpad.c:32:
| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory
| compilation terminated.
| make[2]: *** [blockpad.lo] Error 1
| make[2]: Leaving directory `/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/beecrypt-4.2.1'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory `/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/beecrypt-4.2.1'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
NOTE: package beecrypt-4.2.1-r1: task do_compile: Failed
ERROR: Task 1614 (/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/meta/recipes-support/beecrypt/beecrypt_4.2.1.bb, do_compile) failed with exit code '1'




Regards,

Ashish

Huawei Technology



This e-mail and its attachments contain confidential information from HUAWEI, which is intended only for the person or entity whose address is listed above. Any use of the information contained herein in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately and delete it!

--Boundary_(ID_HCQB4kpXn2YUWyOAqH/gFw)
Content-type: text/html; charset=iso-8859-1
Content-transfer-encoding: 7BIT

<html dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style id="owaParaStyle">P {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px
}
</style>
</head>
<body fPStyle="1" ocsi="0">
<div style="direction: ltr;font-family: Tahoma;color: #000000;font-size: 10pt;">
<div>
<p><font face="Arial">Hi All ,</font> <br>
<br>
<font size="2" face="sans-serif">&nbsp; &nbsp;I was trying to build </font><font color="blue" size="2" face="sans-serif">&quot;poky-1.2_M4.rc2</font><font size="2" face="sans-serif">&quot; with
</font><font color="blue" size="2" face="sans-serif">&quot;bitbake core-image-lsb-sdk</font><font size="2" face="sans-serif">&quot; option.</font>
<br>
<br>
<font size="2" face="sans-serif">I have got build error in the beecrypt-4.2.1-r1 Package. My build machine is Open Suse 12.1 and following is the configuration.</font>
<br>
<br>
<font color="blue" size="2" face="sans-serif">yocto@linux-461v:~/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean&gt; uname -a</font>
<br>
<font color="blue" size="2" face="sans-serif">Linux linux-461v 3.1.0-1.2-desktop #1 SMP PREEMPT Thu Nov 3 14:45:45 UTC 2011 (187dde0) i686 i686 i386 GNU/Linux</font>
<br>
<br>
<font size="2" face="sans-serif">Please verify this error , Is this a problem with build machine or there is some problem with new release.</font>&nbsp;<br>
<font size="2" face="sans-serif">Kindly let me know if there is any data missed here.</font>
<font face="Arial">Please confirm the issue.</font> <br>
<br>
<br>
<br>
<font size="2" face="sans-serif"><b>Error Log :</b></font> <br>
<br>
<br>
<font color="blue" size="2" face="sans-serif">NOTE: Running task 3811 of 5184 (ID: 1614, /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/meta/recipes-support/beecrypt/beecrypt_4.2.1.bb, do_compile)</font>
<br>
<font color="blue" size="2" face="sans-serif">NOTE: package beecrypt-4.2.1-r1: task do_compile: Started</font>
<br>
<font color="blue" size="2" face="sans-serif">ERROR: Function failed: do_compile (see /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/temp/log.do_compile.27618 for further information)</font>
<br>
<font color="blue" size="2" face="sans-serif">ERROR: Logfile of failure stored in: /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/temp/log.do_compile.27618</font>
<br>
<font color="blue" size="2" face="sans-serif">Log data follows:</font> <br>
<font color="blue" size="2" face="sans-serif">| DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 'common-linux', 'common-glibc', 'i586-linux', 'common']</font>
<br>
<font color="blue" size="2" face="sans-serif">| NOTE: make -j 6</font> <br>
<font color="blue" size="2" face="sans-serif">| make &nbsp;all-recursive</font> <br>
<font color="blue" size="2" face="sans-serif">| make[1]: Entering directory `/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/beecrypt-4.2.1'</font>
<br>
<font color="blue" size="2" face="sans-serif">| Making all in .</font> <br>
<font color="blue" size="2" face="sans-serif">| make[2]: Entering directory `/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/beecrypt-4.2.1'</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./i586-poky-linux-libtool --tag=CC &nbsp; --mode=compile i586-poky-linux-gcc &nbsp;-m32 &nbsp; -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include
 &nbsp; &nbsp;-O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o aes.lo aes.c</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./i586-poky-linux-libtool --tag=CC &nbsp; --mode=compile i586-poky-linux-gcc &nbsp;-m32 &nbsp; -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include
 &nbsp; &nbsp;-O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o base64.lo base64.c</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./i586-poky-linux-libtool --tag=CC &nbsp; --mode=compile i586-poky-linux-gcc &nbsp;-m32 &nbsp; -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include
 &nbsp; &nbsp;-O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o beecrypt.lo beecrypt.c</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./i586-poky-linux-libtool --tag=CC &nbsp; --mode=compile i586-poky-linux-gcc &nbsp;-m32 &nbsp; -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include
 &nbsp; &nbsp;-O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o blockmode.lo blockmode.c</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./i586-poky-linux-libtool --tag=CC &nbsp; --mode=compile i586-poky-linux-gcc &nbsp;-m32 &nbsp; -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include
 &nbsp; &nbsp;-O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o blockpad.lo blockpad.c</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./i586-poky-linux-libtool --tag=CC &nbsp; --mode=compile i586-poky-linux-gcc &nbsp;-m32 &nbsp; -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include
 &nbsp; &nbsp;-O2 -pipe -g -feliminate-unused-debug-types -Wa,--noexecstack -c -o blowfish.lo blowfish.c</font>
<br>
<font color="blue" size="2" face="sans-serif">| i586-poky-linux-libtool: compile: &nbsp;i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types
 -Wa,--noexecstack -c base64.c &nbsp;-fPIC -DPIC -o .libs/base64.o</font> <br>
<font color="blue" size="2" face="sans-serif">| i586-poky-linux-libtool: compile: &nbsp;i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types
 -Wa,--noexecstack -c beecrypt.c &nbsp;-fPIC -DPIC -o .libs/beecrypt.o</font> <br>
<font color="blue" size="2" face="sans-serif">| i586-poky-linux-libtool: compile: &nbsp;i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types
 -Wa,--noexecstack -c blowfish.c &nbsp;-fPIC -DPIC -o .libs/blowfish.o</font> <br>
<font color="blue" size="2" face="sans-serif">| i586-poky-linux-libtool: compile: &nbsp;i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types
 -Wa,--noexecstack -c blockmode.c &nbsp;-fPIC -DPIC -o .libs/blockmode.o</font> <br>
<font color="blue" size="2" face="sans-serif">| i586-poky-linux-libtool: compile: &nbsp;i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types
 -Wa,--noexecstack -c aes.c &nbsp;-fPIC -DPIC -o .libs/aes.o</font> <br>
<font color="blue" size="2" face="sans-serif">| i586-poky-linux-libtool: compile: &nbsp;i586-poky-linux-gcc -m32 -march=i586 --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86 -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g -feliminate-unused-debug-types
 -Wa,--noexecstack -c blockpad.c &nbsp;-fPIC -DPIC -o .libs/blockpad.o</font> <br>
<font color="blue" size="2" face="sans-serif">| In file included from ./include/beecrypt/beecrypt.h:33:0,</font>
<br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ./include/beecERROR: Function failed: do_compile (see /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/temp/log.do_compile.27618 for
 further information)</font> <br>
<font color="blue" size="2" face="sans-serif">| rypt/blowfish.h:37,</font> <br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from blowfish.c:32:</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory</font>
<br>
<font color="blue" size="2" face="sans-serif">| compilation terminated.</font> <br>
<font color="blue" size="2" face="sans-serif">| In file included from ./include/beecrypt/beecrypt.h:33:0,</font>
<br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ./include/beecrypt/aes.h:29,</font>
<br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from aes.c:40:</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory</font>
<br>
<font color="blue" size="2" face="sans-serif">| compilation terminated.</font> <br>
<font color="blue" size="2" face="sans-serif">| In file included from ./include/beecrypt/beecrypt.h:33:0,</font>
<br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ./include/beecrypt/blockmode.h:30,</font>
<br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from blockmode.c:32:</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory</font>
<br>
<font color="blue" size="2" face="sans-serif">| compilation terminated.</font> <br>
<font color="blue" size="2" face="sans-serif">| make[2]: *** [blowfish.lo] Error 1</font>
<br>
<font color="blue" size="2" face="sans-serif">| make[2]: *** Waiting for unfinished jobs....</font>
<br>
<font color="blue" size="2" face="sans-serif">| make[2]: *** [aes.lo] Error 1</font>
<br>
<font color="blue" size="2" face="sans-serif">| make[2]: *** [blockmode.lo] Error 1</font>
<br>
<font color="blue" size="2" face="sans-serif">| In file included from ./include/beecrypt/beecrypt.h:33:0,</font>
<br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from beecrypt.c:31:</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory</font>
<br>
<font color="blue" size="2" face="sans-serif">| compilation terminated.</font> <br>
<font color="blue" size="2" face="sans-serif">| make[2]: *** [beecrypt.lo] Error 1</font>
<br>
<font color="blue" size="2" face="sans-serif">| In file included from ./include/beecrypt/beecrypt.h:33:0,</font>
<br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ./include/beecrypt/base64.h:28,</font>
<br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from base64.c:31:</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory</font>
<br>
<font color="blue" size="2" face="sans-serif">| compilation terminated.</font> <br>
<font color="blue" size="2" face="sans-serif">| make[2]: *** [base64.lo] Error 1</font>
<br>
<font color="blue" size="2" face="sans-serif">| In file included from ./include/beecrypt/beecrypt.h:33:0,</font>
<br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ./include/beecrypt/blockpad.h:29,</font>
<br>
<font color="blue" size="2" face="sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from blockpad.c:32:</font>
<br>
<font color="blue" size="2" face="sans-serif">| ./include/beecrypt/api.h:75:18: fatal error: jni.h: No such file or directory</font>
<br>
<font color="blue" size="2" face="sans-serif">| compilation terminated.</font> <br>
<font color="blue" size="2" face="sans-serif">| make[2]: *** [blockpad.lo] Error 1</font>
<br>
<font color="blue" size="2" face="sans-serif">| make[2]: Leaving directory `/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/beecrypt-4.2.1'</font>
<br>
<font color="blue" size="2" face="sans-serif">| make[1]: *** [all-recursive] Error 1</font>
<br>
<font color="blue" size="2" face="sans-serif">| make[1]: Leaving directory `/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/beecrypt-4.2.1'</font>
<br>
<font color="blue" size="2" face="sans-serif">| make: *** [all] Error 2</font> <br>
<font color="blue" size="2" face="sans-serif">| ERROR: oe_runmake failed</font> <br>
<font color="blue" size="2" face="sans-serif">NOTE: package beecrypt-4.2.1-r1: task do_compile: Failed</font>
<br>
<font color="blue" size="2" face="sans-serif">ERROR: Task 1614 (/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/meta/recipes-support/beecrypt/beecrypt_4.2.1.bb, do_compile) failed with exit code '1'
</font><br>
<br>
</p>
<p>&nbsp;</p>
<div style="FONT-FAMILY: Tahoma; FONT-SIZE: 13px">
<p><font color="#000080">Regards,</font></p>
<p><font color="#000080">Ashish</font></p>
<p><font color="#000080">Huawei Technology</font></p>
<p><font color="#000080"></font>&nbsp;</p>
<p><font color="#666699"><font size="2"><font face="Calibri">This e-mail and its attachments contain confidential information from HUAWEI, which is intended only for the person or entity whose address is listed above. Any use of the information contained herein
 in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately
 and delete it! </font></font><br>
</font></p>
</div>
</div>
</div>
</body>
</html>

--Boundary_(ID_HCQB4kpXn2YUWyOAqH/gFw)--

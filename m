Return-Path: <ashishpandey@huawei.com>
Received: from szxga04-in.huawei.com (unknown [58.251.152.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B87A2E0059A
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2012 21:10:47 -0700 (PDT)
Received: from huawei.com (szxga04-in [172.24.2.12])
	by szxga04-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M27002CR279DC@szxga04-in.huawei.com> for
	yocto@yoctoproject.org; Mon, 09 Apr 2012 12:09:10 +0800 (CST)
Received: from szxrg01-dlp.huawei.com ([172.24.2.119])
	by szxga04-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M2700JL426PSA@szxga04-in.huawei.com> for
	yocto@yoctoproject.org; Mon, 09 Apr 2012 12:09:09 +0800 (CST)
Received: from szxeml211-edg.china.huawei.com ([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.1.9-GA)	with ESMTP id AIE30392; Mon,
	09 Apr 2012 12:09:09 +0800
Received: from SZXEML405-HUB.china.huawei.com (10.82.67.60)
	by szxeml211-edg.china.huawei.com (172.24.2.182) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Mon, 09 Apr 2012 12:08:45 +0800
Received: from SZXEML532-MBS.china.huawei.com ([169.254.5.132])
	by szxeml405-hub.china.huawei.com ([::1]) with mapi id 14.01.0323.003;
	Mon, 09 Apr 2012 12:09:07 +0800
Date: Mon, 09 Apr 2012 04:07:57 +0000
From: Ashish Pandey <ashishpandey@huawei.com>
In-reply-to: <4F7FE69D.3040003@gmail.com>
X-Originating-IP: [10.18.96.98]
To: Khem Raj <raj.khem@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-id: <F3906846C0EDD246B5CF75E8EDA3C47E217021D5@szxeml532-mbs.china.huawei.com>
MIME-version: 1.0
Accept-Language: en-IN, zh-CN, en-US
Thread-topic: [yocto] [Yocto] Build Failure in beecrypt-4.2.1-r1 package with
	poky-1.2_M4.rc2 on Open Suse 12.1
Thread-index: Ac0T9beqxV1jVHdTSNuM2m6FpjBb1gAU62+AAG8yaPA=
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-CFilter-Loop: Reflected
References: <F3906846C0EDD246B5CF75E8EDA3C47E138A7864@szxeml532-mbx.china.huawei.com>
	<4F7FE69D.3040003@gmail.com>
Subject: Re: Build Failure in beecrypt-4.2.1-r1 package with poky-1.2_M4.rc2 on Open Suse 12.1
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
X-List-Received-Date: Mon, 09 Apr 2012 04:10:52 -0000
Content-type: text/plain; charset=us-ascii
Content-language: en-IN
Content-transfer-encoding: 7BIT

Hi Khem Raj ,

  I tried woth " --disable-java" option but it is giving same error.
Please check once again and help me to build.

Regards,

Ashish

Huawei Technology



This e-mail and its attachments contain confidential information from HUAWEI, which is intended only for the person or entity whose address is listed above. Any use of the information contained herein in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately and delete it!

________________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on behalf of Khem Raj [raj.khem@gmail.com]
Sent: 07 April 2012 12:32:53
To: yocto@yoctoproject.org
Subject: Re: [yocto] [Yocto] Build Failure in beecrypt-4.2.1-r1 package with poky-1.2_M4.rc2 on Open Suse 12.1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 04/06/2012 06:12 AM, Ashish Pandey wrote:
> Hi All ,
>
> I was trying to build "poky-1.2_M4.rc2" with "bitbake
> core-image-lsb-sdk" option.
>
> I have got build error in the beecrypt-4.2.1-r1 Package. My build
> machine is Open Suse 12.1 and following is the configuration.
>
> yocto@linux-461v:~/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean>
> uname -a Linux linux-461v 3.1.0-1.2-desktop #1 SMP PREEMPT Thu Nov
> 3 14:45:45 UTC 2011 (187dde0) i686 i686 i386 GNU/Linux
>
> Please verify this error , Is this a problem with build machine or
> there is some problem with new release. Kindly let me know if there
> is any data missed here. Please confirm the issue.
>
>
>
> Error Log :
>
>
> NOTE: Running task 3811 of 5184 (ID: 1614,
> /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/meta/recipes-support/beecrypt/beecrypt_4.2.1.bb,
> do_compile) NOTE: package beecrypt-4.2.1-r1: task do_compile:
> Started ERROR: Function failed: do_compile (see
> /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/temp/log.do_compile.27618
> for further information) ERROR: Logfile of failure stored in:
> /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/temp/log.do_compile.27618
>
>
Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
> 'common-linux', 'common-glibc', 'i586-linux', 'common'] | NOTE:
> make -j 6 | make  all-recursive | make[1]: Entering directory
> `/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/beecrypt-4.2.1'
>
>
| Making all in .
> | make[2]: Entering directory
> `/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/beecrypt-4.2.1'
>
>
| ./i586-poky-linux-libtool --tag=CC   --mode=compile
i586-poky-linux-gcc  -m32   -march=i586
-
--sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
- -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g
- -feliminate-unused-debug-types -Wa,--noexecstack -c -o aes.lo aes.c
> | ./i586-poky-linux-libtool --tag=CC   --mode=compile
> i586-poky-linux-gcc  -m32   -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c -o base64.lo
> base64.c | ./i586-poky-linux-libtool --tag=CC   --mode=compile
> i586-poky-linux-gcc  -m32   -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c -o beecrypt.lo
> beecrypt.c | ./i586-poky-linux-libtool --tag=CC   --mode=compile
> i586-poky-linux-gcc  -m32   -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c -o blockmode.lo
> blockmode.c | ./i586-poky-linux-libtool --tag=CC   --mode=compile
> i586-poky-linux-gcc  -m32   -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c -o blockpad.lo
> blockpad.c | ./i586-poky-linux-libtool --tag=CC   --mode=compile
> i586-poky-linux-gcc  -m32   -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include    -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c -o blowfish.lo
> blowfish.c | i586-poky-linux-libtool: compile:  i586-poky-linux-gcc
> -m32 -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c base64.c  -fPIC
> -DPIC -o .libs/base64.o | i586-poky-linux-libtool: compile:
> i586-poky-linux-gcc -m32 -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c beecrypt.c
> -fPIC -DPIC -o .libs/beecrypt.o | i586-poky-linux-libtool: compile:
> i586-poky-linux-gcc -m32 -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c blowfish.c
> -fPIC -DPIC -o .libs/blowfish.o | i586-poky-linux-libtool: compile:
> i586-poky-linux-gcc -m32 -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c blockmode.c
> -fPIC -DPIC -o .libs/blockmode.o | i586-poky-linux-libtool:
> compile:  i586-poky-linux-gcc -m32 -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c aes.c  -fPIC
> -DPIC -o .libs/aes.o | i586-poky-linux-libtool: compile:
> i586-poky-linux-gcc -m32 -march=i586
> --sysroot=/home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/sysroots/qemux86
> -DHAVE_CONFIG_H -I. -I./include -O2 -pipe -g
> -feliminate-unused-debug-types -Wa,--noexecstack -c blockpad.c
> -fPIC -DPIC -o .libs/blockpad.o | In file included from
> ./include/beecrypt/beecrypt.h:33:0, |                  from
> ./include/beecERROR: Function failed: do_compile (see
> /home/yocto/Yocto-builds-test/poky-1.2_M4.rc2/lsb-sdk-clean/tmp/work/i586-poky-linux/beecrypt-4.2.1-r1/temp/log.do_compile.27618
> for further information) | rypt/blowfish.h:37, |
> from blowfish.c:32: | ./include/beecrypt/api.h:75:18: fatal error:
> jni.h: No such file or directory


it seems that java is being enabled by configure. So explicitly add
EXTRA_OECONF += " --disable-java" to the recipe and see if that helps

ps: It would be nice if you could avoid attaching those notice
attachments when you send emails to public mailing lists
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk9/5pwACgkQuwUzVZGdMxR1sgCeMjZ67GhaogtY+MXs86zJTyOf
tWgAn1ktYmi7BEJaRE8uV7jD+vzzdMwX
=KiTX
-----END PGP SIGNATURE-----
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E268E0044A
	for <yocto@yoctoproject.org>; Sat,  7 Apr 2012 00:02:57 -0700 (PDT)
Received: by dajx4 with SMTP id x4so4027825daj.28
	for <yocto@yoctoproject.org>; Sat, 07 Apr 2012 00:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=1RLVfB2l9hu9barcc/BpASq7ZC4GX+852LOAKXaOcG0=;
	b=yjaLMxxnBvgLlnJbtNNSQ6bQAthnMzErktEb4LnuBQPHgciYe6EBVdCAKr0n97Ae37
	S0KpefFQ2HNm0EH3Xbc7R5FJZu5+v3WMd5Wc5H7ObD9NIFaSvNwaPZDilgDA5ZB3tDyd
	CwNTumISV2DwuqBe8rDnOpXXK6aRdqcIG2+OyL2cxEsKUtX9eegi3O5CQDpRPJvROSJR
	lUs7W4rHzCMpDcIhLhIWGYQO+LTyjFsFN2ekM/p7vC/ej47z6jk4rTYPe7/v/DVfUGmp
	t0ut9Ue0l2nA2dZ7pN+EvtXSHkQkP0xTbNVMpLPEzKqepYn8VIyqNvmsVY0SLeSK1D0w
	YfJQ==
Received: by 10.68.203.4 with SMTP id km4mr1807423pbc.53.1333782177061;
	Sat, 07 Apr 2012 00:02:57 -0700 (PDT)
Received: from [192.168.1.79] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id r6sm8438448pbc.40.2012.04.07.00.02.54
	(version=SSLv3 cipher=OTHER); Sat, 07 Apr 2012 00:02:55 -0700 (PDT)
Message-ID: <4F7FE69D.3040003@gmail.com>
Date: Sat, 07 Apr 2012 00:02:53 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120402 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <F3906846C0EDD246B5CF75E8EDA3C47E138A7864@szxeml532-mbx.china.huawei.com>
In-Reply-To: <F3906846C0EDD246B5CF75E8EDA3C47E138A7864@szxeml532-mbx.china.huawei.com>
X-Enigmail-Version: 1.4
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
X-List-Received-Date: Sat, 07 Apr 2012 07:02:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

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


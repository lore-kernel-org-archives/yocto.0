Return-Path: <kaffeesurrogat@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7951E00A7D; Sun,  6 Dec 2015 09:33:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.67.36.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85FF3E009BF
	for <yocto@yoctoproject.org>; Sun,  6 Dec 2015 09:33:07 -0800 (PST)
Received: from dovecot03.posteo.de (dovecot03.posteo.de [172.16.0.13])
	by mout01.posteo.de (Postfix) with ESMTPS id 40C3E20954
	for <yocto@yoctoproject.org>; Sun,  6 Dec 2015 18:33:00 +0100 (CET)
Received: from mail.posteo.de (localhost [127.0.0.1])
	by dovecot03.posteo.de (Postfix) with ESMTPSA id 3pDFGh5sTkz5vNH
	for <yocto@yoctoproject.org>; Sun,  6 Dec 2015 18:33:00 +0100 (CET)
References: <56640B0C.2000107@posteo.de>
	<CAOsp8o_+Tf4n2a7_TzScRK1=b56F6=ikknXgrrwt4T8CEJYUrg@mail.gmail.com>
From: kaffeesurrogat@posteo.de
To: yocto@yoctoproject.org
Message-ID: <5664714B.1040909@posteo.de>
Date: Sun, 6 Dec 2015 18:32:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAOsp8o_+Tf4n2a7_TzScRK1=b56F6=ikknXgrrwt4T8CEJYUrg@mail.gmail.com>
Subject: Re: BeagleBone...bitbake -v core-image-sato stops
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
X-List-Received-Date: Sun, 06 Dec 2015 17:33:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks so far. I wasn't aware of the log files in temp/log.do_compile 
directory ;-) Well I've found an error, perhaps not related to 
attr-native but to gcc:

the log-file says:

+ cd 
/home/nico/yocto_bb/poky/build_bbb/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/gcc-cross-initial/4.8.2-r0/gcc-4.8.2/build.i686-linux.arm-poky-linux-gnueabi
+ do_compile
+ oe_runmake all-gcc all-target-libgcc
+ oe_runmake_call all-gcc all-target-libgcc
+ bbnote make -j 8 'ARCH_FLAGS_FOR_TARGET= -march=armv7-a 
-mthumb-interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a8 
-isystem/home/nico/yocto_bb/poky/build_bbb/tmp/sysroots/beaglebone/usr/include' 
all-gcc all-target-libgcc
+ echo 'NOTE: make -j 8 ARCH_FLAGS_FOR_TARGET= -march=armv7-a 
-mthumb-interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a8 
-isystem/home/nico/yocto_bb/poky/build_bbb/tmp/sysroots/beaglebone/usr/include 
all-gcc all-target-libgcc'
NOTE: make -j 8 ARCH_FLAGS_FOR_TARGET= -march=armv7-a -mthumb-interwork 
-mfloat-abi=hard -mfpu=neon -mtune=cortex-a8 
-isystem/home/nico/yocto_bb/poky/build_bbb/tmp/sysroots/beaglebone/usr/include 
all-gcc all-target-libgcc
+ make -j 8 'ARCH_FLAGS_FOR_TARGET= -march=armv7-a -mthumb-interwork 
-mfloat-abi=hard -mfpu=neon -mtune=cortex-a8 
-isystem/home/nico/yocto_bb/poky/build_bbb/tmp/sysroots/beaglebone/usr/include' 
all-gcc all-target-libgcc
make: *** No rule to make target 'all-gcc'.  Stop.
+ die 'oe_runmake failed'
+ bbfatal 'oe_runmake failed'
+ echo 'ERROR: oe_runmake failed'
ERROR: oe_runmake failed


It might happen to be the problem, but I don't know ..... I will poke 
around, to find some information about setting up the gcc-toolchain. 
Could this be the problem ?


Thanks,

kaffeesurrogat

Am 06.12.2015 um 15:57 schrieb Michael Habibi:
> You may be able to look under ${WORKDIR}/temp/log.do_compile to see 
> what the logs are saying it got stuck doing.
>
> On Sun, Dec 6, 2015 at 4:16 AM, <kaffeesurrogat@posteo.de 
> <mailto:kaffeesurrogat@posteo.de>> wrote:
>
>     Hello to all,
>
>     this is my first question ;-) I'm doing my first steps with a
>     beaglebone black and yocto. I've bought the beaglebone book "Using
>     Yocto Project with Beaglebone Black" and started the bitbake with
>     "bitbake -v core-image-sato". After a while the bitbake-process
>     reached a package called attr-native-2.4.47-r0 and it was not able
>     to move on. Bitmaker did not complain about anything, but I've
>     started the process yesterday in the morning and until now there
>     was no progress.
>
>     I've downloaded the source with:
>
>     git clone -b daisy git://git.yoctoproject.org/poky.git
>     <http://git.yoctoproject.org/poky.git>
>
>     My Distro is:
>
>     gentoo
>
>     I've started the bitbake with:
>
>     bitbake -v core-image-sato
>
>
>     Now I'm wondering, if I did something wrong .....
>
>     Greetings,
>
>     kaffeesurrogat
>
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>



Return-Path: <pierre.ficheux@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC6C1E00BB5; Sun,  2 Jul 2017 02:46:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.216.209.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from idris.smile.fr (idris.smile.fr [91.216.209.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62544E009A0
	for <yocto@yoctoproject.org>; Sun,  2 Jul 2017 02:46:50 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by idris.smile.fr (Postfix) with ESMTP id 77DD21EE408F;
	Sun,  2 Jul 2017 11:46:49 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at smile.fr
Received: from idris.smile.fr ([127.0.0.1])
	by localhost (bluemind-mta.prod.vitry.intranet [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id altIzBVMMwBy; Sun,  2 Jul 2017 11:46:49 +0200 (CEST)
Received: from bluemind.smile.fr (bluemind.prod.vitry.intranet [10.10.1.35])
	by idris.smile.fr (Postfix) with ESMTPS id 57F031EE408E;
	Sun,  2 Jul 2017 11:46:49 +0200 (CEST)
Received: from localhost.localdomain (localhost [127.0.0.1])
	by bluemind.smile.fr (Postfix) with ESMTP id 5481054604CA;
	Sun,  2 Jul 2017 11:46:49 +0200 (CEST)
MIME-Version: 1.0
Date: Sun, 02 Jul 2017 11:46:49 +0200
From: Pierre FICHEUX <pierre.ficheux@smile.fr>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
In-Reply-To: <753516A24CD045AAB7E6E2F13BD1C99D@PAULD>
References: <FF02D819682A44949D09718D69202477@PAULD>
	<CAC+thW12U7RCZsSS7tuSVWis+bycbDo6t-oFiOpePoQ9nJ3qSA@mail.gmail.com>
	<753516A24CD045AAB7E6E2F13BD1C99D@PAULD>
Message-ID: <77f46227bc1e0f609b4879e5bb985a35@smile.fr>
X-Sender: pierre.ficheux@smile.fr
User-Agent: Roundcube Webmail/0.8.5
Cc: yocto@yoctoproject.org
Subject: Re: RPi app built with SDK won't load
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
X-List-Received-Date: Sun, 02 Jul 2017 09:46:54 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Did you try compiling in text mode?

$  $CC -o test test.c

-- 
Pierre FICHEUX -/- CTO Smile-ECS, France -\- pierre.ficheux@smile.fr
                                     http://www.smile.fr
                                     http://ingenierie.openwide.fr
I would love to change the world, but they won't give me the source 
code

Le 2017-07-02 03:07, Paul D. DeRocco a écrit :
>> From: Andrea Galbusera [mailto:gizero@gmail.com]
>> 
>> Could you please post the exact source code of your test
>> program and the steps you take to (a) build the SDK and (b)
>> build your test executable? Is your running image a pretty
>> standard one (core-image-minimal, rpi-test-image or so) or do
>> your own with custom features?
> 
> It did have some custom features, so I did a plain build of
> core-image-minimal using raspberrypi3 as the MACHINE. I also did a
> populate_sdk for it, and installed the SDK in /opt/poky/2.2.1-a32 by
> running the install script.
> 
> The test program test.c is just "int main(void) { return 0; }". I
> normally use Eclipse CDT to compile native programs, so I set up a
> cross project using the SDK, which involves a few manual settings,
> including telling it the tools are in
> /opt/poky/2.2.1-a32/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux,
> and adding a --sysroot to the command lines. The compiler command
> line came out as:
> 
> arm-poky-linux-gcc
> --sysroot=/opt/poky/2.2.1-a32/sysroots/cortexa7hf-neon-vfpv4-poky-linux-gnueabi
> -O3 -Wall -c -mfloat-abi=hard -MMD -MP -MF"test.d" -MT"test.o" -o
> "test.o" "../test.c"
> 
> (without the line breaks). I had to add "-mfloat-abi-hard" to get it
> to link. The link command line was:
> 
> arm-poky-linux-gcc
> --sysroot=/opt/poky/2.2.1-a32/sysroots/cortexa7hf-neon-vfpv4-poky-linux-gnueabi
> -s -o "test" ./test.o
> 
> (again, without the line breaks). After dd-ing the image to my SD
> card, I mounted it and manually copied the "test" program into its
> rootfs. When I stuck it in the RPi3 and ran it, I got
> 
>     -sh: ./test: not found
> 
> The shell in this case is busybox, so the error message is slightly
> different from bash.
> 
> I rechecked everything I had described before, analyzing the
> executable and comparing it to some working executable from the
> rootfs. There must be SOMETHING in my executable that the loader is
> barfing on, after it's successfully opened the file but before it
> starts looking for libraries. But it's an awfully small executable, so
> it's hard to imaging where that something is hiding.
> 
> --
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com


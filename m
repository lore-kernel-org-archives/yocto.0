Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DC5FE00D35; Sun, 12 May 2019 06:20:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [217.72.192.75 listed in list.dnswl.org]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Sun, 12 May 2019 06:20:25 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65B12E00C93
	for <yocto@yoctoproject.org>; Sun, 12 May 2019 06:20:25 -0700 (PDT)
Received: from [192.168.1.177] ([82.16.206.23]) by mrelayeu.kundenserver.de
	(mreue106 [212.227.15.179]) with ESMTPSA (Nemesis) id
	1Md6AP-1grZxt1RH1-00aGeA; Sun, 12 May 2019 15:15:18 +0200
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <903d2bf0-2711-b734-d844-ef032fb67d58@2net.co.uk>
Date: Sun, 12 May 2019 14:15:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
X-Provags-ID: V03:K1:hECEqUiJMFsfP5gJT0XLA+P88WOCR6CeywdAstaMhZ4F3MG7qm5
	KN4X5SqOxhayo0jkODrtvkAV6MkFUDrC+WBHHpTK5jEEnDUuwcOEnOE5wCLdosk4CTnWVvp
	AtdZKOsbghBXCluktFFO97XsGaHJzS9D7KFtUW/gFE9Nxb1rMKLI+TT92tv7DwxIJEjoJEp
	nq+mkUqE2olDM6+pQkukQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:PW9vp2ez+mc=:2naNfXC6FilodPhDWwnT9c
	bGPLhnlkj8/BRzC/wsunb887k5eWSjh3UHOhN7CVIEd14QhoBUPM7pQjYwIg4w48z+xxqbZ9c
	bQ/ZbcwIEHgfuAEn6wtfhSy8NvJcfmkmDCsZaLQugk50L+CR0Q6ch/zFpirn2EGqcqGXsgWb2
	PDc2XKHNVVoPPSrSNO0JWPZSSMnq599GJuWFl7QH7WdAWnBdyDlviqOe2asfBJ1AmuGXcuusy
	ftU6Sp9X8LGx0PYKohLgoTur8iv1xCuCJ6dTc3EFknhU741eRyXCFyKag6QgZ6N7QEFApjZ9o
	dKhHJMPlXMqfB9vZnGDb9zA+iUAkjt++3t5mnXQGAILAZRmkHjkRtHRlBnXJThr6DAOTh/kgA
	NNC1+iSFtOSBOkoD176Ukfh9Z36Lqz+JBVimfrh/8txBRPMlLXlT5Q6vjuVWsqly1sBvTHx9J
	4pNDeEr6d7D2rwP2lJTXi/MfEXtGhWEwgldewjDnYcgNekBKMX2Nkd0DLL5QzM2got4Gsup78
	emvz0EtckxALogGRozgyk7lDw/a4eLg8NFLsmcyi0f/u35nYzcJ6qMQgLZKNF69DN0WWtxOoT
	8NYkEgD+I5MMTZvPtcEvIOOt6z8fziboTOVuHfKhuYUYIoRaQUO1LLLqdTurKShdHyvrEiKAw
	pxVWf2tgvCf/x4FT65+wpJcs/qCll5FQHfbatSr7M9BIVrPHGaOKPigx69gDhgth7+XF7PcXf
	7IrBbzLzjkuXFCE4N9PmoNe7UpGoshk0yEysbHO9hUwdacg6YdJObKZ11JU=
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: Re: Building Out-of-Tree Modules on the BBB Target
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 12 May 2019 13:20:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi Zoran,

There are two ways to do this

1. Build using a bb recipe.
Take a look at meta-skeleton/recipes-kernel/hello-mod for an example.
You just need to add meta-skeleton to your bblaysers.conf and then
  bitbake hello-mod


2. Build from the SDK:
First, add the kernel source to the SDK by adding this to conf/local/conf
  TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"

Then build the SDK
  bitbake -c populate_sdk [your image recipe]

Once the SDK is installed, generate the kernel headers:
  sudo -i
  . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
  cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
  cd /usr/src/kernel
  make oldconfig scripts
  exit

Finally, build your module using a Makefile like this

  obj-m := hello-mod.o
  all:
        make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=$(shell pwd)


HTH,
Chris

On 12/05/2019 11:53, Zoran Stojsavljevic wrote:
> Hello to the YOCTO community,
> 
> I am using (to build the target for Beagle Bone Black) the following script:
> https://github.com/ZoranStojsavljevic/bbb-yocto
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh
> 
> The latest kernel I am using from the following repo:
> https://github.com/jumpnow/meta-bbb
> 
> Is kernel 5.0.14 .
> 
> Here is the snippet of the boot traces:
> Starting kernel ...
> 
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 5.0.14-jumpnow (oe-user@oe-host) (gcc
> version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c5387d
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instruction cache
> [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
> [    0.000000] Memory policy: Data cache writeback
> [    0.000000] cma: Reserved 16 MiB at 0x9f000000
> [    0.000000] CPU: All CPU(s) started in SVC mode.
> [    0.000000] AM335X ES2.1 (sgx neon)
> [    0.000000] random: get_random_bytes called from
> start_kernel+0xa4/0x460 with crng_init=0
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 130048
> [    0.000000] Kernel command line: console=ttyO0,115200n8
> root=/dev/ram0 ip=dhcp
> 
> According to the documentation, the following:
> 2.10.1. Building Out-of-Tree Modules on the Target
> https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html
> 
> I tried to find /usr/src/kernels/5.0.14... Directory, since I see
> from the build that kernel-dev and kernel-devsrc are included:
> [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
> core-image-kernel-dev                                 :1.0-r0
> kernel-devsrc                                         :1.0-r0
> kernel-selftest                                       :1.0-r0
> 
> THE PROBLEM: But I could not find ob BBB target /usr/src/kernels
> directory at all!?
> 
> Two questions here?
> [1] Do you have any advice on this problem (what I am missing here)?
> [2] Alternative to [1]: how I can use cross compiler from
> .../build/tmp to build Out-of-Tree Module for the BBB target on the
> host?
> 
> Thank you,
> Zoran
> _______
> 


-- 
Chris Simmonds, trainer and consultant at 2net
http://www.2net.co.uk
Author of "Mastering Embedded Linux Programming"


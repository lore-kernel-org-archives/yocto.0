Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BEF594C80053
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 12:34:49 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p72HYlnU017522
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 2 Aug 2011 10:34:47 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 2 Aug 2011 10:34:47 -0700
Message-ID: <4E383536.7010606@windriver.com>
Date: Tue, 2 Aug 2011 13:34:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Francis Meyvis <francis.meyvis@gmail.com>
References: <CAHts6WS5OvR47W+o--ZpNJU-C8rVa_5GJh+YczRjaYkfN7pJjQ@mail.gmail.com>	<4E3612A6.7040602@windriver.com>
	<1312169430.2357.34.camel@elmorro>	<4E3625B7.6000507@windriver.com>
	<CAHts6WSRmSDhi3uE-my2-Rj-pWjJPJ+T2OSxNX5JvpwmDF2n3w@mail.gmail.com>
In-Reply-To: <CAHts6WSRmSDhi3uE-my2-Rj-pWjJPJ+T2OSxNX5JvpwmDF2n3w@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel panic - not syncing: No init found
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
X-List-Received-Date: Tue, 02 Aug 2011 17:34:50 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/11 01:38, Francis Meyvis wrote:
> Hello,
>
> When I mounted the root image on loop back device, I actually ran the
> init program. It executed and complained about missing params. I tried
> with the 5, like for network connected inittab. Then init complained
> there was no /dev/initctl. So combining this with the replies I got, I
> think the latest /sbin/init on yocto master does not support a default
> run level? I think the architecture of my root image is for x86 cause my
> pc could exec it.
>
> Any suggestions on how to continue?

Interesting, since this is failing on multiple image types,
there should be different init scripts at play, each with
different requirements that should be met by the rootfs
generation.

Have you tried updating master and re-building ? Some of
the issues from last week should be resolved at this point.

The boards are known to boot, and boot out of the box, so
either this is something transient, or unique to your setup
at the moment.

Bruce

>
> Groetjes,
> Francis
>
> On Aug 1, 2011 6:04 AM, "Bruce Ashfield" <bruce.ashfield@windriver.com
> <mailto:bruce.ashfield@windriver.com>> wrote:
>  > On 11-07-31 11:30 PM, Tom Zanussi wrote:
>  >> On Sun, 2011-07-31 at 19:42 -0700, Bruce Ashfield wrote:
>  >>> On 11-07-31 3:44 PM, Francis Meyvis wrote:
>  >>>> Hello,
>  >>>>
>  >>>> I probably miss something trivial.
>  >>>> I cloned the git://git.yoctoproject.org/poky.git
> <http://git.yoctoproject.org/poky.git>
>  >>>> I build on a 64 bit machine a qemux86-64
>  >>>> (. ./oe-init-build-env qemux86-64 and changing the conf/local.conf)
>  >>>> I build the core-image-sato& core-image-minimal.
>  >>>> Then I try to run with
>  >>>> runqemu qemux86-64 core-image-sato ext3
>  >>>>
>  >>>> But both sato and minimal give me this message:
>  >>>> Kernel panic - not syncing: No init found.
>  >>>>
>  >>>> As runqemu showed me the full command line I tried to add the --append
>  >>>> command line option
>  >>>> init=/sbin/init and /sbin/init.sysvinit
>  >>>> But that did not help (there's a message saying Failed to execute
>  >>>> /sbin/init. Attempting defaults...)
>  >>>> I verified by mounting these ext3 images on a loop device that there's
>  >>>> really a /sbin/init present.
>  >>>>
>  >>>> Can somebody tell what I'm doing wrong?
>  >>>
>  >>> Can you send a full bootlog, or paste it somewhere accessible ?
> It's hard
>  >>> to say what's with the information you've given.
>  >>>
>  >>> Is this the latest yocto master ?
>  >>>
>  >>> If you are seeing that message it typically means that the the
>  >>> device that is being used as the root isn't ready (fixed by
>  >>> rootwait/rootdelay) or isn't supported (i.e. NFS root without
>  >>> the right ethernet device). Changing what init is, won't change
>  >>> the result if either one of those is the case.
>  >>>
>  >>
>  >> I'm also seeing this on both sugarbay and jasperforest with the latest
>  >> master. rootwait doesn't help.
>  >>
>  >> rtc_cmos 00:07: setting system clock to 2010-01-02 05:35:34 UTC
>  >> (1262410534)
>  >> Freeing unused kernel memory: 720k freed
>  >> Failed to execute /init
>  >> Kernel panic - not syncing: No init found. Try passing init= option to
>  >> kernel.
>  >> See Linux Documentation/init.txt for guidance.
>  >> Pid: 1, comm: swapper Not tainted 3.0.0-rc7-yocto-standard+ #1
>  >> Call Trace:
>  >> [<ffffffff81541b77>] panic+0x9b/0x191
>  >> [<ffffffff81540862>] init_post+0xc0/0xc0
>  >> [<ffffffff8188bcef>] kernel_init+0x17b/0x17b
>  >> [<ffffffff8154b234>] kernel_thread_helper+0x4/0x10
>  >> [<ffffffff8188bb74>] ? start_kernel+0x377/0x377
>  >> [<ffffffff8154b230>] ? gs_change+0xb/0xb
>  >>
>  >> I thought initially it had something to do with the -live image changes,
>  >> but reverting the two -live patches didn't help.
>  >>
>  >> The problem seems to coincide with the tune file changes, but that may
>  >> be a red herring.
>  >
>  > Nope. I don't think it's a red herring:
>  >
>  > Both of these:
>  >
>  > Freeing unused kernel memory: 720k freed
>  > Failed to execute /init
>  >
>  > Indicate that the device came up and init was loaded, the kernel
>  > passed control to userspace and then things went bad. i.e. you just
>  > ran init of the wrong arch or something incompatible with the
>  > kernel support, etc.
>  >
>  > Since I'm having no trouble with old rootfs and new kernels, that's
>  > another sign. I'm assuming that old userspace's boot for you ?
>  >
>  > Bruce
>  >
>  >>
>  >> Tom
>  >>
>  >>
>  >>> Cheers,
>  >>>
>  >>> Bruce
>  >>>
>  >>>>
>  >>>> BTW is there any way to not have to run qemu with root permissions?
>  >>>> I ran the android emulator and it does not require me to be root.
>  >>>> Should I configure something on my Ubuntu machine to get qemu to
> function?
>  >>>>
>  >>>> Thanks,
>  >>>> francis
>  >>>> _______________________________________________
>  >>>> yocto mailing list
>  >>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>  >>>> https://lists.yoctoproject.org/listinfo/yocto
>  >>>
>  >>> _______________________________________________
>  >>> yocto mailing list
>  >>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>  >>> https://lists.yoctoproject.org/listinfo/yocto
>  >>
>  >>
>  >
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



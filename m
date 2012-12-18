Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32BA8E0034C
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 09:57:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qBIHvvfa028182
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 18 Dec 2012 09:57:57 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Tue, 18 Dec 2012 09:57:57 -0800
Message-ID: <50D0AE9A.4070907@windriver.com>
Date: Tue, 18 Dec 2012 12:57:46 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: "Marco C." <koansoftware@gmail.com>
References: <50C4EF27.2030106@gmail.com>
	<CADkTA4NAdSTxwjMfSKVutev6ksRoDce9a9buVnZymVXpeXCJqw@mail.gmail.com>
	<CAHQNVWDNEdVzv3-2Jf2eNPiEG1zChRT78J8-4d2NXd1a20+iww@mail.gmail.com>
In-Reply-To: <CAHQNVWDNEdVzv3-2Jf2eNPiEG1zChRT78J8-4d2NXd1a20+iww@mail.gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: bitbake -c devshell option
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
X-List-Received-Date: Tue, 18 Dec 2012 17:57:58 -0000
X-Groupsio-MsgNum: 11178
Content-Type: multipart/mixed; boundary="------------060702000606040408060604"

--------------060702000606040408060604
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-12-18 10:45 AM, Marco C. wrote:
> 2012/12/9 Bruce Ashfield <bruce.ashfield@gmail.com>:
>
>> As Chris said, this way should still work, and it does work here for me.
>> There's
>> one thing that you may notice with kernel's that have split source/build
>> dirs
>> (like linux-yocto), is that once you have gone through the configure phase
>> and drop into the devshell you may not have KBUILT_OUTPUT set to the
>> build directory, and end up dropping files in the source dir .. which causes
>> you
>> mrproper and build issue.
>>
>> I have a local append to devshell that sets:
>>
>>        d.setVar("KBUILD_OUTPUT", "${B}")
>>
>> To make sure things work.  If you need something like this as well, or have
>> problems with linux-yocot, I can arrange to have something like this added
>> by default. But since no one else has asked about it, I assumed no one else
>> is either using devshell, or they haven't run into it.
>>
>> Cheers,
>>
>> Bruce
>
>
> Dear Bruce,
> I'd like to have the same behaviour as before, so what you suggested
> would suit me.
> Could you please tell me where to add that line?
> Fileneme and function.

Apply the patch to your yocto/oe-core repository (master branch, but
it should apply to danny as well). This will be part of my next
consolidated kernel pull request, so you'll only need to carry
it locally for a short time.

Cheers,

Bruce

>
> Thank you
>   --
> Marco Cavallini
>
> 2012/12/9 Bruce Ashfield <bruce.ashfield@gmail.com>:
>>
>>
>>
>> On Sun, Dec 9, 2012 at 3:05 PM, Marco <koansoftware@gmail.com> wrote:
>>>
>>> Hello,
>>> I was used to work with oe-classic.
>>> When I used oe-classic, often I used the 'devshell' option to try to
>>> compile (make uImage) the kernel with the entire environment set up
>>> correctly.
>>> Now if I do the same procedure with Yocto 8 Danny it does not work.
>>> For example I'm using a default configuration below:
>>>
>>> 1st step
>>> ---
>>> MACHINE="beagleboard" bitbake -c devshell virtual/kernel
>>>
>>> Build Configuration:
>>> BB_VERSION        = "1.16.0"
>>> TARGET_ARCH       = "arm"
>>> TARGET_OS         = "linux-gnueabi"
>>> MACHINE           = "beagleboard"
>>> DISTRO            = "poky"
>>> DISTRO_VERSION    = "1.3"
>>> TUNE_FEATURES     = "armv7a vfp neon cortexa8"
>>> TARGET_FPU        = "vfp-neon"
>>> meta
>>> meta-yocto
>>> meta-yocto-bsp    = "danny:09031ac2fc0f30ec577ee823fc61ff0e5d852e21"
>>>
>>> NOTE: Resolving any missing task queue dependencies
>>> NOTE: Preparing runqueue
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> NOTE: Tasks Summary: Attempted 912 tasks of which 912 didn't need to be
>>> rerun and all succeeded.
>>>
>>>
>>> 2nd step just after 1st
>>> ------------------------
>>> MACHINE="beagleboard" bitbake -c devshell virtual/kernel
>>>
>>> - Devshell starts in a new screen
>>> ------------------------
>>> $ pwd
>>>
>>> ~/yocto-8-danny/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.4.11+git1+a201268353c030d9fafe00f2041976f7437d9386_1+449f7f520350700858f21a5554b81cc8ad23267d-r4.3/linux
>>>
>>> - lauch a kernel build (as I was used to do)
>>> ------------------------
>>> $ make
>>> scripts/kconfig/conf --silentoldconfig Kconfig
>>> ***
>>> *** Configuration file ".config" not found!
>>> ***
>>> *** Please run some configurator (e.g. "make oldconfig" or
>>> *** "make menuconfig" or "make xconfig").
>>> ***
>>> make[2]: *** [silentoldconfig] Error 1
>>> make[1]: *** [silentoldconfig] Error 2
>>> make: *** No rule to make target `include/config/auto.conf', needed by
>>> `include/config/kernel.release'.  Stop.
>>>
>>>
>>> I would like to find out whether you can still do this and what is the new
>>> way to go
>>
>>
>> As Chris said, this way should still work, and it does work here for me.
>> There's
>> one thing that you may notice with kernel's that have split source/build
>> dirs
>> (like linux-yocto), is that once you have gone through the configure phase
>> and drop into the devshell you may not have KBUILT_OUTPUT set to the
>> build directory, and end up dropping files in the source dir .. which causes
>> you
>> mrproper and build issue.
>>
>> I have a local append to devshell that sets:
>>
>>        d.setVar("KBUILD_OUTPUT", "${B}")
>>
>> To make sure things work.  If you need something like this as well, or have
>> problems with linux-yocot, I can arrange to have something like this added
>> by default. But since no one else has asked about it, I assumed no one else
>> is either using devshell, or they haven't run into it.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>
>>>
>>>
>>> TIA
>>> --
>>> Marco Cavallini
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await thee at
>> its end"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


--------------060702000606040408060604
Content-Type: text/x-patch;
	name="0001-kernel-yocto-add-KBUILD_OUTPUT-to-OE_TERMINAL_EXPORT.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename*0="0001-kernel-yocto-add-KBUILD_OUTPUT-to-OE_TERMINAL_EXPORT.pa";
	filename*1="tch"

From 0f0092ea9091765ab30d83d6574831083e3870c1 Mon Sep 17 00:00:00 2001
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 18 Dec 2012 12:54:20 -0500
Subject: [PATCH] kernel-yocto: add KBUILD_OUTPUT to OE_TERMINAL_EXPORTS

Since linux-yocto based recipes have a split build and source directory,
we should export KBUILD=${B} to the devshell. This allows the kernel to
be incrementally build within the shell and not dirty the source
directory (which breaks subsequent full builds).

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 793921f..b336e43 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -344,5 +344,6 @@ do_kernel_link_vmlinux() {
 	ln -sf ../../../vmlinux
 }
 
-OE_TERMINAL_EXPORTS += "GUILT_BASE"
+OE_TERMINAL_EXPORTS += "GUILT_BASE KBUILD_OUTPUT"
 GUILT_BASE = "meta"
+KBUILD_OUTPUT = "${B}"
-- 
1.7.10.4


--------------060702000606040408060604--

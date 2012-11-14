Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85F1EE003D6
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 10:50:26 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Nov 2012 10:49:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,252,1352102400"; d="scan'208";a="242237835"
Received: from unknown (HELO envy.home) ([10.255.12.66])
	by orsmga002.jf.intel.com with ESMTP; 14 Nov 2012 10:50:25 -0800
Message-ID: <50A3E7F1.3090306@linux.intel.com>
Date: Wed, 14 Nov 2012 10:50:25 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121029 Thunderbird/16.0.2
MIME-Version: 1.0
To: Tim Bird <tim.bird@am.sony.com>
References: <50A2EFC0.3090908@am.sony.com> <50A3CB53.5040101@linux.intel.com>
	<50A3E650.5010900@am.sony.com>
In-Reply-To: <50A3E650.5010900@am.sony.com>
X-Enigmail-Version: 1.4.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem compiling diffutils on poky-tiny in danny
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
X-List-Received-Date: Wed, 14 Nov 2012 18:50:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/14/2012 10:43 AM, Tim Bird wrote:
> On 11/14/2012 08:48 AM, Darren Hart wrote:
>>
>>
>> On 11/13/2012 05:11 PM, Tim Bird wrote:
>>> Hi all,
>>>
>>> I'm using DISTRO=poky-tiny and trying to build:
>>>  $ bitbake core-image-minimal-initramfs
>>>
>>> I get the following error trying to compile diffutils:
>>>
>>> ...
>>> i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o wcwidth.o wcwidth.c
>>> In file included from wcwidth.c:23:0:
>>> ./wctype.h:448:1: error: static declaration of 'iswalnum' follows non-static declaration
>>> ./wctype.h:460:1: error: static declaration of 'iswalpha' follows non-static declaration
>>> ...
>>
>>
>> Is there an option to build diffutils without wide character support?
>> This is something tiny does away with and frequent point of failure
>> when trying to build additional packages with it.
> 
> I'll see if I can find something.
> 
>>
>>> See the attached compile log for details.
>>>
>>> Has anyone done this recently?  Is this one of the supported images for
>>> this distro (poky-tiny)?
>>
>>
>> I don't build that target as I use the cpio.gz from core-image-minimal
>> as an initial ramdisk. Is there a particular reason you want to build
>> "core-image-minimal-initramfs" specifically?
> 
> Building poky-tiny with core-image-minimal worked fine.  I didn't understand
> that this built multiple images (including a cpio.gz), and thought that
> the default method of building a cpio.gz was to build the <image-name>-initramfs
> image.  So, no, I don't have a particular reason to do this.
> 
> Also, I'm not sure I am doing the startup initialization with runqemu
> correctly.  I wouldn't have expected any rootfs to be used for this image,
> but the default invocation of runqemu uses one.  An example shows use of
> a 'ramfs' parameter.  I think I need to dig into runqemu and verify
> args are appropriate for an initramfs.
> 

runqemu doesn't quite know what to make of poky-tiny :-) Try the following:

$ qemu-system-i386 -kernel path/to/kernel -initrd path/to/image.cpio.gz
-nographic -append "console=ttyS0 root=/dev/ram0"

I really need to get the poky-tiny docs going... right after I finish
these kernel docs I guess... anyone want to volunteer?

>>
>>>
>>> Has anyone seen this type of error before, or can provide some
>>> hints of what to check or adjust to fix this?
>>
>> Yup, it's wide characters being required by diffutils and being excluded
>> by the poky-tiny DISTRO_FEATURES_LIBC assignment. If supported by
>> diffutils, we might be able to test ENABLE_WIDEC in diffutils and
>> configure accordingly (see the ncurses recipes for an example).
> 
> I'll poke around.  I'm curious why poky-tiny core-image-minimal built
> OK, but core-image-minimal-initramfs didn't.  I didn't expect
> any difference in target-side binaries between the two - only some
> changes in the image build steps.
> 
> Thanks for the tips.  I'll check it out.

Let me know what you find out. I thought the initramfs had the installer
in it, but maybe that's included by some other mechanism.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel


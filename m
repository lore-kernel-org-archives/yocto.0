Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 142114C800C0
	for <yocto@yoctoproject.org>; Fri,  4 Feb 2011 16:21:47 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Feb 2011 14:21:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,428,1291622400"; d="scan'208";a="884465994"
Received: from unknown (HELO [10.255.14.171]) ([10.255.14.171])
	by fmsmga001.fm.intel.com with ESMTP; 04 Feb 2011 14:21:46 -0800
Message-ID: <4D4C7BFC.60400@linux.intel.com>
Date: Fri, 04 Feb 2011 14:21:48 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D4B37F9.7080708@mlbassoc.com> <4D4BA607.3060006@linux.intel.com>
In-Reply-To: <4D4BA607.3060006@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-linaro woes continue
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
X-List-Received-Date: Fri, 04 Feb 2011 22:21:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/03/2011 11:08 PM, Darren Hart wrote:
> On 02/03/2011 03:19 PM, Gary Thomas wrote:
>> n.b. this is a continuation of "Kernel Panics on armv4t with gcc.4.5.1"
>> but the actual discussion has changed enough and there was too much
>> noise in the previous thread.
>
> Hi Gary,
>
> We're both pounding away on the meta-linaro layer at the same time
> unfortunately. I've reorganized things a bit and cleaned up how the
> layer is configured. I believe this layer ran into some trouble when gcc
> and binutils changed, but also suffered from a bad BBFILES variable as
> well (as you noted below). I'll push my changes to
> poky-contrib/dvhart/meta-linaro just as soon as they build.
>
> --
> Darren
>
>>
>> Trying to use the meta-linaro layer (to solve my problems
>> with GCC/4.5.1 on armv5te ), I was able to include and use
>> the layer with the attached changes. I added this layer
>> intact, moving meta-linaro into my poky tree at the same
>> level as meta, meta-extras, etc.
>>
>> I also had to copy meta/recipes-devtools/gcc/gcc-4.5.1 into
>> meta-linaro/recipes-devtools/gcc (I didn't know how to expand
>> the FILESPATH variable to suck from the main meta tree)
>>
>> The next problem is this:
>>
>> | configure: WARNING: unrecognized options: --enable-languages,
>> --enable-threads, --enable-target-optspace, --enable-lto,
>> --enable-libssp, --disable-bootstrap, --disable-libgomp,
>> --disable-libmudflap, --with-float, --with-local-prefix, --with-sysroot,
>> --with-build-sysroot, --disable-libunwind-exceptions,
>> --enable-__cxa_atexit
>> | Checking autotools environment for common misconfiguration
>> | NOTE: Checking autotools environment for common misconfiguration
>> | This autoconf log indicates errors, it looked at host includes.
>> | Rerun configure task after fixing this. The path was
>> '/home/local/efacec_omap_linaro/tmp/work/armv5te-poky-linux-gnueabi/gcc-runtime-4.5.1.linaro-r0/gcc-4.5.1.linaro/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libstdc++-v3'
>>
>>
>> | ERROR: This autoconf log indicates errors, it looked at host includes.
>> | Rerun configure task after fixing this. The path was
>> '/home/local/efacec_omap_linaro/tmp/work/armv5te-poky-linux-gnueabi/gcc-runtime-4.5.1.linaro-r0/gcc-4.5.1.linaro/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libstdc++-v3'
>>
>>
>> | Function 'do_qa_configure' failed
>> | ERROR: Function 'do_qa_configure' failed
>> NOTE: package gcc-runtime-4.5.1.linaro-r0: task do_qa_configure: Failed
>>
>> Ideas? I'm really anxious to see if this fixes my kernel problems.

I'm hitting something similar with libtool. I've pushed my dev branch 
out so you can see how things have changed. I've also asked Nitin to 
take a look at the libtool issues (and if they are related to the linaro 
gcc).

My branch is available here:

poky-extras/dvhart/meta-linaro-dev

I picked up your do_src_move change as it resolves the issue - but I 
can't say that I really understand the problem being solved - can you 
elaborate on why you took this approach? I'll credit you properly in the 
commit in the final set of branches.

Also note, this branch WILL be rebased and otherwise abused as I get it 
in shape for a pull request.

Thanks,

Darren

>>
>> Thanks
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


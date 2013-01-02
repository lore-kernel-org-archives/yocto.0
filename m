Return-Path: <bds@bsmucker.eu.org>
Received: from mxout-07.mxes.net (mxout-07.mxes.net [216.86.168.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D5CE01423
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 13:47:55 -0800 (PST)
Received: from [192.168.0.42] (unknown [50.37.140.69])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 3928B22E257;
	Wed,  2 Jan 2013 16:47:54 -0500 (EST)
Message-ID: <50E4AB07.9090208@bsmucker.eu.org>
Date: Wed, 02 Jan 2013 13:47:51 -0800
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <50E4A287.3050607@bsmucker.eu.org> <50E4A2D0.8020205@windriver.com>
In-Reply-To: <50E4A2D0.8020205@windriver.com>
Subject: Re: Magic kernel config option.
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
X-List-Received-Date: Wed, 02 Jan 2013 21:47:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 1/2/2013 1:12 PM, Bruce Ashfield wrote:
> On 13-01-02 04:11 PM, Brian Smucker wrote:
>> On 1/2/2013 10:06 AM, Bruce Ashfield wrote:
>>  > On 12-12-24 02:59 PM, Brian Smucker wrote:
>>  >> Hi,
>>  >>
>>  >
>>  > Catching up on email from the holidays. Did you ever get an answer
>>  > to this ?
>> Not yet,  resumed my quest today.
>>
>>  >> I'm a yocto mostly-newbie, trying to find my way.  I have a custom
>> layer
>>  >> that I am using to build a kernel. The layer right now consists of a
>> few
>>  >> kernel patches and a defconfig and is based on the standard kernel
>>  >> otherwise.
>>  >>
>>  >> When I do a diff on my defconfig and the bitbake generated .config,
>> they
>>  >> are quite similar, but the CONFIG_UNION_FS=y line magically shows 
>> up.
>>  >> I'm wondering where it comes from and how to disable it.
>>  >
>>  > CONFIG_UNION_FS is being enabled by the standard kernel (and all
>>  > kernels that inherit it). Since you are based on that kernel, you
>>  > get the option enabled.
>>  >
>>  >>
>>  >> I can do a bitbake -c menuconfig virtual/kernel and eliminate that
>>  >> option giving me the kernel I want, but those changes are gone 
>> after a
>>  >> bitbake -c cleansstate ...
>>  >
>>  > Have you tried putting
>>  >
>>  > # CONFIG_UNION_FS is not set
>>  >
>>  > in your defconfig ? That should disable it.
>>  >
>> I did try that, but that did not disable it.
>
> Hmmm. It worked here. I'll run another test shortly (I'm working on
> 3.8-rc1 at the moment).
>
>>
>> So after much pain and thrashing about to figure things out, now I see
>> that in the standard-nocfg.scc file, the unionfs feature is set. This
>> file is found in the following path: tmp/work/..
>> ../linux/meta/cfg/kernel-cache/ktypes/standard/ directory.
>>
>> My current burning question is:  Where is does this file come from? It
>> does not seem to be part of the kernel git repository.  I can changes
>> this file and affect the kernel build, but again, those changes are
>> transitory and do not persist after cleaning.
>
> It's from the meta branch of the kernel git repository. Those
> are all the fragments that are used to construct and configure
> the kernel. Part of the build process makes them available to the
> configuration phase.
>
> As something else to try, call your file <foo>.cfg and add it to the
> SRC_URI the same way you added the defconfig. defconfig's get special
> processing, calling it <foo>.cfg will simply get your changes added
> to the end of the build and they teka precedence. 

Tried your above suggestion, didn't seem to work.

So with a bit of further testing it looks like by the time the defconfig 
and the <foo>.cfg are copied into the linux directory, the commented out 
config option: # CONFIG_UNION_FS is not set
line is totally gone.


> That being said, if
> a feature with a Kconfig of the kernel has a "select UNIONFS" then you
> can't override it with a config/defconfig option, you need to patch
> the kernel.
Not sure what you are saying here.  If you mean that the unionfs kernel 
option is required by another selected kernel config option, I'm pretty 
sure that's not the case.  I can bitbake -c menuconfig virtual/kernel 
and merely deselect the unionfs option and the kernel is good.


Brian




> If you send me your defconfig, I can run some test builds here.
>
> Bruce
>
>
>
>
>>
>> Thanks,
>>
>> Brian
>>
>>
>



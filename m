Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18633E00C94; Mon, 17 Dec 2018 05:47:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE136E00C5F
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 05:47:40 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wBHDldmt007485
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 17 Dec 2018 05:47:39 -0800 (PST)
Received: from [128.224.56.49] (128.224.56.49) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Mon, 17 Dec 2018 05:47:38 -0800
To: Richard Weinberger <richard.weinberger@gmail.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
	<CAFLxGvwJg5nvc7cL12fN_R0CJcvLmy3eW5k29zERWCW4WqMi_Q@mail.gmail.com>
	<d17af21817915d847a9bb508f6380195cd76d8dc.camel@linuxfoundation.org>
	<CAFLxGvysO_g2z0f_50NO4iqcdFRN5YTzHpTbLHp4Va9jACai8w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <37849360-f7e6-55a1-3ffe-e67f98f69a09@windriver.com>
Date: Mon, 17 Dec 2018 08:47:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAFLxGvysO_g2z0f_50NO4iqcdFRN5YTzHpTbLHp4Va9jACai8w@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Mon, 17 Dec 2018 13:47:43 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/17/18 7:25 AM, Richard Weinberger wrote:
> [Resending with correct mail]
> 
> Richard,
> 
> On Mon, Dec 17, 2018 at 11:34 AM <richard.purdie@linuxfoundation.org> wrote:
>>
>> On Mon, 2018-12-17 at 11:26 +0100, Richard Weinberger wrote:
>>> On Wed, Nov 28, 2018 at 9:42 AM Richard Purdie
>>> <richard.purdie@linuxfoundation.org> wrote:
>>>> The system can definitely do it, its just not something we tend to
>>>> do
>>>> very often so its not entirely clear the best way to do it.
>>>>
>>>> What may work is selecting the i586 tune from an x64-64 target
>>>> machine?
>>>>
>>>> Copying qemux86-64.conf to qemux86-64-2.conf and changing it to
>>>> have
>>>> DEFAULTTUNE ?= "i586" did appear to start to build at least in a
>>>> quick
>>>> test here...
>>>
>>> I went this approach for now.
>>> That way I get i586 userland and an SDK with both 32bit and 64bit
>>> toolchains.
>>> The SDK offers me multiple environment files to include.
>>>
>>> What I don't understand right now is, how can i tell the kernel
>>> recipe
>>> that it has
>>> to use the 64bit toolchain to build the kernel?
>>>
>>> Any hints?
>>
>> I think (but am going from memory) that the x86 toolchains can generate
>> 64 and 32 bit code with the right compiler option. The kernel just
>> passes in the right options if configured to build as 64 bit even if it
>> has the 32 bit toolchain?
> 
> This was my hope, and this is also what I get when doing such builds manually.
> Having a x86_64 gcc and building userspace with "-m32" appended.
> 
> Yocto seems to try a different approach.
> When I use qemux86-64.conf with DEFAULTTUNE being "i586" it generates a 32bit
> toolchain by default.
> 
> Build Configuration:
> BB_VERSION           = "1.38.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "i686-poky-linux"
> MACHINE              = "myqemux86-64"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.5.1"
> TUNE_FEATURES        = "m32 i586"
> 
> What I need is a x86_64-poky-linux toolchain with -m32 set for everything except
> kernel (and modules).

For the most part the kernel builds do not take any flags from the
outside, i.e. they are all generated based on the kernel build
structure, not what is calling the build. (unless you bury flags
into the definition of $(CC), etc, but I wouldn't recommend that.

So if you have a 64 bit capable toolchain, have a 64 bit configured
kernel (i.e. CONFIG_64BIT=y), are passing -m32 to usespace .. the
kernel really should build 64bit.

Have you tried that and are seeing the kernel still be built with the
32bit toolchain ?

Bruce


> 



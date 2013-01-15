Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D869E011CC
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 10:06:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0FI6CW8014361
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 Jan 2013 10:06:12 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Tue, 15 Jan 2013 10:06:12 -0800
Message-ID: <50F59A91.5080806@windriver.com>
Date: Tue, 15 Jan 2013 13:06:09 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Patrick Turley <PatrickTurley@gamestop.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35D457@GV1HQPEX03.babgsetc.pvt>
	<1358271523.2479.14.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D76D@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C35D76D@GV1HQPEX03.babgsetc.pvt>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Brian Lloyd <blloyd@familyhonor.net>
Subject: Re: SDK environment LDFLAGS problem?
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
X-List-Received-Date: Tue, 15 Jan 2013 18:06:26 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-01-15 12:59 PM, Patrick Turley wrote:
>
> On Jan 15, 2013, at 11:38 AM, Brian Lloyd <blloyd@familyhonor.net
> <mailto:blloyd@familyhonor.net>>
>   wrote:
>
>> The kernel is a special case, where the SDK is really designed for
>> developing user applications (which the kernel is not).
>
> Yes, it's clear to me that, in this one respect, the SDK is unsuitable
> for building kernels or kernel modules.
>
> My point is that this is a problem, and it might be reasonable to fix it.

You probably want Jessica or Richard to comment on the architecture /
design of the SDK with respect to kernel elements. The only packaging
for out of tree / non build system builds that I know I've ever looked
into are on target, or staging directory builds of modules.

>
>> I found it pretty easy to create a kernel-module-MYMODULE.bbclass file
>> and build the kernel and module in the OE/Poky build system directly,
>> and then have it included in the image made for the device.
>>
>> See
>> http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules
>> for details.
>
> Thanks for pointing me at that.  As it happens, I can't use that method
> because I'm not going to create a recipe.

Everyone/Everything has their reasons for the different workflow(s).
(I maintain the ability to build all the boards covered in linux-yocto
without the need for any build system at all, as an example). And all
workflows are definitely valid, but it is expected that the primary
workflow for anything oe/bitbake based would be centered around recipes.

Cheers,

Bruce

>
>> Brian
>>
>> On Tue, 2013-01-15 at 16:52 +0000, Patrick Turley wrote:
>>> I used the meta-toolchain-sdk recipe to produce an SDK, and I installed it. Here's an interesting line from the environment setup script:
>>>
>>>    export LDFLAGS="-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed"
>>>
>>> All these linker options are preceded by "-Wl", which indicates the SDK is *expecting* them to be given to gcc and then passed on to ld.
>>>
>>> If you look at the help for the ld command line, all these options are available, but with the "-Wl," omitted. In fact, if you use these options exactly as shown here, ld will complain that they aren't recognized and fail.
>>>
>>> So, the SDK is giving me a value of LDFLAGS that *cannot* be used with ld. Of course, the C compiler driver can link and produce executables, and that muddies the issue somewhat.
>>>
>>> Here's an example where this is causing me real problems…
>>>
>>> I'm building an external module against the kernel produced by Yocto. Here's an extract from my output:
>>>
>>>
>>> make -C /home/pturley/yocto-mpu-build/tmp/work/dm8148_mpu-poky-linux-gnueabi/linux-ti81xx-psp-2.6.37-r0+spawnlabs+r0/git M=`pwd` ARCH=arm CROSS_COMPILE=/opt/poky/1.3/sysroots/x86_64-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi- \
>>>                  EXTRA_CFLAGS="-DUSE_UDEV=1 -DMAX_POOLS=128" modules
>>> .
>>> .
>>> .
>>>    LD [M]  /home/pturley/z3-work/z3-centaurus-dm814x_RPS-20120626/ezsdk/component-sources/linuxutils_3_22_00_02/packages/ti/sdo/linuxutils/cmem/src/module/cmemk.ko
>>> /opt/poky/1.3/sysroots/x86_64-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld: unrecognized option '-Wl,-O1'
>>>
>>>
>>> As you can see here, the kernel Make files are interpreting LDFLAGS as something that *can* be given directly to ld, so they fail.
>>>
>>>
>>> My questions are:
>>>
>>> 1) Has anyone else run into this before?
>>>
>>> 2) If so, how did you resolve it?
>>>
>>> 3) Since the Yocto kernel build is *not* failing, I infer that it is *not* using the ld options the SDK gives me. So, the Yocto kernel build has its own pathway through which it computes its value for LDFLAGS. Why would Yocto use its own SDK in a way that no user is expected to?
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org  <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


